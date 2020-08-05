# transformação dos dados

#carregar pacote
library(tidyverse)

# ler base de dados
scouts <- read.csv('2017_scouts.csv')

# resumo da base
sumary(scouts)

#filtrar só os prováveis (status_)id = 7)
scouts_filtrada <- filter(scouts, scouts$status_id == 7)

#resumo da base
summary(scouts_filtrada)

#selecionar pontuação dos jogadores prováveis
provaveis <- select(scouts_filtrada, c(atleta_id, pontos_num))

#Ordenar do maior para o menor
ordenado <- arrange(provaveis, desc(pontos_num))

#Pipe (%>%)
ordenado <- scouts %>% 
  filter(scouts$status_id == 7) %>%
  select (c(atleta_id, pontos_num)) %>%
  arrange(desc(pontos_num))

