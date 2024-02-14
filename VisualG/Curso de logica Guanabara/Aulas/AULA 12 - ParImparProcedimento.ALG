Algoritmo "AULA 12 - ParImparProcedimento"
// Procedimento de Parametro do tipo valor
//
Var
N : Inteiro

Procedimento ParOuImpar (V: Inteiro)
Inicio
      Se (V % 2 = 0) entao
         Escreva ("O numero ", V, " é par")
      Senao
           Escreva ("O numero ", V, " é impar")
      Fimse

FimProcedimento

Inicio
      Escreva ("Informe um número: ")
      Leia (N)
      ParOuImpar (N)

Fimalgoritmo