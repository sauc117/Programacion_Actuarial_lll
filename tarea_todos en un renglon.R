set.seed(1)
z <- 5
contador <- 0
suma <- 0
x <- c(z)
while(z >=3 && z<=10 ){
  x[contador+1] <- z
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
  contador <- contador +1
}
print(contador)
x[contador+1]<- z
x
