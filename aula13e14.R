# visualiza��o de dados

#carregar pacote
library(ggplot2)

#Ler base de dados
scouts <- read.csv('2016_scouts.csv')

#Filtrar rodada 1 e participantes
rodada_1<- scouts %>%
  filter(rodada ==1 & participou == TRUE)

#Gr�fico de disper��o + tend�ncia
rodada_1 %>%
  ggplot()+
  geom_point(mapping = aes(x = pontos_num, y = variacao_num), color = 'red')+
  geom_smooth(mapping = aes(x = pontos_num, y =variacao_num), method = 1m)

#Gr�fico de disper��o + tend�ncia (mais bonito)
rodada_1 %>%
  ggplot()+
  geom_point(mapping = aes(x = pontos_num, y = variacao_num), color = 'gray8', size = 1)+
  geom_smooth(mapping = aes(x = pontos_num, y =variacao_num), method = 1m)+
  xlab('Pontua��o da rodada')+
  ylab('varia��o de pre�o na rodada')+
  ggtitle('regress�o linear')

  