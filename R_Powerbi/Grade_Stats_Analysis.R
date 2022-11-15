# Configurandopasta de trabalho

setwd("C:/Users/Palmiere/Documents/ciencia_dados/R_Powerbi")
getwd()

# carregando o dataset

notas <- read.csv("Notas.csv")

# Resumo de tipos de dados e estatisticas

summary(notas)
View(notas)
str(notas)


# Media das turmas

mean(notas$TurmaA)
mean(notas$TurmaB)

# Media ponderada
weighted.mean(notas$TurmaA)
weighted.mean(notas$TurmaB)

# Variabilidade de nota por turma
# Variancia

sd(notas$TurmaA)
sd(notas$TurmaB)

# Coeficiente de variação das duas turmas

media_TA <- mean(notas$TurmaA)
media_TB <- mean(notas$TurmaB)


sd_TA <- sd(notas$TurmaA)
sd_TB <- sd(notas$TurmaB)

CVA <- sd_TA/ media_TA * 100
CVB <- sd_TB/ media_TB * 100

CVA
CVB




# Calculando a Moda

Moda <- function(v) {
  UnicoV <- unique(v)
  UnicoV[which.max(tabulate(match(v, UnicoV)))]
}



Moda(notas$TurmaA)
Moda(notas$TurmaB)

