 #DUMP Y SOURCE

setwd("~/GitHub/SoftwareActuarial3")
x <- "Software Actuarial 3"
y <- data.frame(a =1, b = "a")
dump(c("x","y"),file = "data")
rm(x,y)
source("data.R")

#Dump y source trabajan con las instrucciones de codigo que permitiran volver a contruir el objeto en lugar de obtenerlo  desde lguna ubicacion guardada.



#CONEXIONES
con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con,7)
x
x[7] <- "\t<title>FCFM: chavaaaa </title> "
writeLines(x,"FCFM.html")

#[]regresar objeto con la misma clase
#[[]]extraer objeto de una lisa o data frame y poder cambiarlo


#Creamos un vector
x <- c("a", "b", "c","c", "d" , "e")
x
#Extraemos elemntos con []
x[1]
x[2]
#secuencia de elemntos
x[1:4]
#es posible extraer elemntos que cumplen con una restriccion
x[x >"b"]
#de manera equivalente se puede obetner un vector logico
u <- x=="c"
u
x[u]
x[5-3]

#Creamos lista
x <- list(foo=1:4,bar=0.6)
x
x[1]
x[[1]]

x$foo
#el resultado fue como un vector con doble corchete
x["bar"]
x[["bar"]]


x <- list(foo=1:4,bar=0.6, baz="hola")
x[c(1,3)]
#Extrae elemntos no secuenciales
x[[c(1,3)]]
#extrae secuencialmente desde los elemtnos extraidos primero extrae el primer elemntos y de ahi extrae la 3ra pocision

name <- "baz"
x[name]
x[[name]]
x$name
#si yo quiero realizar extracciones con el simbolo de pesos es neceario escribir el nombre del objeto que quiero extraer ya que no es capaz de realizar evaluaciones


x <- matrix(1:6,2,3)
x

x[1,2,drop = F]
x[1,]

x <- list(asddsa= 1:5)
x$a
x[["a"]]
# $ objetos que ya tienen nombre

