Algoritmo "AULA 10 - Contador0a10"
// Usando a estrutura de repetição Repita, será criado um contador de 1 a 10
// e 10 a 0
Var
    cont : inteiro

Inicio
      cont <- 1
      Repita
            EscrevaL (cont)
            cont <- cont + 1
      Ate (cont > 10)
      
      cont <- 10
      Repita
            EscrevaL (cont)
            cont <- cont - 1
      Ate (cont < 0)


Fimalgoritmo