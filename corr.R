setwd("C:/Users/Salvador Uribe/Desktop/specdata")
directorio = "C:/Users/Salvador Uribe/Desktop/specdata"
directorio




corr <- function(directorio,horizonte=0){
    res <- c()
    x <- c()
    for(i in 1:332){
        
        gato<-formatC(i,width=3,flag="0")
        ana<-paste(gato,"csv",sep=".")
        
        tab<-na.omit(read.csv(ana))
        val1<-nrow(tab)
        
        if(val1>horizonte){
            col2<-data.frame(tab[,2])
            col3<-data.frame(tab[,3])
            correlacion<-cor(col2,col3)
            res<-c(res,correlacion) 
        }
    }
    res 
}

corr(directorio,0)
