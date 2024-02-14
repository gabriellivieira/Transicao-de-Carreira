Algoritmo "AULA 10 - Tabuada"
// Usando a estrutura de repetição Repita, será apresentado a tabuaba
// de um número

Var
    cont, N, R : inteiro

Inicio
      cont <- 1
      EscrevaL ("Quer ver a tabuada de qual número? ")
      Leia (N)
      Repita
            R <- cont * N
            EscrevaL (N, " X ", cont, " = ", R)
            cont <- cont + 1
      Ate (cont > 10)


Fimalgoritmo