#' get_shows
#'
#' Obtêm o histórico de shows da banda Biquini Cavadão
#'
#'
#' @param pais País em que se deseja obter o histórico de shows
#' @param estado Sigla do estado em que se deseja obter o histórico de shows
#' @param cidade Cidade em que se deseja obter o histórico de shows
#'
#' Nenhum dos parâmetros são obrigatórios. Se não for informado
#' nenhum dos parâmetros será baixado todo o histórico de shows
#'
#' @return Retorna um data.frame, especificamente um tibble, com o
#' histórico dos shows da banda segundo os parâmetros especificados
#'
#' @examples
#' # histórico de shows nos Estados Unidos
#' get_shows(pais = "Estados Unidos")
#'
#' #histórico de shows no Brasil, no estado de Mato Grosso, na cidade de Cuiabá
#' get_shows(pais = "Brasil", estado = "MT", cidade = "Cuiabá")
#'
#' @export

get_shows <- function(pais = "", estado = "", cidade = ""){
  `%>%` <- magrittr::`%>%`
  page <- httr::GET("https://api-biquini.herokuapp.com/shows",
                    query = list(pais = pais,
                                 estado = estado,
                                 cidade = cidade))

  shows <- httr::content(page, as = "text") %>%
    jsonlite::fromJSON() %>%
    tibble::tibble()
  shows
}
