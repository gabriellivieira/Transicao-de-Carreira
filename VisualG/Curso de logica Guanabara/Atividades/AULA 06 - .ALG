Algoritmo "Creuza"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Criando o primiero algorito para descobrir quanto Creuza vai
// pagar de juros sobre cada parcela feita.

Var
   emprestimo, parcela, juros, valor_parc, valor_total: Real

Inicio

   Escreva ("Qual o valor do emprestimo? ")
   Leia (emprestimo)
   Escreva ("Quantas parcelas? ")
   Leia (parcela)
   juros <- emprestimo * 20 /100
   valor_parc <- (emprestimo + juros) / parcela
   Escreva ("Vou pagar em cada parcela ", valor_parc:5:2)
   valor_total <- valor_parc * parcela
   Escreva (" Valor total pago é de R$ ", valor_total:5:2)
   
Fimalgoritmo