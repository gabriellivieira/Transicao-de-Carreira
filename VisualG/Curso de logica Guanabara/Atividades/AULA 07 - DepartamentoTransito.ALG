Algoritmo "AULA 07 - DepartamentoTransito"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Verificar se a pessoa esta ou não apta a dirigir.
Var
ano, ano_nasc, result: inteiro

Inicio
      Escreva ("Informe o ano atual: ")
      Leia (ano)
      Escreva ("Informe o ano do seu nascimento: ")
      Leia (ano_nasc)
      result <- ano - ano_nasc

      Se (result > 18) entao
         Escreva ("Você está apto para dirigir.")
      Senao
           Escreva ("Você não está apto para dirigir.")
      FimSe

Fimalgoritmo