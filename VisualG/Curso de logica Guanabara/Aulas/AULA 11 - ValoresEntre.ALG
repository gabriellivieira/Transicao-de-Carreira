Algoritmo "AULA 11 - Valores Entre"
// A atividade propoem dizer quantos números existem entre 0 e 10
// usando a estrutura de repetição Para
// A pratica adicional e apresentar a soma dos números inpares digitados

Var
   cont, N, S, I, Ifora : inteiro


Inicio
      S <- 0
      I <- 0
      Para cont <- 1 ate 6 faca
           Escreva ("Digite um valor: ")
           Leia (N)
           Se (N >= 0) e (N <=10) entao
                S <- S + 1
                Se (N % 2 = 1) entao
                   I <- I + N
                Fimse
           Fimse
           Se (N % 2 = 1) entao
                   Ifora <- Ifora + N
           Fimse

      Fimpara
      EscrevaL ("Existem ", S, " valores entre 0 e 10.")
      EscrevaL ("A soma dos impares entre 0 e 10 foi de ", I)
      Escreva ("A soma total dos impares é de", Ifora)

Fimalgoritmo