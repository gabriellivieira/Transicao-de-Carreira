Algoritmo "AULA 12 - Detector Pesado01"
// Código sem o uso de um procedimento, sem uma rotina para as linhas de
// código que se repete.
Var
I : Inteiro
N, Pesado : Caractere
P, Mai : Real


Inicio

LimpaTela
EscrevaL ("--------------------------------------")
EscrevaL (" D E T E C T O R   DE   P E S A D O ")
EscrevaL (" Maior peso até agora : ", Mai, "Kg ")
EscrevaL ("--------------------------------------")

Para I <- 1 ate 5 faca
    Escreva ("Digite o nome: ")
    Leia (N)
    Escreva ("Digite o peso de ", N, ": ")
    Leia (P)
    Se (P>Mai) entao
        MAI <- P
        Pesado <- N
    Fimse
    LimpaTela
    EscrevaL ("--------------------------------------")
    EscrevaL (" D E T E C T O R   DE   P E S A D O ")
    EscrevaL (" Maior peso até agora : ", Mai, "Kg ")
    EscrevaL ("--------------------------------------")
FimPara
LimpaTela
EscrevaL ("--------------------------------------")
EscrevaL (" D E T E C T O R   DE   P E S A D O ")
EscrevaL (" Maior peso até agora : ", Mai, "Kg ")
EscrevaL ("--------------------------------------")
EscrevaL ("A pessoa mais pesado foi ", Pesado, ",com ", Mai, "quilos.")

Fimalgoritmo