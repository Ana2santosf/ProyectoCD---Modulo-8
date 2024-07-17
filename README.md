# ProyectoCD---Modulo-8
Este es un proyecto de ciencia de datos del Master en Behavioral Data Science de la Universidad de Barcelona

## Descripción del Proyecto

El objetivo de este proyecto es realizar un análisis detallado de la base de datos ESS, implementar visualizaciones dinámicas y generar informes técnicos utilizando herramientas de Ciencia Reproducible.

## Objetivo Principal

- Analizar y visualizar la satisfacción con la vida y otros indicadores sociodemográficos en diferentes países europeos utilizando datos de la Encuesta Social Europea (ESS).

## Objetivos Específicos

1. Depurar y preparar la base de datos de la ESS para análisis posteriores.
2. Explorar y analizar la relación entre la satisfacción con la vida y variables sociodemográficas como edad, género, nivel educativo y estado civil.
3. Implementar visualizaciones interactivas mediante dashboards para facilitar la interpretación de los datos.
4. Generar informes técnicos detallados que resuman los principales hallazgos utilizando RMarkdown.
5. Crear presentaciones efectivas que comuniquen los resultados del análisis utilizando RMarkdown y Shiny.


## Estructura del Repositorio

La estructura del repositorio es la siguiente:

- `README.md`: Este archivo.
- `Datos/`
  - `Base de datos original/`: Contiene la base de datos original en formato CSV.
  - `Código Depuración/`: Scripts utilizados para la depuración de la base de datos.
  - `Base de datos depurada/`: Contiene la base de datos depurada en formato CSV.
- `Dashboard/`
  - `Código/`: Scripts R para generar dashboards.
  - `HTML/`: Dashboards exportados en formato HTML.
- `Informe/`
  - `Código/`: Scripts RMarkdown (.Rmd) para generar el informe técnico.
  - `PDF/`: Informe técnico generado en formato PDF.
- `Presentación/`
  - `Código/`: Scripts RMarkdown (.Rmd) para generar la presentación.
  - `PDF, HTML o similar/`: Presentación exportada en formato PDF, HTML u otro formato adecuado.

## Instrucciones de Instalación

1. Clona el repositorio:
   ```sh
   git clone https://github.com/Ana2santosf/ProyectoCD---Modulo-8.git
   
## Instala los paquetes necesarios en R Studio
install.packages(c("readr", "dplyr", "ggplot2", "knitr", "rmarkdown", "shiny"))

## ¿Cómo usar el Proyecto?

1. Navega a la carpeta Datos/ y ejecuta los scripts de depuración para preparar la base de datos.
2. Usa los scripts en Dashboard/Código/ para generar dashboards interactivos.
3. Consulta el informe técnico en Informe/PDF/ para revisar los principales hallazgos.
4. Consulta la presentación en Presentación/ para obtener un resumen visual del proyecto.


## Análisis Exploratorio de Datos 

## **Variables Numéricas**

Edad (agea)
Tipo: Numérica continua de razón
Unidad: Años
Rango: 15 - 90 años, 999 (no disponible)


Tiempo de uso de Internet (netustm)
Tipo: Numérica continua de razón
Unidad: Minutos
Rango: 0 - más de 1440 minutos diarios; 6666, 7777, 8888, 9999 (valores especiales)


Años de educación a tiempo completo (eduyrs)
Tipo: Numérica continua
Unidad: Años
Rango: 0 - más de 65 años; 77, 88, 99 (valores especiales)

## **Variables Categóricas**

Satisfacción con la economía (stfeco)
Tipo: Escala Likert (ordinal)
Unidad: 0-10
Rango: 0 (muy insatisfecho) a 10 (muy satisfecho); 77, 88, 99 (valores especiales)


Satisfacción con la educación (stfedu)
Tipo: Escala Likert (ordinal)
Unidad: 0-10
Rango: 0 (muy insatisfecho) a 10 (muy satisfecho); 77, 88, 99 (valores especiales)


Satisfacción con el gobierno (stfgov)
Tipo: Escala Likert (ordinal)
Unidad: 0-10
Rango: 0 (muy insatisfecho) a 10 (muy satisfecho); 77, 88, 99 (valores especiales)


Satisfacción con la vida (stflife)
Tipo: Escala Likert (ordinal)
Unidad: 0-10
Rango: 0 (muy insatisfecho) a 10 (muy satisfecho); 77, 88, 99 (valores especiales)


Nivel de felicidad (happy)
Tipo: Escala Likert (ordinal)
Unidad: 0-10
Rango: 0 (muy infeliz) a 10 (muy feliz); 77, 88, 99 (valores especiales)


Salud subjetiva (health)
Tipo: Escala Likert (ordinal)
Unidad: 1-5
Rango: 1 (muy buena) a 5 (muy mala); 7, 8, 9 (valores especiales)


Frecuencia de uso de Internet (netusoft)
Tipo: Ordinal
Unidad: Escala de categorías
Rango: 1 (Nunca) a 5 (Todos los días); 7, 8, 9 (valores especiales)


País del encuestado (cntry)
Tipo: Categórica nominal
Unidad: Códigos de país
Género (gndr)

Tipo: Categórica nominal
Unidad: Códigos de género
Rango: 1 (Masculino), 2 (Femenino), 9 (No responde)


Nivel más alto de educación (edulvlb)
Tipo: Categórica ordinal
Unidad: ISCED


Relación laboral (emplrel)
Tipo: Categórica nominal
Unidad: Categorías de relación laboral
Rango: 1 (Empleado) a 9 (No responde)


Estado civil (maritalb)
Tipo: Categórica nominal
Unidad: Categorías de estado civil
Rango: 1 (Casado legalmente) a 6 (Nunca casado); 77, 88, 99 (valores especiales)
   