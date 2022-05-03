ClientAPIBiquini
================

Cliente de API para consumir dados da banda Biquini Cavadão através da
Linguagem R. O cliente de API foi desenvolvido através da linguagem R
para o consumo de informações estruturadas da API desenvolvida através
do projeto [api-biquini](https://github.com/Thiago-VBarbosa/api-biquini)
e disponível em [*API Biquini
Cavadão*](https://api-biquini.herokuapp.com).

Para instalar o pacote ClientAPIBiquini basta rodar o comando abaixo:

    devtools::install_github("Thiago-VBarbosa/ClientAPIBiquini")

Pode-se, por exemplo, obter informações sobre o histórico de shows,
informação sobre os albuns e letras das músicas da banda Biquini
Cavadão.

### Função get\_shows()

##### Histórico de shows nos Estados Unidos

    library(ClientAPIBiquini)
    get_shows(pais = "Estados Unidos")

    ## # A tibble: 7 x 5
    ##   data_do_show local                                       cidade         estado pais          
    ##   <chr>        <chr>                                       <chr>          <chr>  <chr>         
    ## 1 2019-10-20   8th Annual Brazilian Festival Pompano Beach Broward County FL     Estados Unidos
    ## 2 2019-10-18   Ocean Side Events Center (Former Club Lido) Suffolk County MA     Estados Unidos
    ## 3 2005-10-29   Show                                        Newark         NJ     Estados Unidos
    ## 4 2005-10-28   Show                                        Boston         MA     Estados Unidos
    ## 5 2005-10-03   Danceteria                                  Stanford       CT     Estados Unidos
    ## 6 1995-07-03   Show                                        Boston         MA     Estados Unidos
    ## 7 1995-07-01   Show                                        Newark         NJ     Estados Unidos

##### Histórico de shows no Brasil, no estado de Mato Grosso, na cidade de Cuiabá

    get_shows(pais = "Brasil", estado = "MT", cidade = "Cuiabá")

    ## # A tibble: 8 x 5
    ##   data_do_show local                         cidade estado pais  
    ##   <chr>        <chr>                         <chr>  <chr>  <chr> 
    ## 1 2016-10-28   Musiva                        Cuiabá MT     Brasil
    ## 2 2015-05-30   Musiva                        Cuiabá MT     Brasil
    ## 3 2014-02-21   Centro de Eventos do Pantanal Cuiabá MT     Brasil
    ## 4 2009-05-23   Show                          Cuiabá MT     Brasil
    ## 5 2007-09-22   Show                          Cuiabá MT     Brasil
    ## 6 2004-12-03   Show                          Cuiabá MT     Brasil
    ## 7 1992-10-17   Show                          Cuiabá MT     Brasil
    ## 8 1987-07-04   Show                          Cuiabá MT     Brasil

### Função get\_info\_albuns()

##### retorna as informações do album "Roda Gigante"

    get_info_albuns(album = "Roda Gigante")

    ## # A tibble: 1 x 4
    ##   nome           ano produzido_por                 gravadora
    ##   <chr>        <int> <chr>                         <chr>    
    ## 1 Roda Gigante  2013 Carlos Coelho e Marcelo Magal Warner

##### retorna as informações de todos os albuns

    get_info_albuns()

    ## # A tibble: 19 x 4
    ##    nome                                     ano produzido_por                           gravadora      
    ##    <chr>                                  <int> <chr>                                   <chr>          
    ##  1 Ilustre Guerreiro                       2018 Liminha                                 Independente   
    ##  2 As Voltas Que O Mundo Dá                2017 Liminha                                 Coqueiro Verde 
    ##  3 Me Leve Sem Destino                     2014 Coelho e Marcelo Magal                  Sony Music     
    ##  4 Roda Gigante                            2013 Carlos Coelho e Marcelo Magal           Warner         
    ##  5 80 vol.2 – Ao Vivo No Circo Voador      2008 Marcelo Cortez                          RWR (SomLivre) 
    ##  6 1985/2007 vol.2 – Sucessos Regravados   2007 Tadeu Patolla                           Independente   
    ##  7 1985/2007 vol.1 – Sucessos Regravados   2007 Tadeu Patolla                           Independente   
    ##  8 Só Quem Sonha Acordado Vê O Sol Nascer  2007 Tadeu Patolla                           Biquini Cavadão
    ##  9 Biquini Cavadão Ao Vivo                 2005 Tadeu Patolla                           Deckdisc       
    ## 10 80                                      2001 Tadeu Patolla                           Universal      
    ## 11 Escuta Aqui                             2000 Paul Ralphes                            BMG            
    ## 12 biquini.com.br                          1998 Carlos Beni, Paul Ralphes e Tuta Aquino BMG            
    ## 13 Agora                                   1994 Carlos Beni                             Epic/Sony Music
    ## 14 Descivilização                          1991 Carlos Beni                             Polygram       
    ## 15 Zé                                      1989 Carlos Beni                             Polygram       
    ## 16 A Era da Incerteza                      1987 Carlos Beni                             Polygram       
    ## 17 Cidades Em Torrente                     1986 Carlos Beni                             Polygram       
    ## 18 No Mundo da Lua                         1985 Carlos Beni                             Polygram       
    ## 19 Tédio                                   1985 Carlos Beni                             Polygram

### Função get\_lyrics()

##### Retorna a letra da música Roda-Gigante em formato HTML

    get_lyrics(album = "Roda Gigante", musica = "Roda-Gigante")

    ## Response [https://api-biquini.herokuapp.com/letra?album=Roda%20Gigante&musica=Roda-Gigante]
    ##   Date: 2022-05-03 21:45
    ##   Status: 200
    ##   Content-Type: text/html; charset=UTF-8
    ##   Size: 639 B
    ## <p>Quero aprender a amar<br>
    ## pra fazer as pazes<br>
    ## até a noite chegar<br>
    ## Quero aprender a amar<br>
    ## em todos os detalhes<br>
    ## para te decifrar</p>
    ## <p>Quero aprender a amar<br>
    ## pra cometer pecados<br>
    ## depois me perdoar<br>
    ## Quero aprender a amar<br>
    ## ...

### Função get\_musicas()

##### Obtêm a lista de músicas do album "Ilustre Guerreiro"

    get_musicas(album = "Ilustre Guerreiro")

    ## [1] "Vital e Sua Moto"                "Mensagem de Amor"                "Ska"                            
    ## [4] "Cuide Bem do Seu Amor"           "Aonde Quer Que Eu Vá"            "Só Pra Te Mostrar"              
    ## [7] "O Amor Não Sabe Esperar"         "Se Eu Não Te Amasse Tanto Assim"
