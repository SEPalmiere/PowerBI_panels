# Definir pasta de trabalho

setwd("C:/Users/Palmiere/Documents/ciencia_dados/R_Powerbi")
getwd()

# carregando o dataset

vendas <- read.csv("Vendas.csv")
vendas2 <- read.csv("Vendas.csv", encoding = "windows*1252")
                   
                   
# Resumo do dataset

View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Media
?mean

mean(vendas$Valor)
mean((vendas$Custo))

# Media Ponderada
?weighted.mean

weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana
median(vendas$Valor)
median(vendas$Custo)
