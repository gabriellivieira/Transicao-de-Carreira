Algoritmo "AULA 10 - Tabuada"
// Usando a estrutura de repeti��o Repita, ser� apresentado a tabuaba
// de um n�mero

Var
    cont, N, R : inteiro

Inicio
      cont <- 1
      EscrevaL ("Quer ver a tabuada de qual n�mero? ")
      Leia (N)
      Repita
            R <- cont * N
            EscrevaL (N, " X ", cont, " = ", R)
            cont <- cont + 1
      Ate (cont > 10)


Fimalgoritmo