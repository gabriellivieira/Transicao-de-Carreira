Algoritmo "AULA 08 - Condicional Escolha "
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Com a estrutura condicional Escolha, será feito o calculo de aumento
// de salario que cada funcionario terá por dependente
Var
   nome : caracter
   sal, Nsal : real
   Ndep : inteiro

Inicio
      Escreva ("Qual o nome do funcionário? ")
      Leia (nome)
      Escreva ("Qual o salario do funcionário? ")
      Leia (sal)
      Escreva ("Quantos dependes o funcionario possui? ")
      Leia (Ndep)
      
      Escolha Ndep
              Caso 0
                   Nsal <- sal + (sal * 5/100)
              Caso 1, 2, 3
                   Nsal <- sal + (sal * 10/100)
              Caso 4, 5, 6
                   Nsal <- sal + (sal * 15/100)
              Outrocaso
                   Nsal <- sal + (sal * 18/100)
      Fimescolha
      
      EscrevaL ("O salario do ", nome, " será de R$", Nsal:5:2)


Fimalgoritmo