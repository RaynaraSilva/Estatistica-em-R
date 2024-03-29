# Definindo a pasta de trabalho
setwd("C:/O/caminho/vai/aqui")
getwd()

# carregando dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de de tend�ncia central
summary(vendas$Valor) # a tabela inteira
summary(vendas[c('Valor', 'Custo')]) # filtro por coluna
# c = fun��o que cria um vetor

# Explorando vari�veis num�ricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor)# diferen�a entre Q3 e Q1
range(vendas$Valor) # retorna o valor m�nimo e m�ximo
summary(vendas$Valor)
diff(range(vendas$Valor))
