resumir <- function(...) {dplyr::summarise(...)}

contar <- function(...) {dplyr::count(...)}

agrupar_por <- function(...) {dplyr::group_by(...)}

desagrupar <- function(...) {dplyr::ungroup(...)}

filtrar <- function(...) {dplyr::filter(...)}

distintos <- function(...) {dplyr::distinct(...)}

rebanar <- function(...) {dplyr::slice(...)}

rebanar_muestra <- function(...) {dplyr::slice_sample(...)}

rebanar_min <- function(...) {dplyr::slice_min(...)}

rebanar_max <- function(...) {dplyr::slice_max(...)}

rebanar_encabezado <- function(...) {dplyr::slice_head(...)}

ordenar <- function(...) {dplyr::arrange(...)}

agrega_fila <- function(...) {dplyr::add_row(...)}

extraer <- function(...) {dplyr::pull(...)}

seleccionar <- function(...) {dplyr::select(...)}

reubicar <- function(...) {dplyr::relocate(...)}

todo <- function(...) {dplyr::everything(...)}

mutar <- function(...) {dplyr::mutate(...)}

transmutar <- function(...) {dplyr::transmute(...)}

renombrar <- function(...) {dplyr::rename(...)}

agregar_columna <- function(...) {tibble::add_column(...)}

agregar_conteo <- function(...) {dplyr::add_count(...)}

agregar_conteo_grupal <- function(...) {dplyr::add_tally(...)}

pegar_columnas <- function(...) {dplyr::bind_cols(...)}

pegar_filas <- function(...) {dplyr::bind_rows(...)}

enlace_izq <- function(...) {dplyr::left_join(...)}

enlace_der <- function(...) {dplyr::right_join(...)}

enlace_interior <- function(...) {dplyr::inner_join(...)}

enlace_completo <- function(...) {dplyr::full_join(...)}

semi_enlace <- function(...) {dplyr::semi_join(...)}

anti_enlace <- function(...) {dplyr::anti_join(...)}

intersectar <- function(...) {dplyr::intersect(...)}

diferenciar <- function(...) {dplyr::setdiff(...)}

unir <- function(...) {dplyr::union(...)}

igualar <- function(...) {dplyr::setequal(...)}

rezago <- function(...) {dplyr::lag(...)}

avanzada <- function(...) {dplyr::lead(...)}

entre <- function(...) {dplyr::between(...)}

cerca <- function(...) {dplyr::near(...)}

caso_cuando <- function(...) {dplyr::case_when(...)}

si_entonces <- function(...) {dplyr::if_else(...)}

n_diferentes <- function(...) {dplyr::n_distinct(...)}

primer <- function(...) {dplyr::first(...)}

ultimo <- function(...) {dplyr::last(...)}

nesimo <- function(...) {dplyr::nth(...)}
