# Definir la ruta al archivo CSV
file_path <- "data/ESS9e03_2-ESS10-subset (1).csv"

# Cargar las librerías necesarias
library(readr)
library(dplyr)

# Importar el archivo CSV
data <- read_csv(file_path)

# Confirmar o convertir variables a numéricas y cambiar nombres
data <- data %>%
  mutate(
    Edad = as.numeric(agea),  # Convertir agea a numérica y renombrar a Edad
    `Tiempo de uso de Internet` = as.numeric(netustm),  # Convertir netustm a numérica y renombrar
    `Años de educación a tiempo completo` = as.numeric(eduyrs)  # Convertir eduyrs a numérica y renombrar
  ) %>%
  select(-agea, -netustm, -eduyrs)  # Eliminar las columnas originales

# Convertir variables a categóricas y cambiar nombres
data <- data %>%
  mutate(
    `Satisfacción con la economía` = as.factor(stfeco),  # Convertir stfeco a factor y renombrar
    `Satisfacción con la educación` = as.factor(stfedu),  # Convertir stfedu a factor y renombrar
    `Satisfacción con el gobierno` = as.factor(stfgov),  # Convertir stfgov a factor y renombrar
    `Satisfacción con la vida` = as.factor(stflife),  # Convertir stflife a factor y renombrar
    `Nivel de felicidad` = as.factor(happy),  # Convertir happy a factor y renombrar
    `Salud subjetiva` = as.factor(health),  # Convertir health a factor y renombrar
    `Frecuencia de uso de Internet` = as.factor(netusoft),  # Convertir netusoft a factor y renombrar
    `País del encuestado` = as.factor(cntry),  # Convertir cntry a factor y renombrar
    Género = as.factor(gndr),  # Convertir gndr a factor y renombrar
    `Nivel más alto de educación` = as.factor(edulvlb),  # Convertir edulvlb a factor y renombrar
    `Relación laboral` = as.factor(emplrel),  # Convertir emplrel a factor y renombrar
    `Estado civil` = as.factor(maritalb)  # Convertir maritalb a factor y renombrar
  ) %>%
  select(-stfeco, -stfedu, -stfgov, -stflife, -happy, -health, -netusoft, -cntry, -gndr, -edulvlb, -emplrel, -maritalb)  # Eliminar las columnas originales

# Crear la variable 'Tiempo de uso de Internet (Categorized)'
data <- data %>%
  mutate(`Tiempo de uso de Internet (Categorized)` = case_when(
    `Tiempo de uso de Internet` >= 0 & `Tiempo de uso de Internet` <= 30 ~ '0-30 minutes',
    `Tiempo de uso de Internet` > 30 & `Tiempo de uso de Internet` <= 60 ~ '30-60 minutes',
    `Tiempo de uso de Internet` > 60 & `Tiempo de uso de Internet` <= 120 ~ '1-2 hours',
    `Tiempo de uso de Internet` > 120 & `Tiempo de uso de Internet` <= 180 ~ '2-3 hours',
    `Tiempo de uso de Internet` > 180 & `Tiempo de uso de Internet` <= 240 ~ '3-4 hours',
    `Tiempo de uso de Internet` > 240 ~ 'More than 4 hours',
    TRUE ~ 'Unknown'
  ))

# Crear la variable 'Frecuencia de uso de Internet (Categorized)'
data <- data %>%
  mutate(`Frecuencia de uso de Internet (Categorized)` = case_when(
    `Frecuencia de uso de Internet` == '1' ~ 'Never',
    `Frecuencia de uso de Internet` == '2' ~ 'Only occasionally',
    `Frecuencia de uso de Internet` == '3' ~ 'A few times a week',
    `Frecuencia de uso de Internet` == '4' ~ 'Most days',
    `Frecuencia de uso de Internet` == '5' ~ 'Every day',
    TRUE ~ 'Unknown'
  ))

# Crear la variable 'Relación laboral (Texto)'
data <- data %>%
  mutate(`Relación laboral (Texto)` = case_when(
    `Relación laboral` == 1 ~ "Employee",
    `Relación laboral` == 2 ~ "Self-employed",
    `Relación laboral` == 3 ~ "Working for own family business",
    `Relación laboral` == 6 ~ "Not applicable",
    `Relación laboral` == 7 ~ "Refusal",
    `Relación laboral` == 8 ~ "Don't know",
    `Relación laboral` == 9 ~ "No answer",
    TRUE ~ "Unknown"
  ))

# Crear la variable 'Estado civil (Texto)'
data <- data %>%
  mutate(`Estado civil (Texto)` = case_when(
    `Estado civil` == 1 ~ 'Single',
    `Estado civil` == 2 ~ 'Married',
    `Estado civil` == 3 ~ 'Divorced',
    `Estado civil` == 4 ~ 'Separated',
    `Estado civil` == 5 ~ 'Widowed',
    `Estado civil` == 6 ~ 'Cohabiting',
    TRUE ~ 'Unknown'
  ))

# Guardar la base de datos depurada en un archivo CSV
output_file_path <- "data/ESS9e03_2-ESS10-subset_depurada.csv"
write_csv(data, output_file_path)

# Mensaje de confirmación
cat("La base de datos depurada ha sido guardada en:", output_file_path)

# Mostrar las primeras filas del dataframe depurado
head(data)

# Verificar los nombres de las columnas
colnames(data)