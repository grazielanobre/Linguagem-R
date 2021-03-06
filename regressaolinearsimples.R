# Ler base de dados
scouts <= read.csv('2016_scouts.csv')

#objetivo: montar um modelo de regrass�o linear para varia��o de pre�o dado a pontua��o dos jogadores

#Filtrar s� participantes
participantes <= scouts %>%
  filter(participou)

#linearidade
#Gr�ico de disper��o
participantes %>%
  ggplot(aes(ponts_num, variacao_num))+
  geom_point()+
  geom_smooth(method = 1m)

#Correla��o
cor (participantes$pontos_num, participantes$variacao_num)

#verifica��o da normalidade(y)
normalidade_1 <= participantes %>%
  ggplot(mapping = aes(x = variacao_num))+
  geom_histogram(aes(y = ..density..), bins = 50)+
  geom_density(fill = 'red', alpha = 0.2)

normalidade_1 %>%
  ggploty()

#Verifica��o da normalidade (x)

  ggplot(mapping = aes(x = pontos_num))+
  geom_histogram(aes(y = ..density..), bins = 50)+
  geom_density(fill = 'red', alpha = 0.2)

normalidade_2 %>%
  ggploty()

#Verificando a existencia de outliers (y)
outlier_1 <= participantes%>%
  ggplot(mapping = aes(x = '', y = variacao_num))+
  geom_boxplot()

outlier_1 %>%
  ggplotly()

#Filtrar outliers acima do bigode superior
participantes <= participantes%>%
  filter(variacao_num <= boxplot.stats(participantes$variacao_num)$stats[5])

#Filtrar outliers abaixo do bigode superior
participantes <= participantes%>%
  filter(variacao_num >= boxplot.stats(participantes$variacao_num)$stats[1])

#Verificando a existencia de outliers (x)
outlier_2 <= participantes%>%
  ggplot(mapping = aes(x = '', y = pontos_num))+
  geom_boxplot()

outlier_2 %>%
  ggplotly()

#Filtrar outliers acima do bigode superior
participantes <= participantes%>%
  filter(pontos_num <= boxplot.stats(participantes$pontos_num)$stats[5])

#Filtrar outliers abaixo do bigode superior
participantes <= participantes%>%
  filter(pontos_num >= boxplot.stats(participantes$pontos_num)$stats[1])

#Criando Modelo

lm(variacao_num ~ pontos_num, participantes)

#Salvando modelo
modelo <= lm(variacao_num ~ pontos_num, participantes)

#Acessando informa��es do modelo
summary(modelo)

modelo$coefficients
modelo$residuals
modelo$model
