setwd("C:/Users/Salvador Uribe/Desktop/PROGRA3")
lectura <- read.csv("outcome-of-care-measures.csv")

rankhospital <- function(estado, resultado,num="best" ){
    
    
    lectura <- read.csv("outcome-of-care-measures.csv")
#
    if(!is.element(estado,lectura[,7])){
        stop("Estado inválido")
    }
#
    if(resultado == "ataque"){
        resultado <- 11
    }else if(resultado =="falla") {
        resultado <- 17
    } else if (resultado == "neumonia"){
        resultado <- 23
    } else {
        stop("Resultado inválido")
    }
#
    if(num != "best" & num < 0){
        stop("debe de ser mayor a 0 o best")
    }

#
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
    tab1<-subset(tab,nt$State==estado)
    
    
#
    if(num=="best" || num == 1){
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
    tab1<-subset(tab,nt$State==estado)
    mayor <- min(tab1[,3])
    #
    estados <-subset(tab1,tmort ==mayor )
    x <- sort(estados[,1])
    resultado <- as.character(x[1])
    }
#
    if(num=="peor"){
        nt<-subset(lectura,lectura[,resultado]!="Not Available")
        tmort<-as.numeric(as.character(nt[,resultado]))
        tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
        tab1<-subset(tab,nt$State==estado)
        menor <- max(tab1[,3])
        #
        estados <-subset(tab1,tmort ==menor )
        x <- sort(estados[,1])
        resultado <- as.character(x[1])
    } else{
        if (nrow(tab1)<num) {
            resultado<-NA
        }else{
            
            #ordenamos las tasas de mortalidad de menor a mayor para extraer la tasa de la
            #posición que elegimos
            ordenados<-sort(as.numeric(as.vector(tab1[,3])))
            x<-ordenados[[num]] 
            
            #Extraemos los estados cuya tasa de mortalidad es igual a la que ocupa x posición
            #MANEJO DE EMPATES  
            edos<-subset(tab1, tmort==x)
            edosOrd<-as.character(as.vector(sort(edos[,1])))
            
            tab1[,3]<-as.numeric(as.vector(tab1[,3]))
            
            #Extraemos los estados cuya tasa de mortalidad es menor a la elegida y los contamos
            x1<-subset(tab1, tmort<x)
            nrow(x1)
            
            resta<-num-nrow(x1)
            resultado<-edosOrd[[resta]]
        }
    }

#
resultado
}
rankhospital("AL","ataque",102)


nrow(lectura)
x <- 2
class(x)
numeric(x)= true
if(is.numeric(x) == T){
    print("perro")
}
