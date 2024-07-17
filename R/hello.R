# HISTOGRAMA

# Cargar las librerías necesarias
library(readxl)
library(ggplot2)

visualizar_histograma <- function(archivo_excel, columna) {
  datos <- read_excel(archivo_excel)
  if (!(columna %in% colnames(datos))) {
    cat(sprintf("La columna '%s' no existe en el archivo '%s'.\n", columna, archivo_excel))
    return(NULL)
  }
  ggplot(datos, aes(x = .data[[columna]])) +
    geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
    labs(x = columna, y = "Frecuencia", title = paste("Histograma de", columna)) +
    theme_minimal()
}


