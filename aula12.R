#Visualização de dados

#carregar pacote
library(ggplot2)

#Ler bases de dados
scouts <- read.csv('2016_scouts.csv')

#Gráfico de disperção (rodada 1)
rodada_1 <- scouts %>%
  filter(rodada ==1)

rodada_1 %>%
  ggplot()+
  geom_point(mapping = aes(x = pontos_num, y = variacao_num),
             color = 'red')

#Filtrar só participantes
rodada_1 <- rodada_1 %>%
  filter(participou == TRUE)

#GRáfico de tendência (x e y contínuos)
rodada_1 %>%
  ggplot()+
  geom_smooth(mapping = aes(x= pontos_num, y = variacao_num),
              method = 1m)

#Gráfico de barras (x discreto)
rodada_1 %>%
  ggplot()+
  geom_bar(mapping = aes(x = G))

#histograma (x continuo)
rodada_1 %>%
  ggplot()+
  geom_histograma(mapping = aes(x= pontos_num), bins = 50)

#densidade de probabilidade (x continuo)
rodada_1 %>%
  ggplot()+
  geom_density(mapping = aes(x= pontos_num))