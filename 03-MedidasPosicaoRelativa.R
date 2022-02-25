# Definindo a pasta de trabalho
setwd("C:/O/caminho/vai/aqui")
getwd()

# carregando dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de de tendência central
summary(vendas$Valor) # a tabela inteira
summary(vendas[c('Valor', 'Custo')]) # filtro por coluna
# c = função que cria um vetor

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor)# diferença entre Q3 e Q1
range(vendas$Valor) # retorna o valor mínimo e máximo
summary(vendas$Valor)
diff(range(vendas$Valor))
