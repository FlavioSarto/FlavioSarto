#Instalando e importando as bibliotecas
library(ggplot2)
library(tidyverse)

#Carregando os dados diamonds
diamantes <- data('diamonds')


#Exerc�cio 1
#Para inspecionar se?as vari�veis est�o com as classes corretas no R:
str(diamonds)

#Verificando o n�mero de linhas e colunas
dim(diamonds)

#Tamanho da base de dados
object.size(diamonds)


#Exerc�cio 2
#Parte inicial dos dados
head(diamonds)

#Parte final dos dados
tail(dia?onds)


#Exerc�cio 3
summary(diamonds)


#Exerc�cio 4
#A sa�da da fun��o summary indica que a vari�vel "color" n�o est� de acordo com a descri��o, devendo ser ajustada conforme c�digo abaixo:
diamonds$color <- factor(diamonds$color, levels=rev(levels(diamo?ds$color)))
str(diamonds)
summary(diamonds)

df <- as.data.frame.table(table(diamonds$color))
ggplot(df, aes(x = Var1, y = Freq)) + geom_bar(stat = "identity") + 
  geom_text(aes(label = Freq), vjust=1.6, color="white", 
            position = position_dod?e(0.9), size=3.5) + labs(x = "Color", y = "Freq")


#Exerc�cio 5
install.packages('skimr')
library(skimr)

if (knitr::is_latex_output()) {
  # pdf output
  skim_without_charts(diamonds$price)
} else {
  skim(diamonds$price)
}

boxplot(diamonds$price, col=c?'darkcyan'))


#Exerc�cio 6
ggplot(data = diamonds) + 
  geom_histogram(aes(price), bins = 20, fill='darkcyan', color ='black') +
  ggtitle("An�lise do pre�o dos diamantes") +
  xlab("Pre�o") +
  ylab("Frequ�ncia") +
  theme_bw()


#Exerc�cio 7
if (knitr::?s_latex_output()) {
  # pdf output
  skim_without_charts(diamonds, - price)
} else {
  skim(diamonds, - price)
}

par(mfrow = c(3,2))

hist(diamonds$carat, col =c('lightblue'))
hist(diamonds$depth, col =c('blue'))
hist(diamonds$table, col =c('darkblue'))
h?st(diamonds$x, col =c('darkcyan'))
hist(diamonds$y, col =c('darkgreen'))
hist(diamonds$z, col =c('lightgreen'))


#Exerc�cio 8
par(mfrow = c(2,3))

boxplot(diamonds$carat)
boxplot(diamonds$depth)
boxplot(diamonds$table)
boxplot(diamonds$x)
boxplot(diamonds?y)
boxplot(diamonds$z)


#Exerc�cio 9
boxplot(price ~ color, data = diamonds, col =c('lightblue'))

boxplot(price ~ cut, data = diamonds, col =c('darkcyan'))

boxplot(price ~ clarity, data = diamonds, col =c('lightgreen'))

