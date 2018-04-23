
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

#POSIXct es un entero muy grande, util para guardar datos en un data frame
#POSIXlt es como una lista y guarda un conjunto de informacion util como dia 
# de la semana,dia del aoñ, dia del mes, etc.

weekdays(as.Date("1998-07-23"))
weekdays(as.Date("1998-09-24"))


weekdays(as.Date("1998-09-24"))
a <- as.POSIXct("1998-09-24")
b <- as.POSIXlt("1998-09-24")