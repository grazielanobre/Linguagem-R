# Desafio: Reunir em um único data frame as médias de pontos, bem como o máximo e o mínimo de pontos no geral considerando apenas os jogadores que jogaram na rodada

#carregar pacote
library(tidyverse)

#ler base de dados
scouts <- read.csv('2016_scouts.cvs')

#filtrar jogadores que jogaram na rodada
participantes <- scouts %>%
  filter(participou == TRUE)

#criar data frame de resumo
df_final <- scouts %>%
  summarise(media_pontos = mean(pontos_num),
max_pontos = max(pontos_num),
min_pontos = min(pontos_num))

df_final
