Algoritmo "AULA 09 - Contador Personalizado02"
//Contador para contar de zero até onde o usuário quiser e em quantas
// quiser (saltos dos números).
Var
   valor, salto, contador : inteiro

Inicio
      Escreva ("Informe um número: ")
      Leia (valor)
      Escreva ("Qual será o salto? ")
      Leia (salto)
      contador <- 0
      Enquanto (contador <= valor) faça
               EscrevaL (contador)
               contador <- contador + salto
      FimEnquanto
      EscrevaL ("Terminei de contar")


Fimalgoritmo