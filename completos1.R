setwd("C:/Users/Salvador Uribe/Desktop/specdata")
directorio = "C:/Users/Salvador Uribe/Desktop/specdata"
directorio

completos <- function(directorio, id = 1:332){
valores <- c()
    for (aca in id) {
        
        if(aca < 9){
            gato<-paste("00",aca,sep = "")
        } else if(aca < 99){
            gato<-paste("0",aca,sep = "")
        }else{
            gato<-paste(aca,sep = "")
        }
        
        ana<-paste(gato,"csv",sep=".")
    
    
    df1<-na.omit(read.csv(ana)) 
    df1
    
    valor1 <-nrow(df1)
    valores <- c(valores,valor1)
    }
    data.frame(valores)
    }
completos(directorio,1:5)


    
   