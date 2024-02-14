Algoritmo "AULA 12 - SomaParametrosReferencia"
// Somando valores utilizando um parametro de referencia
Var
X, Y : Inteiro

Procedimento Soma (var A, B : Inteiro)
Inicio
      A <- A + 1
      B <- B + 2
      EscrevaL ("Valor de A = ", A)
      EscrevaL ("Valor de B = ", B)
      EscrevaL ("Soma A + B = ", A+B )
Fimprocedimento

Inicio
      X <- 4
      Y <- 8
      Soma (X, Y)
      EscrevaL ("Valor de X = ", X )
      EscrevaL ("Valor de Y = ", Y)

Fimalgoritmo