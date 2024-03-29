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

# M�dia
?mean # documenta��o da fun��o
mean(vendas$Valor)
mean(vendas$Custo)

# M�dia Ponderada
weighted.mean(vendas$Valor, vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda - fun��o
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Moda
result <- moda(vendas$Valor)
print(result)
print(moda(vendas$Custo))

# criando gr�fico de m�dia de valor por estado com o ggplot2
install.packages("ggplot2")
library(ggplot2)

#criando o gr�fico
# + para concatenar a camada de dados com a camada de sum�rio estat�stico (gram�tica dos gr�ficos)
ggplot(vendas) + 
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "M�dia de valor por estado")
