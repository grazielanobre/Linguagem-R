# Carregar base
dados <- read.csv('2017_atletas.csv')

#carregar tidyverse
library(tidyverse)

#Ler arquivo CSV
dados2 <- read.csv('2017_atletas.cvs')

# transformar data frame para tibble
dados <- tbl_df(dados)
