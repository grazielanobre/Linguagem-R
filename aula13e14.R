# visualização de dados

#carregar pacote
library(ggplot2)

#Ler base de dados
scouts <- read.csv('2016_scouts.csv')

#Filtrar rodada 1 e participantes
rodada_1<- scouts %>%
  filter(rodada ==1 & participou == TRUE)

#Gráfico de disperção + tendência
rodada_1 %>%
  ggplot()+
  geom_point(mapping = aes(x = pontos_num, y = variacao_num), color = 'red')+
  geom_smooth(mapping = aes(x = pontos_num, y =variacao_num), method = 1m)

#Gráfico de disperção + tendência (mais bonito)
rodada_1 %>%
  ggplot()+
  geom_point(mapping = aes(x = pontos_num, y = variacao_num), color = 'gray8', size = 1)+
  geom_smooth(mapping = aes(x = pontos_num, y =variacao_num), method = 1m)+
  xlab('Pontuação da rodada')+
  ylab('variação de preço na rodada')+
  ggtitle('regressão linear')

  