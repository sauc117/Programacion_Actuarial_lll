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
    nt<-subset(lectura,lectura[,resultado]!="Not Available")
    tmort<-as.numeric(as.character(nt[,resultado]))
#   
    tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
# 
    tab1<-subset(tab,nt$State==estado) 
#    
    
    numero <- c()
    numero <- dim(tab1)
    numerodp <- numero[1]
    tab1[2,3]
    mayor <- tab1[1,3]
    for (i in 1:numerodp) {
        if(tab1[i,3]< mayor){
            mayor <- tab1[i,3 ]
        }
    }
#
    estados <-subset(tab1,tmort ==mayor )
    x <- sort(estados[,1])
    as.character(x[1])
         
}
mejor("AL","ataque")
mejor("TX", "falla") 











