#Aqui se esta realizando una asignasion
x <- 1
x <- 2

#ctrl r --- limpiar
print(x)
#La asiganasion no me permitio visualizar el resultado para ellos debo solicitar una impresion


print(x) #Tener cuidado cuando es con mayusculas o minusculas
print(x)

#La asignasion puede hacerce tambien de textos
msg <- "Hola"
print(msg)
x <- #Expresion incompleta
3
#Trabajo de arreglos o impresion de un arreglo

x <- 1:20 
print(x)
y <- 3:9
y
z <- 99:43
z
#El opderadpr":" me permite generar secuencias numericas de un principio a un fin

w <- 3:14.5
w
#En el caso  de trabajr con decimales me genera secuencias hasta los enteros
x
z
#Caracter_letra(character)
#Numero real - numeros que se puede obtener por medio de una raiz cuadrada(numeric)
#enteros-(integer)
#Numeros complejos(complex)
#Booleanos(logical)
perro <- hola4556
perro <- 3 "hola"
perro <- 1l
e <- 1L


#R nos permite trabajar con conceptos matematicos  "superiores" como los numeros complejos o el concepto de infinito 
Inf
1/0
#Es posible realizar algunas operaciones con este valor
exp(-Inf) #0
Inf + Inf #inf

attributes(z)


#Es posible creas un vector con la funcion c()
x <- c(TRUE, FALSE, T, T)                        #logical
x <- c(1L, 3L ,5L ,-4L)                         #integer
x <- c(1, 3, 5, 6, 7)                          #numeric
x <- c(1 + 2i , 2+5i)                         #Complejos
x <- c( "holaaa" , "nel")                    #Caracter

#otro possible camino seria con la funcion vector

x <- vector ("numeric", length = 10)
x
#el vector se crea vacio



                          #COERICION

y <- c(1.7, "a2")                                 #"caracter"
#numero se puede convertir en caracter

y <- c( T,2L, 2)                                  # numeric
y
y <- c(F, 2L ,  5 , 5 +4i)                        #Complex

y
                        #COERCION FORZADA
x <- 0:6                                            #integer
as.numeric(x)                                       #numeric
as.logical(x)                                       #logical
as.character(x)                                     # character


                        #ERRORES EN LA COECION FORZADA
x <- c("hola")
as.numeric(x)
#genera na porque esa coercion no es posibe y genera un valor vacio
