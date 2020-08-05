# análise exploratória 

# carregar os pacotes
library(tyiverse)

#ler base de dados
df <- read.csv('studentesperformance.csv')

#Entender base 
df %>%
  summary()

str(df)

# TRansformar variaveis categóricas em fatores
df$gender <- as.factor(df$gender)
df$race/ethnicity <-as.factor(df$race/ethenicity)
df$parental level of education <- as.factor(df$parental level of education)
df$lunch <- as.factor (df$lunch)
df$test preparation course <- as. facto(df$test preparation course)

#Transformar nomes das variáveis para facilitar a análise
colnames(df)
colnames(df) <- c('gender', 'race', 'paramental_level_education',
                  'lunch', 'preparation, math_score',
                  'reading_score', 'writing_score')

#Resumindo os dados por gênero
df %>%
group_by(gender) %>%
summarise (media_math = mean(math_score),
media_writing =  mean(writing_score),
media_reading = mean(reading_score))

#Resumindo os dados por raça
df %>%
  group_by(race) %>%
  summarise (media_math = mean(math_score),
             media_writing =  mean(writing_score),
             media_reading = mean(reading_score))

#Resumindo os dados por parental_level_education
df %>%
  group_by(parental_level_education) %>%
  summarise (media_math = mean(math_score),
             media_writing =  mean(writing_score),
             media_reading = mean(reading_score))

#Resumindo os dados por lunch
df %>%
  group_by(lunch) %>%
  summarise (media_math = mean(math_score),
             media_writing =  mean(writing_score),
             media_reading = mean(reading_score))

#Resumindo os dados por preparation
df %>%
  group_by(preparation) %>%
  summarise (media_math = mean(math_score),
             media_writing =  mean(writing_score),
             media_reading = mean(reading_score))

