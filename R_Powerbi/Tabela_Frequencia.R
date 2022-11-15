# Estatistica Basica


# Tabelas de Frequencia

setwd("C:/Users/Palmiere/Documents/ciencia_dados/R_Powerbi")
getwd()

dados <- read.table("Usuarios.csv",
                    dec =".",
                    sep = ",",
                    h = T,
                    encoding = "windows-1252")



# Visualizando e sumarizando os dados

View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)

# Tabela de Frequencias Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequencias Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)


# Adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# Tabela final com todos os valores

freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Tebela final com todos os vetores

tabela_final <- cbind(freq, 
                       freq_rel = round(freq_rel, digits = 2),
                       p_freq_rel = round(p_freq_rel, digits = 2))

View(tabela_final)
