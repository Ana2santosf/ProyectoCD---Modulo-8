# Definir la ruta al archivo CSV depurado
output_file_path <- "data/ESS9e03_2-ESS10-subset_depurada.csv"

# Guardar la base de datos depurada en un archivo CSV
write_csv(data, output_file_path)

# Mensaje de confirmación
cat("La base de datos depurada ha sido guardada en:", output_file_path)