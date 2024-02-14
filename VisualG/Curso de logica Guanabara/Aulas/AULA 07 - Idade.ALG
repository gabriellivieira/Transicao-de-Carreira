Algoritmo "Condicional"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Aprendendo a utilizar a estrutura condicional, com o SE (if)
// e com o Senao(else)

Var
   ano_atual, ano_nasc, idade: Inteiro

Inicio
      Escreva ("Qual o ano atual? ")
      Leia (ano_atual)
      Escreva ("Ano do seu nascimento? ")
      Leia (ano_nasc)
      idade <- ano_atual - ano_nasc
      Escreva ("Em ", ano_atual, " você terá ", idade, " anos.")
      Se (idade >= 21) entao
         Escreva ("Você já é maior de idade")
      Senao
         Escreva ("Você é de menor")
      FimSe

Fimalgoritmo