Algoritmo "AULA 10 - Estrutura Repita "
// Utilizando a estutura de repeti��o Repita para fazer um somador
Var
     S, N : inteiro
     resp : caractere

Inicio
     S <- 0
     Repita
           EscrevaL ("Informe um valor: ")
           Leia (N)
           S <- S + N
           Escreva ("Voc� quer continuar? [S/N]")
           Leia (resp)
     Ate (resp = "N")
     EscrevaL ("A soma de todos os valores � de", S)

Fimalgoritmo