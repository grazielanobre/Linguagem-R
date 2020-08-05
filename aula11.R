#visualização de dados

#carregar pacote
library(tidyverse)

#ler bases de dados
scouts <- read.csv('2016_scouts.csv')
atletas <- read.csv('2016_atletas.csv')

#identificar cada posição (união)
posicao <- scouts %>%
  filter(participou == TRUE) %>%
  left_join(atletas, c('atletas_id' = 'id'))

# Transformação da posição id em fator - ou seja, dará nome as posições
posicao$posicao_id <- factor(posicao$posicao_id,
                             levels = c(1:6),
                             labels = c('goleiro', 'lateral', 'zagueiro', 'meia', 'atacante', 'tecnico'))

#Gráfico de disperção (rodada 1)
posicao %>%
  filter(rodada==1) %>%
  ggplot(aes(pontos_num, variacao_num))+
  geom_points()+
  geom_smooth(method = 1m)+
  facet_wrap(== rodada)

#Gráfico de desidade de probabilidade (rodada 1)
posicao %>%
  filter(rodada ==1)%>%
  ggplot(aes(pontos_num))+
  geom_density()

#Gráfico Boxplot
posicao%>%
  filter(rodada ==1)%>%
  ggplot(aes(posicao_id, variacao_num))+
  geom_boxplot()

