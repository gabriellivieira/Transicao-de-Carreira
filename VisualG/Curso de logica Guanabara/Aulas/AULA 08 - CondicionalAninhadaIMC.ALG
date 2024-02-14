Algoritmo "Aula 08 - IMC com condicional aninhada"

Var
   peso, altura, IMC : real

Inicio
       Escreva ("Informe o seu peso: ")
       Leia (peso)
       Escreva ("Informe sua altura: ")
       Leia (altura)
       IMC <- peso / (altura ^ 2)
       EscrevaL (" Seu IMC é de ", IMC:5:2)
       
       Se (IMC < 18) entao
          EscrevaL ("Você esta abaixo do peso normal.")
       Senao
            Se (IMC >= 18.5) e (IMC < 24.9) entao
               EscrevaL (" Você esta com peso normal")
            Senao
                 Se (IMC >= 25) e (IMC < 29.9) entao
                    EscrevaL ("Você esta com sobrepeso")
                 Senao
                      Se (IMC >= 30) e (IMC < 34.9) entao
                         EscrevaL ("Você esta com obesidade grau I")
                      Senao
                           Se (IMC >= 35) e (IMC < 39.9) entao
                              EscrevaL ("Você esta com obesidade grau II")
                           Senao
                                EscrevaL ("Você esta com obesidade grau III")
                           Fimse
                      Fimse
                 Fimse
            Fimse
       Fimse
       

Fimalgoritmo
