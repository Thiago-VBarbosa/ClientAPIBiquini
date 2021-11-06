#' get_musicas
#'
#' Retorna a lista de músicas contidas em um album
#'
#' @param album Nome do album em que deseja consultar a lista de músicas
#'
#' @return Retorna um vetor contendo o nome das músicas do album especificado
#'
#' @examples
#' #Obtêm a lista de músicas do album "Ilustre Guerreiro"
#' get_musicas(album = "Ilustre Guerreiro")
#'
#' @export


get_musicas <- function(album){
  `%>%` <- magrittr::`%>%`
  page <- httr::GET("https://api-biquini.herokuapp.com/musicas",
                    query = list(album = album))
  httr::content(page) %>%
    unlist()
}
