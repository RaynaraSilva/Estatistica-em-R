# Definindo a pasta de trabalho
setwd("C:/O/caminho/vai/aqui")
getwd()

# carregando dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Variância
var(vendas$Valor)

# Desvio padrão
sd(vendas$Valor)

#