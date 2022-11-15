# Definir pasta de trabalho

setwd("C:/Users/Palmiere/Documents/ciencia_dados/R_Powerbi")
getwd()

# carregando o dataset

vendas <- read.csv("Vendas.csv")

# Resumo do dataset

View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)


# Resumo dos dados
head(vendas$Valor)
tail(vendas$Valor)


# Explorando variaveis numericas

mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor)    
summary(vendas$Valor)
diff(range(vendas$Valor))
