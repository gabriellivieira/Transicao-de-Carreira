Algoritmo "AULA 10 - Super Contador"
// Super contador onde clicando em:
// 1 - contar de 1 a 10
// 2 - contar de 11 a 20
// 3 - Sair


Var
   cont, Scont, N : inteiro


Inicio
      cont <- 0
      Scont <- 10
      
      Repita
            Escreva (" Escolha uma opção de contagem: [1/2/3]")
            Leia (N)
            
            Se (N = 1) entao
                 Repita
                  Escreva (cont)
                  cont <- cont + 1
            Ate (cont > 10)
            Fimse
            
            Se (N = 2) entao
                 Repita
                  Escreva (Scont)
                  Scont <- Scont + 1
            Ate (Scont > 20)
            Fimse
            
      Ate (N = 3)
          Escreva ("Fim da contagem")
      


Fimalgoritmo