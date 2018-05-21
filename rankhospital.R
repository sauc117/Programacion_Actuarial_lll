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
    if(num=="best" || num == 1){
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
    tab1<-subset(tab,nt$State==estado)
    mayor <- min(tab1[,3])
    #
    estados <-subset(tab1,tmort ==mayor )
    x <- sort(estados[,1])
    as.character(x[1])
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
        as.character(x[1])
    } 

   
}
rankhospital("AL","ataque","peor")


nrow(lectura)
x <- 2
class(x)
numeric(x)= true
if(is.numeric(x) == T){
    print("perro")
}
