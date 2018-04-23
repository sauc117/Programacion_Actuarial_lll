setwd("C:/Users/Salvador Uribe/Desktop/specdata")
directorio = "C:/Users/Salvador Uribe/Desktop/specdata"
directorio

completos <- function(directorio, id = 1:332){
valores <- c()
    for (aca in id) {
    gato<-formatC(aca,width = 3,flag="0")
    ana<-paste(gato,"csv",sep=".")
    tab<-na.omit(read.csv(ana)) 
    tab
    
    valor1 <-nrow(tab)
    valores <- c(valores,valor1)
    }
    data.frame(valores)
    }
completos(directorio,1:5)


    
   