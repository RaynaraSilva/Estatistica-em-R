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

# Média
?mean # documentação da função
mean(vendas$Valor)
mean(vendas$Custo)

# Média Ponderada
weighted.mean(vendas$Valor, vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda - função
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Moda
result <- moda(vendas$Valor)
print(result)
print(moda(vendas$Custo))

# criando gráfico de média de valor por estado com o ggplot2
install.packages("ggplot2")
library(ggplot2)

#criando o gráfico
# + para concatenar a camada de dados com a camada de sumário estatístico (gramática dos gráficos)
ggplot(vendas) + 
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "Média de valor por estado")
