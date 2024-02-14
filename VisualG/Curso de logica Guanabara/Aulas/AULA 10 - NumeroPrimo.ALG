Algoritmo "AULA 10 - Numero Primo"
// Utilizando a estrutura de repetição Repita mais o Se, será
// verificado se o número é primo.
Var
   cont, N, contD : inteiro


Inicio
      cont <- 1
      contD <- 0
      Escreva ("Informe um número: ")
      Leia (N)
      Repita
            Se (N % cont = 0) entao
               contD <- contD + 1
            Fimse
            cont <- cont + 1
      Ate (cont > N)

      Se (contD > 2) entao
         EscrevaL ("O número ", N, " não é um número primo")
      Senao
           EscrevaL ("O número ", N, " é um número primo")
      Fimse

Fimalgoritmo