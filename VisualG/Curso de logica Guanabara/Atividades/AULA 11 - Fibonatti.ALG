Algoritmo "AULA 11 - Fibonatti"
// Mostrar uma serie de valores com os 15 primeiros valores sa série de
// Fibonatti
Var
   segundo, primeiro, cont: inteiro

Inicio

      primeiro <- 0
      segundo <- 1

      Repita
            Escreva (primeiro)
            
            segundo <- primeiro + segundo
            primeiro <- segundo - primeiro
            
            cont <- cont + 1
      Ate ( cont > 15)

Fimalgoritmo