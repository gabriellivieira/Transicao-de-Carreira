Algoritmo "AULA 10 - Conta Negativo"
// Usando a estrutura de repetição Repita, será contado os números negativos
Var
   N, cont, TotN : inteiro


Inicio
    cont <- 1
    TotN <- 0
      Repita
            EscrevaL ("Informe um número: ")
            Leia (N)
            Se (N < 0) entao
               TotN <- TotN + 1
            Fimse
            cont <- cont + 1
      Ate ( cont > 5)
      EscrevaL ("Foram contador", TotN, "números negativos")

Fimalgoritmo