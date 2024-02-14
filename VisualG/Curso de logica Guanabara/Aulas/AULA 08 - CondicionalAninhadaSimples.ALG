Algoritmo "AULA 08 - Condicional aninhada simples"
// Complementando atividade da aula 07 com a estrutura aninhada simples para dizer
// também se o aluno esta de recuperação.

Var
   nota01, nota02, result : real

Inicio
   Escreva ("Informe a primeira nota: ")
   Leia (nota01)
   Escreva ("Informe a segunda nota: ")
   Leia (nota02)
   result <- (nota01 + nota02) / 2
   
   Se (result >= 7) entao
      Escreva ("Você esta aprovado com a nota", result)
   Senao
        Se (result >= 5) e  (result < 7) entao
           Escreva ("Você esta em recuperação com a nota", result)
        Senao
             Escreva ("Você esta reprovado com a nota", result)
        Fimse
   FimSe


Fimalgoritmo