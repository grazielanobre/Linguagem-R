#Visualiza��o de dados

#carregar pacote
library(ggplot2)

#Ler bases de dados
scouts <- read.csv('2016_scouts.csv')

#Gr�fico de disper��o (rodada 1)
rodada_1 <- scouts %>%
  filter(rodada ==1)

rodada_1 %>%
  ggplot()+
  geom_point(mapping = aes(x = pontos_num, y = variacao_num),
             color = 'red')

#Filtrar s� participantes
rodada_1 <- rodada_1 %>%
  filter(participou == TRUE)

#GR�fico de tend�ncia (x e y cont�nuos)
rodada_1 %>%
  ggplot()+
  geom_smooth(mapping = aes(x= pontos_num, y = variacao_num),
              method = 1m)

#Gr�fico de barras (x discreto)
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