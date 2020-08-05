#Desafio: Reunir em um único data frame as médias de pontos, bem como o máximo e o mínimo de pontos para cada posição considerando apenas os jogadores que jogaram na rodada.

#carregar pacote
library(tidyverse)

#ler bases de dados
scouts <- read.csv('2016_scouts.csv')
atletas <- read.csv('2016_atletas.csv')

#Filtrar jogadores que jogaram na rodada
participantes <- scouts %>%
  filter(participou == TRUE)

#Identificar cada posição (uniao)
posicao <- left_join(scouts, atletas, c('atleta_id' = 'id'))

#criar dataframe de resumo
#Lembrando: posição 1 = goleiro, 2= lateralç, 3 = zagueiro
#4 = meia, 5 = atacante, 6 = tecnico

df_final <- posicao %>%
  group_by (posicao_id) %>%
  summarise (media_pontos = mean(pontos_num),
            max_pontos = max(pontos_num),
            min_pontos = min(pontos_num))