Algoritmo "AULA 10 - FatorialRepete"
// Usando a estrutura de repetição Repita, será feito o fatorial de um número
Var
   N, cont, F : inteiro
   resp : caractere

Inicio
   Repita
       EscrevaL ("Informe um número: ")
       Leia (N)
       cont <- N
       F <- 1
         Repita
               F <- F * cont
               cont <- cont - 1
         Ate ( cont < 1)
         EscrevaL ("O fatorial de ", N, " é de ", F)
         Escreva ("Quer continuar? [S/N]")
         Leia (resp)
   Ate ( resp = "N")

Fimalgoritmo