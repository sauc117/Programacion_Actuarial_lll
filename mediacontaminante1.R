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
    
        if(i < 9){
                gato<-paste("00",i,sep = "")
        } else if(i < 99){
                gato<-paste("0",i,sep = "")
        }else{
            gato<-paste(i,sep = "")
        }
            
            ana<-paste(gato,"csv",sep=".")
        
        
        tab<-read.csv(ana)
        
        valores <-length(na.omit(tab[,perro]))+ valores
        suma<-sum(tab[,perro],na.rm=TRUE)+suma
        
    }
    y<-suma/valores
    suma
}
mediacontaminante(directorio, "sulfate" ,1)



valor <- c()
for (perro in 1:20) {
    valo
    r <- c(perro, valor)
}
mean(valor)




