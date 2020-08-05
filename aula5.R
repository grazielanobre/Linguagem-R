# Mais sobre funções

#pedindo ajuda de uma função
?matrix

#Funções úteis
numerico <- c(1,2,3)
texto <- 'meu texto'
logico <- c(TRUE, FALSE, TRUE)

class(logico) # Tipo de variavel
length(numerico) #Quantidade de elemntos de um vetopr
str(numerico) #estrutura
summary(logico) #Resumo de vetores

sequencia <- 1:1000
head(sequencia) # 6 primeiros elementos
tall(sequencia) # ulmtimos 6 elementos

getwd() # saber o diretório

#Funções estatísticas

x <- c(1:20)
y <- c(21:40)

mean(x) #média
median(y) #mediana
sd(x) #desvio padrão
dist <- rnom(1000, 0, 1) #Ditribuição normal
quantile(x) # quartis
cor(x,y) # correlação

#Visualização

plot(x,y) # Gráficos simples

hist(dist) # histograma
