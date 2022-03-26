#Exercício 1

#Hipóteses
#H0 : µ0 = 15.4kg
#H1 : µ0 ≠ 15.4kg

#Estatística de Teste
#Média da amostra
xbar <- 14.1
#Valor da hipótese
mu0 <- 15.4
#Desvio padrão da população
sigma <- 2
#Tamanho da amostra
n <- 35
#Estatística de teste
z<- (xbar - mu0) / (sigma/sqrt(n))
z

#Teste de Hipótese
alpha <- 0.05
z.half.alpha <- qnorm(1- alpha/2)
c(-z.half.alpha, z.half.alpha)

#Cauda inferior dobrada
pval = 2*pnorm(z)
pval


#Exercício 2

#Hipóteses
#H0 : µ0 = 53MPa
#H1 : µ0 ≠ 53MPa

#Estatística de Teste
#Média da amostra
xbar <- 50
#Valor da hipótese
mu0 <- 53
#Variância
Var <- 16
#Desvio padrão da população
sigma <- sqrt(Var)
#Tamanho da amostra
n <- 15
#Estatística de teste
z <- (xbar - mu0) / (sigma/sqrt(n))
z

#Teste de Hipóteses
alpha <- 0.05
z.half.alpha <- qnorm(1- alpha/2)
c(-z.half.alpha, z.half.alpha)

p <- 2*pnorm(-abs(z))
p


#Exercício 3

#Hipóteses
#H0 : µ0 = 7.4s
#H1 : µ0 < 7.4s

#T de Student

#Estatística de Teste
#Teste unilateral
alpha <- 0.01
amostra <- c(6.8, 7.1, 5.9, 7.5, 6.3, 6.9, 7.2, 7.6, 6.6, 6.3)
#Tamanho da amostra
n <- 10
#Graus de liberdade
df <- 9
#Variância
Var <- 1.3
#Desvio padrão da amostra
S <- sqrt(Var)
#Valor da hipótese
mu0 <- 7.4
#Média da amostra
xbar <- c(mean(amostra))
#Equação para calculo de TC
tc <- qt(alpha/2,df=df)
tc

#Equação para calculo de Teste
Tt <- (sqrt(n)*(xbar - mu0))/S
Tt
