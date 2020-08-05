# variaveis 

#Atribuir valores a variáveis 
x <- 5 
x = 50
500 -> y

# Remover variáveis
rm(x) #o argumento dessa função é justamente o que será removido exemplo x
rm(list = ls())

# tipos de vetores
x<- 5 # númerico
texto <- "meu texto" # caracter
logica <- TRUE #lógico

# Criando vetores com mais de um valor
x <- c(5,8,10)
texto <- c('a', 'b','c')
# Selecionar elemento de um vetor por posição
x[2]
texto[2]

# Matrizes
matrix(x, 3, 1)
matrix(texto, 3, 1)
matrix(c('texto', 10, 20, 'textob'),2,2)
matrix <- matrix(1:20, 4,5)

#Selecionar elemento de uma matriz por possição
matrix [2,]
matrix [,2]
matrix [3,3]

#Data Frames
id <- c(10,25,36,42)
cor <-c('vermelha', 'azul', 'preto', 'branco')
compra <- c(TRUE, TRUE, FALSE, TRUE)

df <- data.frame(id, cor, compra)
# Seleciona elemento de uma data frame por posição
df[2,]
df[,3]
df$cor 