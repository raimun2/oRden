Datos oRdenados
================

## El tidyverse en español

Aprender a programar no es fácil, menos aún si no se conoce bien el
idioma inglés. El objetivo de este paquete es facilitar la curva de
aprendizaje de programar en R para hispanohablantes.

Este paquete traduce los principales verbos utilizados por el Tidyverse,
un conjunto de herramientas ampliamente utilizadas en el mundo de la
ciencia de datos, con una comunidad muy activa y colaborativa.

El Tidyverse tiene la virtud de haber desarrollado una sintaxis propia
que permite leer el código de manera más fluida. Hoy es considerado
prácticamente un dialecto diferente al de R base, pero es perfecto para
aprender a programar en R.

Se han hecho otros esfuerzos interesantes en traducir al español
recursos de R como fuentes de datos en la librería datos
`library(datos)`, el [libro de Hadley Wickham para ciencia de
datos](https://es.r4ds.hadley.nz/), y algunas [planillas de
atajos](https://www.rstudio.com/resources/cheatsheets/) (cheatsheets en
inglés) para los distintos paquetes de este universo.

Esta herramienta esta en vías de desarrollo, y por el momento solo se
puede instalar desde GitHub

``` r
# install.packages("remotes")
remotes::install_github("raimun2/oRden")
```

## Ejemplo de uso

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

## Importar datos

En el módulo de importar datos se tradujeron los principales verbos de
la librería readr

``` r
source("R/importaR.R", echo = TRUE, local = knitr::knit_global())
```

    ## 
    ## > leer_csv <- function(...) {
    ## +     readr::read_csv(...)
    ## + }
    ## 
    ## > leer_csv2 <- function(...) {
    ## +     readr::read_csv2(...)
    ## + }
    ## 
    ## > leer_delimitados <- function(...) {
    ## +     readr::read_delim(...)
    ## + }
    ## 
    ## > guardar_delimitado <- function(...) {
    ## +     readr::write_delim(...)
    ## + }
    ## 
    ## > guardar_csv <- function(...) {
    ## +     readr::write_csv(...)
    ## + }
    ## 
    ## > guardar_csv2 <- function(...) {
    ## +     readr::write_csv2(...)
    ## + }
    ## 
    ## > leer_rds <- function(...) {
    ## +     readr::read_rds(...)
    ## + }
    ## 
    ## > guardar_rds <- function(...) {
    ## +     readr::write_rds(...)
    ## + }

## Transformar datos

En el módulo de transformación de datos se tradujeron los principales
verbos de la librería dplyr

``` r
source("R/transformaR.R", echo = TRUE, local = knitr::knit_global())
```

    ## 
    ## > resumir <- function(...) {
    ## +     dplyr::summarise(...)
    ## + }
    ## 
    ## > contar <- function(...) {
    ## +     dplyr::count(...)
    ## + }
    ## 
    ## > agrupar_por <- function(...) {
    ## +     dplyr::group_by(...)
    ## + }
    ## 
    ## > desagrupar <- function(...) {
    ## +     dplyr::ungroup(...)
    ## + }
    ## 
    ## > filtrar <- function(...) {
    ## +     dplyr::filter(...)
    ## + }
    ## 
    ## > distintos <- function(...) {
    ## +     dplyr::distinct(...)
    ## + }
    ## 
    ## > rebanar <- function(...) {
    ## +     dplyr::slice(...)
    ## + }
    ## 
    ## > rebanar_muestra <- function(...) {
    ## +     dplyr::slice_sample(...)
    ## + }
    ## 
    ## > rebanar_min <- function(...) {
    ## +     dplyr::slice_min(...)
    ## + }
    ## 
    ## > rebanar_max <- function(...) {
    ## +     dplyr::slice_max(...)
    ## + }
    ## 
    ## > rebanar_encabezado <- function(...) {
    ## +     dplyr::slice_head(...)
    ## + }
    ## 
    ## > ordenar <- function(...) {
    ## +     dplyr::arrange(...)
    ## + }
    ## 
    ## > agrega_fila <- function(...) {
    ## +     dplyr::add_row(...)
    ## + }
    ## 
    ## > extraer <- function(...) {
    ## +     dplyr::pull(...)
    ## + }
    ## 
    ## > seleccionar <- function(...) {
    ## +     dplyr::select(...)
    ## + }
    ## 
    ## > reubicar <- function(...) {
    ## +     dplyr::relocate(...)
    ## + }
    ## 
    ## > todo <- function(...) {
    ## +     dplyr::everything(...)
    ## + }
    ## 
    ## > mutar <- function(...) {
    ## +     dplyr::mutate(...)
    ## + }
    ## 
    ## > transmutar <- function(...) {
    ## +     dplyr::transmute(...)
    ## + }
    ## 
    ## > renombrar <- function(...) {
    ## +     dplyr::rename(...)
    ## + }
    ## 
    ## > agregar_conteo <- function(...) {
    ## +     dplyr::add_count(...)
    ## + }
    ## 
    ## > agregar_conteo_grupal <- function(...) {
    ## +     dplyr::add_tally(...)
    ## + }
    ## 
    ## > pegar_columnas <- function(...) {
    ## +     dplyr::bind_cols(...)
    ## + }
    ## 
    ## > pegar_filas <- function(...) {
    ## +     dplyr::bind_rows(...)
    ## + }
    ## 
    ## > enlace_izq <- function(...) {
    ## +     dplyr::left_join(...)
    ## + }
    ## 
    ## > enlace_der <- function(...) {
    ## +     dplyr::right_join(...)
    ## + }
    ## 
    ## > enlace_interior <- function(...) {
    ## +     dplyr::inner_join(...)
    ## + }
    ## 
    ## > enlace_completo <- function(...) {
    ## +     dplyr::full_join(...)
    ## + }
    ## 
    ## > semi_enlace <- function(...) {
    ## +     dplyr::semi_join(...)
    ## + }
    ## 
    ## > anti_enlace <- function(...) {
    ## +     dplyr::anti_join(...)
    ## + }
    ## 
    ## > intersectar <- function(...) {
    ## +     dplyr::intersect(...)
    ## + }
    ## 
    ## > diferenciar <- function(...) {
    ## +     dplyr::setdiff(...)
    ## + }
    ## 
    ## > unir <- function(...) {
    ## +     dplyr::union(...)
    ## + }
    ## 
    ## > igualar <- function(...) {
    ## +     dplyr::setequal(...)
    ## + }
    ## 
    ## > rezago <- function(...) {
    ## +     dplyr::lag(...)
    ## + }
    ## 
    ## > avanzada <- function(...) {
    ## +     dplyr::lead(...)
    ## + }
    ## 
    ## > entre <- function(...) {
    ## +     dplyr::between(...)
    ## + }
    ## 
    ## > cerca <- function(...) {
    ## +     dplyr::near(...)
    ## + }
    ## 
    ## > caso_cuando <- function(...) {
    ## +     dplyr::case_when(...)
    ## + }
    ## 
    ## > si_entonces <- function(...) {
    ## +     dplyr::if_else(...)
    ## + }
    ## 
    ## > n_diferentes <- function(...) {
    ## +     dplyr::n_distinct(...)
    ## + }
    ## 
    ## > primer <- function(...) {
    ## +     dplyr::first(...)
    ## + }
    ## 
    ## > ultimo <- function(...) {
    ## +     dplyr::last(...)
    ## + }
    ## 
    ## > nesimo <- function(...) {
    ## +     dplyr::nth(...)
    ## + }

