### Construindo e fazendo operações em Grafos

### Instalando a biblioteca, caso não tenha.
# install.packages("igraph")

### Chamando a biblioteca.
library(igraph)

### Chamando a biblioteca.
library(dplyr)

### Chamando a biblioteca.
library(stringr) 

### Chamando a biblioteca.
library(stringi)

### Instalando a biblioteca, caso não tenha.
# install.packages("janitor")
library(janitor)

### Carregar Arquivo Rpnet.
lista_usuario <- read.csv2("s2.rpnet", sep = ',')

### Montar o grafo e calcular as propriedades.
lista_usuario
semanareply <- graph.data.frame(lista_usuario, directed=TRUE)

## Salvar o Grafo.
saveRDS(semanareply, "grafo_semana1.rds")

## Cálculo de grau de entrada de cada vértice.
## Quantas vezes alguém respondeu.
## Quantas arestas chegou.
graus_entradas <- data.frame(grau_entrada <-  degree(semanareply, mode = "in") ) 
graus_entradas

## Cálculo do grau de saida de cada vértice.
## Quantas vezes respondeu.
## Quantas vezes saiu.
graus_saida <- data.frame(grau_saida <-  degree(semanareply, mode = "out") ) 
graus_saida

## Cálculo da Centralidade (Betwennes). 
## Quanto o grafo está centralizado. 
## Qual o caminho mais curto para se chegar e sua reincidência.
## Quanto mais passa por ele, mais é central.
## Criadores de bolhas??
graus_centralidade <- data.frame(grau_centralidade <-  betweenness(semanareply))
graus_centralidade


## Cálculo pagerank - relevância do vértice.
grau_pagerank1 <-page_rank(semanareply)$vector
lista_pagerank <- data.frame(grau_pagerank1)
lista_pagerank

## Cálculo do Grau_total.
graus_total<- data.frame(grau_total <-  degree(semanareply, mode = "total") ) 
graus_total

