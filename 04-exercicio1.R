# Definindo a pasta de trabalho
setwd("C:/O/caminho/vai/aqui")
getwd()

# carregando dataset
notas <- read.csv("notas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(notas)
tail(notas)


#resumo de tipos de dados e estatísticasdo dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

#  Qual a média de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# Qual turma apresentou maior variabilidade de notas? Justifique sua resposta
sd(notas$TurmaA)#14.4828
sd(notas$TurmaB) #6.184791

#Calcule o coeficiente de variação das 2 turmas.
cvA <- sd(notas$TurmaA) / mean(notas$TurmaA) * 100
print(cvA)
print(sd(notas$TurmaB) / mean(notas$TurmaB) * 100)

#Qual nota apareceu mais vezes em cada turma?
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}
print(moda(notas$TurmaA))
resultB <- moda(notas$TurmaB)
print(resultB)
