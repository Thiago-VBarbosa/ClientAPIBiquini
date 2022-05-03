#' get_info_albuns
#'
#' Obtêm informações dos albuns do Biquini Cavadão
#'
#' @param album Nome do album. Caso não seja fornecido o nome do album, serão retornadas informações
#' de todos os albuns da banda.
#'
#' @return Retorna um data.frame, especificamente um tibble, com as informações do específico ou dos albuns.
#'
#' @examples
#' #retorna as informações do album "Roda Gigante"
#' get_info_albuns(album = "Roda Gigante")
#'
#' #retorna as informações de todos os albuns
#' get_info_albuns()
#'
#' @export


get_info_albuns <- function(album = ""){
  `%>%` <- magrittr::`%>%`
  page <- httr::GET("https://api-biquini.herokuapp.com/albuns",
                    query = list(album = album))
  httr::content(page, as = "text") %>%
    jsonlite::fromJSON() %>%
    tibble::tibble()
}
