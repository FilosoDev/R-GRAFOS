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


