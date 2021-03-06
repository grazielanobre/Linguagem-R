# Desafio: Desejasse comparar visualmente a probabilidade de pontua��o dos jogadores por posi��o nas primeiras 5 rodadas

# Carregar pacote
library(tidyverse)

#Ler bases de dados
scouts <- read.csv('2016_scouts.csv')
atletas <- read.csv('2016_atletas.csv')

#Identificar cada posi��o (uniao)
posicao <- scouts %>%
  filter(participou == TRUE & rodada <- 5 & rodada > 0) %>%
  left_join(atletas , c('atletas_id' = 'id'))

# Transforma��o da posi��od id em fator
posicao$posicao_id <- factor(posicao$posicao_id,
                             levels = c(1:6),
                             labels = c('goleiro', 'lateral', 'zagueiro', 'meia', 'atacante', 't�cnico'))

#Gr�fico de densidade por posi��o
posicao %>%
  ggplot(aes(ponts_num))+
  geom_density ()+
  facet_grid(.-posicao_id)

#Gr�fico de densidade por posi��o (alternativa)
posicao %>%
  ggplot(aes(ponts_num))+
  geom_density ()+
  facet_wrap(.-posicao_id)

#Gr�fico de densidade por posi��o e rodada
posicao %>%
  ggplot(aes(ponts_num))+
  geom_density ()+
  facet_grid(rodada-posicao_id)