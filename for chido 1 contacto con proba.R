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



set.seed(1)


ana <- 0 #salida por 11
gato <- 0 #salida por 2
perro <- 0 
  for (i in 1:100) {
z <- 6.5
contador <- 0
suma <- 0
  while(z >=3 && z<=10 ){
  moneda <- rbinom(1,1,0.5)
  
  if(moneda==1){ #Caminata aleatoria
    z <- z + 0.5
  } else {
    z <- z - 0.5
  }
}
if(z <= 3 ){ #Caminata aleatoria
  gato <- gato + 1
} else {
  ana <- ana + 1
}
 perro <- perro +1
  }

gato
ana
paste("En" , perro,"intentos, se escapa",gato,"por abajo y ", ana, "por arriba")
paste("la probabilidad de salir por abajo es", gato/perro)
paste("la probabilidad de salir por arriba es", ana/perro)


