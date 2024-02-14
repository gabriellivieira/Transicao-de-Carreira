Algoritmo "AULA 10 - Seletor de Pessoas"
// Criar um cadastro de pessoas onde será informado o sexo (M/F), a idade e
// a cor do cabelo e contar quantos homens de cabelo castanho foram cadastrados
// e quando forem mulheres de cabelo loiro.



Var
   contM, contF, idade, cabelo : inteiro
   sexo, resp: caractere


Inicio
   contM <- 0
   contF <- 0
   Repita

      EscrevaL ("Qual o seu sexo? [M/F]")
      Leia (sexo)
      EscrevaL ("Qual sua idade?")
      Leia (idade)
      EscrevaL ("Qual a cor do seu cabelo? [1-Preto/2-Castanho/3-Loiro/4-Ruivo]")
      Leia (cabelo)

      Se ( sexo = "M") e (cabelo = 2) entao
         contM <- contM + 1
      Fimse

      Se ( sexo = "F") e (cabelo = 3) entao
         contF <- contF + 1
      Fimse

      Escreva ("Deseja continuar? [S/N]")
      Leia (resp)

   Ate (resp = "N" )
   EscrevaL ("Total de mulheres com cabelo loiro é ", contF)
   EscrevaL ("Total de homens com cabelo castanho é", contM)

Fimalgoritmo