#' get_lyrics
#'
#' Obtêm a letra da música e do album especificado
#'
#' @param album Nome do album que contém a música desejada
#' @param musica Nome da música desejada
#'
#' @return Retorna a letra da música em formato HTML
#'
#' @examples get_lyrics(album = "Roda Gigante", musica = "Roda-Gigante")
#'
#' @export

get_lyrics <- function(album, musica) {
  `%>%` <- magrittr::`%>%`
  page <- httr::GET("https://api-biquini.herokuapp.com/letra",
                    query = list(album = album,
                                 musica = musica))
  page
}
