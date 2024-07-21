# Definir la ruta al archivo CSV
file_path <- "data/ESS9e03_2-ESS10-subset (1).csv"

# Cargar la librería necesaria
library(readr)

# Importar el archivo CSV
data <- read_csv(file_path)

# Mostrar las primeras filas del dataframe
head(data)