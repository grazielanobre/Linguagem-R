# Funções
c(1,5,4,8)

# Criação de funções
minhafuncao <- function() {
  print('minha função funciona')
}

minhafuncao()

#Criando funções com argumentos
multi <- function(num1, num2){
  resultado <- num1*num2
  print(resultado)
}

multi(2,10)
multi(50,215)

#Criando funções com argumentos opicionais
multi <- function(num1, num2, exibir =TRUE){
  resultado <- num1*num2
  if (exibir == TRUE) {
    print(paste('o resultado da multiplicação é', resultado))
  } else{
    print(resultado)
  }
}
  multi(50,215)
  multi(50,215,FALSE)
  
  multi(exibir = FALSE, num2 = 80, num1 = 75)
  
  #Quais são os argumentos de uma função
  args(multi)