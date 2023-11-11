<aside>
💡 Consulte também as anotações em - [**Estatistica**](https://www.notion.so/Estat-stica-6b49a9b2d9314263a0fe55f09718d943?pvs=21)

</aside>

> Estatística está relacionado com a coleta, apresentação e análise dos dados, no qual respondemos perguntas estatísticas com os dados que precisam ter variança.


**Pictográfico** - Apresentam os dados com figuras, onde cada desenho pode representar um número/quantidade de indivíduos ou dados.

- **Distribuição Marginal**: Para identificar, basta olhar no ponto Y do gráfico, no qual ela pode ser representada por % ou contagem (dados na vertical ou horizontal).
- **Distribuição condicional:** É uma distribuição de probabilidade, onde quando um valor determinado é conhecido. Representado em %.
    
    Calcular a distribuição da % correta, ou seja, a % de acertos da prova que os alunos que estudam entre 41 e 61 minutos.
    
    Para resolver deve ser olhado a condição (alunos que estudaram entre 41e 61 min) deve ser calculado cada intervalo.
    
- **Amplitude dos Dados:** A distância entre o menor e maior valor (a diferença).
- **Amplitude média:** mostra a tendência central. Fazemos uma média do maior e menor número.
- **Faixa Interquartil:** Descreve o 50% central dos valores quando ordenados de forma crescente. Calculado a partir da média de cada lado da mediana, procurando o valor do meio ou a média quando a quantidade for par.
- **Desvio absoluto médio (DAM):** É distância média entre cada valor e a média. E ela descreve variações no conjunto de dados, ajudando a entender como foram distribuídos.
    
    Onde: X1 é o número,  o segundo X é a média e N é a quantidade de números.
    
- **Descobrir um número faltante no conjunto a partir da média.**
    - Média x Número de participantes
    - Soma os números existentes e subtraia o resultado pelo resultado da multiplicação.
- **Percentil:** Formas de se ver o percentil

### Tipos de Média

A média intica uma tendência central.

- Média aritmética: quando a soma de uma determinada quantidade de números é dividida pela qtd.
- Mediana: Número do meio.
- Moda: Número mais comum, que mais se repete.

### Outliers

1) Outlier baixo: Q1 - 1,5 . IIQ

2) Outilier alto: Q3 + 1,5 . IIQ

EX: Encontre o outlier baixo e alto do conjunto abaixo. 

## 1, 1, 6, 13, 13, 14, 14, 14, 15, 15, 16, 18, 18, 18, 19

                 **Q1**                      **Mediana                        Q3**    

IIQ = 18 - 13 = 5

**1)** 13 - 1,5 . 5 = 5,5 

Aqui sabemos que os outliers serão todos os números menores que 5.5

**2)** 18 + 1,5 . 5 = 25,5

Aqui sabemos que os outliers serão todos os números maiores que 25.5

### Indice Z

Quantos desvios padrões ( **σ - sigma**) estamos distantes da média ( **μ - mi**).

> Para calcular pegamos:  (valor - μ) / σ
> 
> 
> EX: Em uma distribuição normal com **μ = 81** e **σ = 6,3** calcule  o Indice Z para o número 83. 
> 
> (83 - 81) / 6,3 = 2 / 6,3 = 0,32
> 

Assim a tabela de proporção Z mostra a proporção que esta abaixo de um valor Z. 

Para encontrar um valor a partir da tabela Z com base em uma %, fazemos o calculo contrarioao indice Z. 

**μ + Z .  σ**

### Distribuição Normal

É uma das distribuições, mas usadas, no qual se usa variáveis quantitativas.

Surgiu com estudos usando grande quantidade de dados, onde em amostras muito grandes se percebeu que os dados seguiam tendências parecidas, com uma curva de sino (Distribuição de Gauss).

Quando falamos em distribuições, é importante identificar o tipo de distribuição para conseguir escolher o tipo de teste mais adequados.

Temos então:

- Na distribuição normal padrão a μ = 0 e σ = 1.
- Possui formato de sino simétrico
- Média e mediana são iguais
- 68% dos dados estão dentro de 1 desvio padrão.

**Regra empírica da distribuição normal**

