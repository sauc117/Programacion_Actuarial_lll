#LISTAS
x <- list(1, "a", TRUE, 3+2i, 5L, 1:50)
x
#todos los elementos de la listaa mantienen la clase que originalmente se les da

# MATRICES
m <- matrix(nrow=2, ncol=3)
m <- matrix(NA, 2,3)
m
dim(m)
attributes(m)


#COMO LLENAR UNA MATRIX
m <- matrix(data=1:6, nrow=2, ncol=3)
m <- matrix(1:6, 2, 3)
m

#LA MANERA AUTOMATICA DE LLENARSE FUE COLUMNA POR COLUMNA
#SI YO QUISIERA QUE SE LLENARA FILA POR FILA, SERIA:
m <- matrix(data = 1:6,nrow=2, ncol=3, byrow = TRUE)
m <- matrix(1:6, 2, 3, T)
m

#UNA MANERA ALTERNATIVA DE CREAR UNA MATRIX ES DE CREAS UN VECTOR Y DE CAMBIAR SU DIMENSION
m <- 1:10
m
dim(m) <- c(2,5)
m


#OTRA FORMA DE CREAS UNA MATRIX ES UNIENDO DIFERENTES VECTORES
x <- 1:3
y <- 10:12
# CBIND, UNIR COLUMNAS
cbind(x,y)
rbind(x,y)


#FACORES
x <- factor(c("si", "si", "no","no", "si" ))
x


x <- factor(c("azul", "verde" , "verde", "azul" , "rojo"))
x

table(x)
unclass(x)

x <- factor(c("azul", "verde" , "verde", "azul" , "rojo"), levels = c ("rojo" , "amarillo", "verde" , "azul"))
x
unclass(x)


#VALORES FALTANTES
x <- c(1,2,NA,10,3)
is.na(x)   #VALOR FALTANTE DETECTADO
is.nan(x)  #TODO VALOR FALNTANTE ES NAN PERO NO TODO NA ES VALOR FALTANTE

y <- c(1,2,NaN,10,3)
is.na(y)   #VALOR FALTANTE DETECTADO
is.nan(y)  #TODO VALOR FALNTANTE ES NAN PERO NO TODO NA ES VALOR FALTANTE


x <- data.frame(foo= 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)



x <- 1:3
names(x)
names(x) <- c("sa", "uc" , "117")
x
names(x)

x <- list(a = 1, b=2 , perro = 3)
x


m <- matrix(1:4, 2,2)
m
dimnames(m) <- list(c("a","b"),c("c","d"))
m