## Ordenar datos

En el módulo de ordenar datos se tradujeron los principales verbos de la
librería tidyr

``` r
source("R/ordenaR.R", echo = TRUE, local = knitr::knit_global())
```

    ## 
    ## > agregar_columna <- function(...) {
    ## +     tibble::add_column(...)
    ## + }
    ## 
    ## > pivotea_largo <- function(...) {
    ## +     tidyr::pivot_longer(...)
    ## + }
    ## 
    ## > pivotea_ancho <- function(...) {
    ## +     tidyr::pivot_wider(...)
    ## + }
    ## 
    ## > unir <- function(...) {
    ## +     tidyr::unite(...)
    ## + }
    ## 
    ## > separar <- function(...) {
    ## +     tidyr::separate(...)
    ## + }
    ## 
    ## > separar_filas <- function(...) {
    ## +     tidyr::separate_rows(...)
    ## + }
    ## 
    ## > expandir <- function(...) {
    ## +     tidyr::expand(...)
    ## + }
    ## 
    ## > completar <- function(...) {
    ## +     tidyr::complete(...)
    ## + }
    ## 
    ## > soltar_na <- function(...) {
    ## +     tidyr::drop_na(...)
    ## + }
    ## 
    ## > llenar <- function(...) {
    ## +     tidyr::fill(...)
    ## + }
    ## 
    ## > reemplazar_na <- function(...) {
    ## +     tidyr::replace_na(...)
    ## + }

## Datos del tipo caracter

En el módulo de trabajar con datos de tipo texto / caracter se
tradujeron los principales verbos de la librería stringr

``` r
source("R/caracteR.R", echo = TRUE, local = knitr::knit_global())
```

    ## 
    ## > txt_detecta_patron <- function(...) {
    ## +     stringr::str_detect(...)
    ## + }
    ## 
    ## > txt_identifica_patron <- function(...) {
    ## +     stringr::str_which(...)
    ## + }
    ## 
    ## > txt_ubica_patron <- function(...) {
    ## +     stringr::str_locate(...)
    ## + }
    ## 
    ## > txt_cuenta_patron <- function(...) {
    ## +     stringr::str_count(...)
    ## + }
    ## 
    ## > txt_extrae_caracteres <- function(...) {
    ## +     stringr::str_sub(...)
    ## + }
    ## 
    ## > txt_subconjunto_patron <- function(...) {
    ## +     stringr::str_subset(...)
    ## + }
    ## 
    ## > txt_extrae_patron <- function(...) {
    ## +     stringr::str_extract(...)
    ## + }
    ## 
    ## > txt_largo <- function(...) {
    ## +     stringr::str_length(...)
    ## + }
    ## 
    ## > txt_alinear <- function(...) {
    ## +     stringr::str_pad(...)
    ## + }
    ## 
    ## > txt_truncar <- function(...) {
    ## +     stringr::str_trunc(...)
    ## + }
    ## 
    ## > txt_limpia_espacios <- function(...) {
    ## +     stringr::str_trim(...)
    ## + }
    ## 
    ## > txt_reemplazar <- function(...) {
    ## +     stringr::str_replace(...)
    ## + }
    ## 
    ## > txt_reemplazar_todo <- function(...) {
    ## +     stringr::str_replace_all(...)
    ## + }
    ## 
    ## > txt_minusculas <- function(...) {
    ## +     stringr::str_to_lower(...)
    ## + }
    ## 
    ## > txt_mayusculas <- function(...) {
    ## +     stringr::str_to_upper(...)
    ## + }
    ## 
    ## > txt_titulos <- function(...) {
    ## +     stringr::str_to_title(...)
    ## + }
    ## 
    ## > txt_concatenar <- function(...) {
    ## +     stringr::str_c(...)
    ## + }
    ## 
    ## > txt_orden <- function(...) {
    ## +     stringr::str_order(...)
    ## + }
    ## 
    ## > txt_ordenar <- function(...) {
    ## +     stringr::str_sort(...)
    ## + }
