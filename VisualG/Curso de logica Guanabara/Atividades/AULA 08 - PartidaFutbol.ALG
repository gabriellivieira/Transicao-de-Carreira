Algoritmo "AULA 08 - Partidade Futbol"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Atividade com o intuiro de treinar a estrutura escolha
// Em uma partida hipotetica entre BANGU e MADUREIRA qual será
// a diferença de gols em uma classificação
Var
   B, M, Def: Inteiro


Inicio
      Escreva ("Quantos gols fez BANGU? ")
      Leia (B)
      Escreva ("Quantos gols fez MADUREIRA? ")
      Leia (M)
      Def <- B - M
      
      Escolha Def
             Caso 0
                  Escreva ("Status: EMPATE")
             Caso 1, 2, 3, 4
                  Escreva ("Status: Partida Normal")
             Outrocaso
                      Escreva ("Status: GOLEADA")
      Fimescolha


Fimalgoritmo

0 - Aconteceu um empate
1, 2, 3, 4 - Partida normal
> 5 - Goleada

Quantos gols do BAMGU?
Quantos gols do MADUREIRA?
