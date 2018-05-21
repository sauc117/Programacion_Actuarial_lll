getwd()
tail(list.files())
setwd("./testdir")
getwd()

setwd(("../"))
getwd()

file.exists("data")
dir.create("nuevodirectorio")


if (!file.exists("specdata")) {
    dir.create("specdata")
}

fechadedescarga <- date()
# urlarchivo <- "https://data.baltimorecity.../cameras.csv")


#si el url empieza con htttp se puede usar dowmad.file(),ASEGURARME DE RESGISTRAR
#FECHA DE DESCARGA

#read.table para leer y cargar los datos en R
# atoscamara <- read.table("./data/camaras.csv",sep=",",header = T)

                        