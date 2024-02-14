Algoritmo "AULA 09 - Contador Soma"
// Usando a estrutura Enquanto para fazer soma
Var
   cont, S, N, maior : inteiro


Inicio
      cont <- 1
      S <-0
      Enquanto (cont <= 5) faca
               EscrevaL ("Digite o ", cont, "o. valor.")
               Leia (N)
               Se (N > maior) entao
                  maior <- N
               Fimse
               S <- S + N
               cont <- cont + 1
      Fimenquanto
      EscrevaL (" A soma dos valores é de", S)

Fimalgoritmo