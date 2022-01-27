agregar_columna <- function(...) {tibble::add_column(...)}

pivotea_largo <- function(...) {tidyr::pivot_longer(...)}

pivotea_ancho <- function(...) {tidyr::pivot_wider(...)}

unir <- function(...) {tidyr::unite(...)}

separar <- function(...) {tidyr::separate(...)}

separar_filas <- function(...) {tidyr::separate_rows(...)}

expandir <- function(...) {tidyr::expand(...)}

completar <- function(...) {tidyr::complete(...)}

soltar_na <- function(...) {tidyr::drop_na(...)}

llenar <- function(...) {tidyr::fill(...)}

reemplazar_na <- function(...) {tidyr::replace_na(...)}
