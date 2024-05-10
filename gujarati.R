# NOTAS DE ESTUDOS SOBRE REGRESSÃO LINEAR -  5° semestre 2024 - UFSM

#devtools::install_github('https://github.com/brunoruas2/gujarati')
library(gujarati)
library(tidyverse)
library(gtools)

d1<-Table1_1
glimpse(d1)
View(d1)

d1<-data.frame(d1)
d1$Y1 <- as.numeric(as.character(d1$Y1))
d1$Y2 <- as.numeric(as.character(d1$Y2))
d1$X1 <- as.numeric(as.character(d1$X1))
d1$X2 <- as.numeric(as.character(d1$X2))

plot(d1$Y1, d1$X1)

# d2 Y1 e X1
d2 <- d1 |> 
  select(Y1, X1)

#d2 <- d2 |> 
#  mutate(id = row_number())
# d3 Y2 e X2
d3 <- d1 |> 
  select(Y2, X2)

#d3 <- d3 |> 
#  mutate(id = row_number())

d3 <- d3 %>%
  rename(X1 = X2,
         Y1 = Y2)

d4<-bind_rows(d2,d3)


plot(d4$Y1,d4$X1)

