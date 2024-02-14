Algoritmo "AULA 07 - ReprovadoAprovado"
//
Var
   nota01, nota02, result : real

Inicio
   Escreva ("Informe a primeira nota: ")
   Leia (nota01)
   Escreva ("Informe a segunda nota: ")
   Leia (nota02)
   result <- (nota01 + nota02) / 2
   
   Se (result > 7) entao
      Escreva ("Você esta aprovado com a nota", result)
   Senao
        Escreva ("Você esta reprovado com a nota", result)
   FimSe


Fimalgoritmo