Algoritmo "AULA 12 - Fibonatti"
// Sequencia de Fibonatti utilizando procedimento com as variaveis
//de referencia

Var
C, T1, T2, T3 : inteiro

Procedimento ProximoFibonatti (var A, B : inteiro)
Var
C : inteiro

inicio
      C := A + B
      Escreva (C)
      A := B
      B := C
Fimprocedimento

Inicio
      T1 <- 0
      Escreva (T1)
      T2 <- 1
      Escreva (T2)
      
      Para C := 3 ate 10 faca
           ProximoFibonatti (T1, T2)
      Fimpara

Fimalgoritmo