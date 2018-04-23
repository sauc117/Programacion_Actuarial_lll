setwd("~/GitHub/SoftwareActuarial3")

#Extraccion de valores faltantes
airquality[1:6,]
completos <- complete.cases(airquality)
data <- airquality[completos,]
data[1:6,]

#al hacer una extraccion obtengo solo los vaores que son true

#algunas operaciones

x <- 1:4; y <- 6:9
#dos instrucciones en la misma linea xD
x+y
x>2
x>y
y>x
y==8
x*y
x*1
y*1
y/x



x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y

x%%y
x;y;x%*%y
y%*%x
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

#                      ESTRCUTURAS DE CONTROL
#if, else
#for ejecuta un ciclo
#while 
#repeat  EJECUTA UN CICLO INFINITO
#break    TERMINA LA EJECUCION DE UN CICLO
#next     "SALTA" UNA ITERACION DE UN CICLO
#return  "SALE DE LA F
        
x=3
if (x>5)
{
"x es mayor a 5"  
}else{
"x es menor a 5"
}


x = 7
if(x<5){
  print("menor que 5")
}else if(x <- 10){
    print("entre 5 y 10")
  
}else{
  print("mayor a 10")
}

##########3
x=6
if(x>3){
  y <- 10
}else{
  y <- 0
}
y
###########333
y <- if(x>3){
  10
}else{
  0
}
y