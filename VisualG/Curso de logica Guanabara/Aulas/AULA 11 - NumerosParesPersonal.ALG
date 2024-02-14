Algoritmo "AULA 11 - Numeros Pares"
// Criar contador de mostre somente os números pares
// com a adição de uma contagem regressiva
Var
   cont, N : inteiro

Inicio
      Escreva ("Informe um numero: ")
      Leia (N)
//Esse Se esta aqu para tratar situações onde se informa um número
//impar, para que ainda seja apresentado numeros pares
      Se (N % 2 = 1) entao
         N <- N - 1
      Fimse
      Para cont <- 0 ate N passo 2 faca
           EscrevaL (cont)
      Fimpara
      Para cont <- N  ate 0 passo -2 faca
           EscrevaL (cont)
      Fimpara


Fimalgoritmo