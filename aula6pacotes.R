#Pacotes

#instalar pacotes
install.packages('tidyverse', dependencies = TRUE)

#carregar pacotes
livrary(tidyverse)

#usar função de um pacote específico (em caso de conflito)
stats::filter()

#Descarregar um pacote
detach('package:tidyverse', unload = TRUE)
