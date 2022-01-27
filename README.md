oRden
================

## El tidyverse en español

Aprender a programar no es fácil, menos aun si no se conoce bien el
idioma ingles. El objetivo de este paquete es facilitar la curva de
aprendizaje de programar en R para hispanohablantes.

Este paquete traduce los principales verbos utilizados por el Tidyverse,
un conjunto de herramientas ampliamente utilizadas en el mundo de la
ciencia de datos, con una comunidad muy activa y colaborativa.

El Tidyverse tiene la virtud de haber desarrollado una sintaxis propia
que permite leer el codigo de manera mas fluida. Hoy es considerado
practicamente un dialecto diferente al de R base, pero es perfecto para
aprender a programar en R.

Se han hecho otros esfuerzos interesantes en traducir al español
recursos de R como fuentes de datos en la libreria datos
`library(datos)`, el [libro de Hadley Wickam para ciencia de
datos](https://es.r4ds.hadley.nz/), y algunas [planillas de
atajos](https://www.rstudio.com/resources/cheatsheets/) (cheatsheets en
ingles) para los distintos paquetes de este universo .

``` r
# install.packages("remotes")
remotes::install_github("raimun2/oRden")
```

``` r
library(oRden)

autos <- datos::mtautos

autos %>% 
  mutar(kilometros = millas / 1.6) %>% 
  seleccionar(kilometros, cambios, forma) %>% 
  agrupar_por(cambios, forma) %>% 
  resumir(minimo = min(kilometros))
```

    ## # A tibble: 6 x 3
    ## # Groups:   cambios [3]
    ##   cambios forma minimo
    ##     <dbl> <dbl>  <dbl>
    ## 1       3     0   6.5 
    ## 2       3     1  11.3 
    ## 3       4     0  13.1 
    ## 4       4     1  11.1 
    ## 5       5     0   9.38
    ## 6       5     1  19

## Transformar datos

En el modulo de transformacion de datos se tradujeron los principales
verbos de la libreria dplyr

``` r
lsf.str("package:oRden")
```

    ## %>% : function (lhs, rhs)  
    ## agrega_fila : function (...)  
    ## agregar_columna : function (...)  
    ## agregar_conteo : function (...)  
    ## agregar_conteo_grupal : function (...)  
    ## agrupar_por : function (...)  
    ## anti_enlace : function (...)  
    ## avanzada : function (...)  
    ## caso_cuando : function (...)  
    ## cerca : function (...)  
    ## contar : function (...)  
    ## desagrupar : function (...)  
    ## diferenciar : function (...)  
    ## distintos : function (...)  
    ## enlace_completo : function (...)  
    ## enlace_der : function (...)  
    ## enlace_interior : function (...)  
    ## enlace_izq : function (...)  
    ## entre : function (...)  
    ## extraer : function (...)  
    ## filtrar : function (...)  
    ## igualar : function (...)  
    ## intersectar : function (...)  
    ## mutar : function (...)  
    ## n_diferentes : function (...)  
    ## nesimo : function (...)  
    ## ordenar : function (...)  
    ## pegar_columnas : function (...)  
    ## pegar_filas : function (...)  
    ## primer : function (...)  
    ## rebanar : function (...)  
    ## rebanar_encabezado : function (...)  
    ## rebanar_max : function (...)  
    ## rebanar_min : function (...)  
    ## rebanar_muestra : function (...)  
    ## renombrar : function (...)  
    ## resumir : function (...)  
    ## reubicar : function (...)  
    ## rezago : function (...)  
    ## seleccionar : function (...)  
    ## semi_enlace : function (...)  
    ## si_entonces : function (...)  
    ## todo : function (...)  
    ## transmutar : function (...)  
    ## ultimo : function (...)  
    ## unir : function (...)

## Importar datos

PENDIENTE (readr)

## Ordenar datos

PENDIENTE (tidyr)

## Datos del tipo caracter

PENDIENTE (stringr)

## Datos del tipo factor

PENDIENTE (forcats)

## Iteraciones sobre tablas de datos

PENDIENTE (purrr)

## Visualizacion

PENDIENTE (ggplot2)
