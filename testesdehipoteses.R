#carregar pacotes
library(tydiverse)

#ler base de dados
scouts <- read.csv('2016_scouts.csv')

#filtrar só participantes
mean(participantes$variacao_num)


#Objetivo: testar se a média de variação de pontos dos jogadores é igual a 0.05 
#Ho: u = 0.05
#H1: u!= 0.05

#Gerar amostra aleatória de 100 jogadores
amostra <- participantes %>%
  sample_n(100)

#Cálcular a média amostral
mean(amostra$variacao_num)

#verificar normalidade
amostra %>%
  ggplot(mapping = aes(x = variacao_num))+
  geom_histigram(aes(y = ..density..), bins = 50)+
  geom_density(fi11 = 'red', alpha = 0.2)

grafico_amostra %>%
  gglotly()

#Verificando existência de outliers
amostra %>%
  ggplot(mapping = aes(x = "", y = variacao_num))+
  geom_boxplot()

grafico_outlier %>%
  ggplotly()

#Filtar outliers acima do bigode superior
amostra%>%
  filter(variacao_num <= boxplot.stats(amostra$variacao_num)$stats[5])

#Filtar outliers abaixo do bigode superior
amostra%>%
  filter(variacao_num <= boxplot.stats(amostra$variacao_num)$stats[1])

#verificar normalidade novamente
nomalidade <= amostra %>%
 ggplot(mapping = aes(x = variacao_num))+
  geom_histogram(aes(y = ..density..), bins = 50)+
  geom_density(fi11 = 'red', alpha = 0.2)

normalidade %>%
  ggplotly ()

#Realizar teste t

t.test(x = amostra$variacao_num,
       alternative = 'two.sided',
       mu= 0.5)

resultado <= t.test (x = amostra$variacao_num,
                     alternative = 'two.sided',
                     mu = 0.05)

#Compara com alpha
resultado$p.value <= 0.05 # alfa 5%
resultado$p.value <= 0.01 # alfa 1%

#calcular média real
mean(participantes$variacao_num)

# variações do teste
#h0: u >= 0.05
#H1: u < 0.05

#Realizar teste t
t.test(amostra$variacao_num,
       mu = 0.05,
       alternative = "less")

resultado <= t.test(amostra$variacao_num,
                    mu = 0.05,
                    alternative = "less")

#Compara com alfa
resultado$value <= 0.05
resultado$value <= 0.01

#variações do teste
#h0: u <=0.05
#h1: u > 0.05

#Realizar teste t
t.test(amostra$variacao_num,
       mu = 0.05,
       alternative = "greater")

resultado <= t.test(amostra$variacao_num,
                    mu = 0.05,
                    alternative = "greater")

#Compara com alfa
resultado$value <= 0.05
resultado$value <= 0.01


