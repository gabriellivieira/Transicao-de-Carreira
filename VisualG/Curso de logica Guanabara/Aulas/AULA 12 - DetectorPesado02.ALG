Algoritmo "AULA 12 - Detector Pesado01"
// Código sem o uso de um procedimento, sem uma rotina para as linhas de
// código que se repete.
Var
I : Inteiro
N, Pesado : Caractere
P, Mai : Real

Procedimento Topo ()
Inicio
LimpaTela
EscrevaL ("--------------------------------------")
EscrevaL (" D E T E C T O R   DE   P E S A D O ")
EscrevaL (" Maior peso até agora : ", Mai, "Kg ")
EscrevaL ("--------------------------------------")
Fimprocedimento

Inicio
Topo ()
Para I <- 1 ate 5 faca
    Escreva ("Digite o nome: ")
    Leia (N)
    Escreva ("Digite o peso de ", N, ": ")
    Leia (P)
    Se (P>Mai) entao
        MAI <- P
        Pesado <- N
    Fimse
    Topo ()
FimPara
Topo ()
EscrevaL ("A pessoa mais pesado foi ", Pesado, ",com ", Mai, " quilos.")

Fimalgoritmo