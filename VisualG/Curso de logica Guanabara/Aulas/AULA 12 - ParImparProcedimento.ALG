Algoritmo "AULA 12 - ParImparProcedimento"
// Procedimento de Parametro do tipo valor
//
Var
N : Inteiro

Procedimento ParOuImpar (V: Inteiro)
Inicio
      Se (V % 2 = 0) entao
         Escreva ("O numero ", V, " � par")
      Senao
           Escreva ("O numero ", V, " � impar")
      Fimse

FimProcedimento

Inicio
      Escreva ("Informe um n�mero: ")
      Leia (N)
      ParOuImpar (N)

Fimalgoritmo