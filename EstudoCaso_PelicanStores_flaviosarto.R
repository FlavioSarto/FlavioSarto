#Leitura do arquivo PelicanStores.csv
dados <- read.csv("https://raw.githubusercontent.com/mahmayer/Mackenzie/main/PelicanStores.csv", 
                  header = TRUE, sep = ",", stringsAsFactors = FALSE,
                  fill = FALSE, dec = ",", fileEncoding = "UTF-8", check.names = FALSE)
head(dados)

#Importando as bibliotecas necessárias
# Instalando pelo github
library(devtools)
devtools::install_github("renkun-ken/formattable", force = TRUE)
library(formattable)
library(tidyverse)
library(dplyr)

#Dicionário de dados
df <- data.frame(
  NomeVariável = c("Cliente", "Tipo de cliente", "Itens", "Vendas líquidas", "Método de pagamento", 
                   "Gênero", "Estado civil", "Idade"),
  Descrição = c("Número do cliente na amostra", "Indica se o cliente comprou usando um cupom de desconto", 
                "Número total de itens comprados pelo cliente", "A quantia total ($) cobrada pelo cartão de crédito", 
                "Forma de pagamento utilizada pelo cliente", "Gênero do cliente (masculino ou feminino)", 
                "Estado civil do cliente", "Idade do cliente"),
  TipoVariável = c("Quantitativa contínua", "Qualitativa", "Quantitativa discreta", "Quantitativa discreta", 
                   "Qualitativa", "Qualitativa", "Qualitativa", "Quantitativa discreta"),
  TipoMensuração = c("Nominal", "Nominal", "Razão", "Razão", "Nominal", "Nominal", "Nominal", "Razão"),
  ValoresPossíveis = c("Número inteiro positivo", "Regular / Promocional", "Número inteiro positivo", 
                       "Número real positivo", "Métodos de pagamentos aceitos pela loja", "Feminino / Masculino", 
                       "Solteiro / Casado", "Número inteiro positivo")
)
df

#Estatística Descritiva
#Variáveis numéricas

#Criando a função para Moda
getmode <- function(x) {
  uniqv <- unique(x)
  uniqv[which.max(tabulate(match(x, uniqv)))]
}

df2 <- data.frame(
  Variáveis = c("Itens", "Vendas líquidas", "Idade"),
  Média = c(mean(dados$Itens), mean(dados$'Vendas líquidas'), mean(dados$Idade)),
  Mediana = c(median(dados$Itens), median(dados$'Vendas líquidas'), median(dados$Idade)),
  DesvPadrao = c(sd(dados$Itens), sd(dados$'Vendas líquidas'), sd(dados$Idade)),
  Variancia = c(var(dados$Itens), var(dados$'Vendas líquidas'), var(dados$Idade)),
  Moda = c(getmode(dados$Itens), getmode(dados$'Vendas líquidas'), getmode(dados$Idade))
)
df2

#Variáveis Categóricas
df3 <- data.frame(
  Variáveis = c("Tipo de clientes", "Método de pagamento", "Gênero", "Estado civil"),
  Moda = c(getmode(dados$'Tipo de Cliente'), getmode(dados$'Método de Pagamento'), getmode(dados$'Gênero'), 
           getmode(dados$'Estado Civil'))
)
df3
