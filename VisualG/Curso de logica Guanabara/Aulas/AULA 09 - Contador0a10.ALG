Algoritmo "AULA 09 - Contador0a10"
//Usando a estrutura de repetição Enquanto de 0 a 10 e de 10 a 0
Var
   contador : inteiro

Inicio
      contador <- 0
      Enquanto (contador <= 10) faça
               EscrevaL (contador)
               contador <- contador + 1
      FimEnquanto
      EscrevaL ("Terminei de contar")
      
      contador <- 10
      Enquanto (contador >= 0) faça
               EscrevaL (contador)
               contador <- contador - 1
      FimEnquanto
      EscrevaL ("Terminei de contar")


Fimalgoritmo