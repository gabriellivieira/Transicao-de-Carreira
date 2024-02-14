Algoritmo "AULA 10 - Fatorial"
// Usando a estrutura de repetição Repita, será feito o fatorial de um número
Var
   N, cont, F : inteiro

Inicio
    EscrevaL ("Informe um número: ")
    Leia (N)
    cont <- N
    F <- 1
      Repita
            F <- F * cont
            cont <- cont - 1
      Ate ( cont < 1)
      EscrevaL ("O fatorial de ", N, "é de ", F)

Fimalgoritmo