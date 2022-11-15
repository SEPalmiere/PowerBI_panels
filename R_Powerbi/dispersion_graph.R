setwd("C:/Users/Palmiere/Documents/ciencia_dados/R_Powerbi")
getwd()

# carregando o dataset

vendas <- read.csv("Vendas.csv")

library(ggplot2)

qplot(Valor, Custo, data = vendas)
