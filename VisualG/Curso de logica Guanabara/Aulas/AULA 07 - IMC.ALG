Algoritmo "Aula 07 - IMC"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/07/2023
Var
   peso, altura, IMC : real

Inicio
       Escreva ("Informe o seu peso: ")
       Leia (peso)
       Escreva ("Informe sua altura: ")
       Leia (altura)
       IMC <- peso / (altura ^ 2)
       EscrevaL (" Seu IMC é de ", IMC:5:2)
       
       Se (IMC > 18.5) e (IMC < 24) então
          EscrevaL ("Você esta com o peso ideal.")
       Senao
            EscrevaL (" Você não esta com o peso ideal")
       Fimse
       

Fimalgoritmo
