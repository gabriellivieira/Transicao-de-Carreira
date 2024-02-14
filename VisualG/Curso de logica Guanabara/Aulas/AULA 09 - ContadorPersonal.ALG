Algoritmo "AULA 09 - Contador Personalizado"
//Contador para contar de zero até onde o usuário quiser.
Var
   valor, contador : inteiro

Inicio
      Escreva ("Informe um número: ")
      Leia (valor)
      contador <- 0
      Enquanto (contador <= valor) faça
               EscrevaL (contador)
               contador <- contador + 2
      FimEnquanto
      EscrevaL ("Terminei de contar")


Fimalgoritmo