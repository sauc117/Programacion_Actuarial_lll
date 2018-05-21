setwd("C:/Users/Salvador Uribe/Desktop/PROGRA3")
lectura <- read.csv("outcome-of-care-measures.csv")

##################### Espacio de pruebas ########################
estado <- "AL"
resultado <- 11
num <- "peor"
nt<-subset(lectura,lectura[,resultado]!="Not Available")
tmort<-as.numeric(as.character(nt[,resultado]))
tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
tab1<-subset(tab,nt$State==estado)

nrow(tab1)
if(num == "peor"){
    num <-nrow(tab1) 
}
num

#################################################################

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
    if( num < 0){
        stop("debe de ser mayor a 0 o best")
    }

#
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
    tab1<-subset(tab,nt$State==estado)
    
##
    if(num == "best"){
        num <- 1
    }
##
#   
    if(num == "peor"){
    num <-nrow(tab1) 
    } 
#        
#
    if(num=="best" || num == 1){
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
    tab1<-subset(tab,nt$State==estado)
#
    numero <- c()
    numero <- dim(tab1)
    numerodp <- numero[1]
    mayor <- tab1[1,3]
    for (i in 1:numerodp) {
        if(tab1[i,3]< mayor){
            mayor <- tab1[i,3 ]
        }
    }
#
    estados <-subset(tab1,tmort ==mayor )
    x <- sort(estados[,1])
    resultado <- as.character(x[1])
    }
#
    if(num==nrow(tab1)){
        nt<-subset(lectura,lectura[,resultado]!="Not Available")
        tmort<-as.numeric(as.character(nt[,resultado]))
        tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
        tab1<-subset(tab,nt$State==estado)
#
        numero <- c()
        numero <- dim(tab1)
        numerodp <- numero[1]
        menor <- tab1[1,3]
        for (i in 1:numerodp) {
            if(tab1[i,3]> menor){
                menor <- tab1[i,3 ]
            }
        } 
#menor 
#
        estados <-subset(tab1,tmort ==menor )
        x <- sort(estados[,1])
        resultado <- as.character(x[1])
    } else{
        if (nrow(tab1)<num) {
            resultado<-NA
        }else{
            

            ordenados<-sort(as.numeric(as.vector(tab1[,3])))
            x<-ordenados[[num]] 

            edos<-subset(tab1, tmort==x)
            edosOrd<-as.character(as.vector(sort(edos[,1])))
            
            tab1[,3]<-as.numeric(as.vector(tab1[,3]))
            
            x1<-subset(tab1, tmort<x)
            nrow(x1)
            
            resta<-num-nrow(x1)
            resultado<-edosOrd[[resta]]
        }
    }

#
resultado
}
rankhospital("MD","ataque", "peor")

