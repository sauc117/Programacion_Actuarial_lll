setwd("C:/Users/Salvador Uribe/Desktop/PROGRA3")
lectura <- read.csv("outcome-of-care-measures.csv")
names(lectura)
estados <- lectura[,7]
###################################333
estado <- "AL"
resultado <- 11

###########################################333333

rankingcompleto <- function(resultado, num = "mejor"){
    
    lectura <- read.csv("outcome-of-care-measures.csv")

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
    est <- lectura$State
    estados <- levels(as.factor(est))
    
    #Dos vectores que vayan almacenando los resultados 
    vector<-c()
    vectorEDOS<-c()
###    
    for (estado in estados){
        
        nt<-subset(lectura,lectura[,resultado]!="Not Available")
        tmort<-as.numeric(as.character(nt[,resultado]))
        tab<-data.frame(nt$Hospital.Name,nt$State,tmort)
        tab1<-subset(tab,nt$State==estado)
        
    if(num == "mejor"){
    
 
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
    perro <- as.character(x[1])
    perro
    } else if ( num == "peor"){

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
        perro <- as.character(x[1])
    }else{
        
        num <- 20
        
        ordenados<-sort(as.numeric(as.vector(tab1[,3])))
        x<-ordenados[[num]] 
        
        edos<-subset(tab1, tmort==x)
        edosOrd<-as.character(as.vector(sort(edos[,1])))
        
        tab1[,3]<-as.numeric(as.vector(tab1[,3]))
        
        x1<-subset(tab1, tmort<x)
        nrow(x1)
        
        resta<-num-nrow(x1)
        perro<-edosOrd[[resta]]
    }
        
#SUMA DE VECTORES        
    vector<-c(vector,perro)
    vectorEDOS<-c(vectorEDOS,estado)
    }
    FINAL<-data.frame(vector,vectorEDOS)
    names(FINAL)<-c("hospital","state")
    FINAL
         
}
head(rankingcompleto("ataque","peor"))












