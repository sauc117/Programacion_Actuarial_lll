mtcars
y <- data.frame(mtcars)
dput(y)
dput(y, file="~/GitHub/Programacion_Actuarial_lll/y.R")
carrosSalvador <- dget(file="~/GitHub/Programacion_Actuarial_lll/y.R")
dput(carrosSalvador)