setwd("C:/Users/Salvador Uribe/Desktop/specdata")
directorio = "C:/Users/Salvador Uribe/Desktop/specdata"
directorio

mediacontaminante <- function(directorio , contaminante= "sulfate", id= 1:332){    
    
    if (contaminante== "sulfate") { 
        perro= 2
    } else {
        perro=3
    } 
    valores <- 0
    suma <- 0
    for (i in id){
        gato<-formatC(i,width = 3,flag="0")
        ana<-paste(gato,"csv",sep=".")
        tab<-read.csv(ana) 
        valores <-length(na.omit(tab[,perro]))+ valores
        suma<-sum(tab[,perro],na.rm=TRUE)+suma
        
    }
    y<-suma/valores
    y
    
    
}

mediacontaminante(directorio,"sulfate",1)










