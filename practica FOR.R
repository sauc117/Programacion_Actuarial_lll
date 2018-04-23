for ( i in c("a", "b" , "c")){
  print(i)
}

for ( i in 1:10){
  print(i)
}

#La forma en la trabaja for dentro de r es similar al for each en vba

x <- c("a", "b", "c", "d")
for(i in 1:4){
  print(x[i])
}
#
for(i in seq_along(x)){
  print(x[i])
}
#
for(letra in x){
  print(letra)
}
#
for(i in 1:4)print(x[i])
#
x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
      print(x[i,j])
    }
}
#~~~~~~~~~~~~~~~~~~~~~~WHILE
count <- 0
while(count<10){
  print(count)
  count <- count +1
}
#rbinom
#una sola moneda que tiene un intento y tiene exito o fracaso


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