![Untitled](https://github.com/gabriellivieira/Bootcamp_data_science/assets/112736236/2b0e560b-a7b5-4a63-b8c5-56a8f1b00184)

A tabela normal padrão de uma proporção, ostra a proporção de uma distribuição normal, no qual para encontrar o valor deve ser calculado o valor Z e encontrar na Tabela de proporção o resultado. 

**Calculos gerais para utilizar na distribuição normal** 

- Area de um trapésio
    - B = Altura 1
    - b = Altura 2
    - h = base

![Untitled (1)](https://github.com/gabriellivieira/Career_Transition/assets/112736236/43e9fddd-c365-4805-af44-fd8d229d262a)


- Area Triangulo, retangulo, quadrado
    - ( b . h )/ 2

### Coefiente de correlação ( **r** )

Fatos sobre r :

- Sempre vai estar entre -1 e 1;
- Relação linear positiva dorte possui valor r mais próximo de 1;
- Relação linear negativa forte possui valor r mais próximo de -1.
- Relaciomanetos mais fracos tem valor de r mais próximo de 0.
- **Visão ilustrativa**
    
    ![Untitled (2)](https://github.com/gabriellivieira/Career_Transition/assets/112736236/0adf73a5-995a-480e-b642-31c01bcf0f60)
   

### Regressão Linear

Se tenta traçar uma reta de forma a minimizar as distancias. 

**Residual**

O residual mensura a melhor forma da reta traçar os dados no diagrama de dispersão.

Ele é a diferença entre o valor real do ponto com o valor estimado pela reta (onde a reta passa), no qual valores abaixo da reta são negativos e acima são positivos.
- Para calcular o residual utilizamos o valor estimado da reta, dado por ^y .
    
    EX:
    
    Dado o valor estimado da reta de: ^y =   1  +  1  x
    
                                                                       3      3
    
    Qual o residual de clientes com altura de 155cm que alugam uma bike com 51cm de quadro? 
    
    Calculo:
    
    ^y =  1   +   1   . 155     →    +   155    →   156   = 52
    
              3        3                      3            3               3
    
    Residual =  51 - 52 =  -1
    
    Real 51  e estimado 52
    
    A conclusão  é que a relação linear entre a altura do cliente de 155cm e um quadro de 51cm é negativa em -1 com relaçao a reta. 
    

Para encontrar a equação que define a reta ^y com relação a um conjunto de dados, seguimos com:

x ¯  : Média de X

Sx  : Desvio padrão de X

y¯  : Média de Y

Sy  : Desvio padrão de Y

Sendo assim a equação para construção de uma linha é:

### ^y = m . x + b

Onde:

m : É a inclinação da reta

b : É onde y intercepta x no centro da reta.

Para encontrar a inclinação “m” usamos a fórmula:

### m = r . (Sy / Sx)

E para calcular o b, é importante já conhecer a inclinação. Usamos então: 

### b = y¯ - m . x ¯

Utilizando os resíduos, podemos determinar se uma regressão linear é uma boa forma de representar os dados ou não, basta colocá-los em um gráfico (plotar os resíduos no plano cartesiano).

Onde ao verificar que os resíduos ficam de forma aleatória no gráfico, sem forma um padrão, podemos afirmar que a regressão linear é uma boa forma de representação dos dados.

Porem, caso seja possível traçar uma reta ou verificar um padrão nos resíduos plotados, poderemos afirmar que a regressão linear não é um bom modelo para representar os dados e será necessário escolher outro tipo de regressão.

Dentro desse assunto, temos também o R², que mede quanto do erro de previsão é eliminado quando usamos a regressão linear de mínimos quadrados em %, assim ele também é chamado de Coeficiente de Determinação.

![Untitled (3)](https://github.com/gabriellivieira/Career_Transition/assets/112736236/7485552b-8475-4b05-8c53-094d076b9e2f)

## Probabilidade

A probabilidade simplesmente determina qual é a chance de algo acontecer.

**Probabilidade de um evento = (nº de maneiras possíveis de ele acontecer) / (número total de resultados)**

**Dicas**

- A probabilidade de um evento só pode estar entre 0 e 1 e pode ser escrita, também, como um percentual.
- A probabilidade do evento \[ A \] é muitas vezes escrita como \[ P(A) \].
- Se \[ P(A) > P(B) \] então o evento \[ A \] tem uma maior chance de ocorrer que o evento \[ B \].
- Se \[ P(A) = P(B) \], então os eventos \[ A \] e \[ B \] têm chances iguais de acontecer.

