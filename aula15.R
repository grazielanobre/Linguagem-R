# Desafio: Desejasse comparar visualmente a probabilidade de pontuação dos jogadores por posição nas primeiras 5 rodadas

# Carregar pacote
library(tidyverse)

#Ler bases de dados
scouts <- read.csv('2016_scouts.csv')
atletas <- read.csv('2016_atletas.csv')

#Identificar cada posição (uniao)
posicao <- scouts %>%
  filter(participou == TRUE & rodada <- 5 & rodada > 0) %>%
  left_join(atletas , c('atletas_id' = 'id'))

# Transformação da posiçãod id em fator
posicao$posicao_id <- factor(posicao$posicao_id,
                             levels = c(1:6),
                             labels = c('goleiro', 'lateral', 'zagueiro', 'meia', 'atacante', 'técnico'))

#Gráfico de densidade por posição
posicao %>%
  ggplot(aes(ponts_num))+
  geom_density ()+
  facet_grid(.-posicao_id)

#Gráfico de densidade por posição (alternativa)
posicao %>%
  ggplot(aes(ponts_num))+
  geom_density ()+
  facet_wrap(.-posicao_id)

#Gráfico de densidade por posição e rodada
posicao %>%
  ggplot(aes(ponts_num))+
  geom_density ()+
  facet_grid(rodada-posicao_id)