setwd("C:/Users/Salvador Uribe/Desktop/PROGRA3")
lectura <- read.csv("outcome-of-care-measures.csv")
names(lectura)
estados <- lectura[,7]
###################################333
estado <- "AL"
resultado <- 11

###########################################333333

mejor <- function(estado,resultado){
    
    lectura <- read.csv("outcome-of-care-measures.csv")
#    
    if(!is.element(estado,lectura[,7])){
        stop("Estado inv�lido")
    }
#
    if(resultado == "ataque"){
        resultado <- 11
    }else if(resultado =="falla") {
        resultado <- 17
    } else if (resultado == "neumonia"){
        resultado <- 23
    } else {
        stop("Resultado inv�lido")
    }
#
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
#   
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
# 
    tab1<-subset(tab,nt$State==estado) 
#    
    mayor <- min(tab1[,3])
#
    estados <-subset(tab1,tmort ==mayor )
    x <- sort(estados[,1])
    as.character(x[1])
         
}
mejor("AL","ataque")
