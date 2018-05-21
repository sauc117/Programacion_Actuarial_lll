set.seed(13435)
x <- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
x <- x[sample(1:5),]; x$var2[c(1,3)] = NA
x
#"| es un o"
# & es un y


getwd()
if(!dir.exists("data")){dir.create("data")}
url <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(url,"./data/restaurantes.csv")
data <- read.csv("./data/restaurantes.csv")
head(data)
head(data,n=3)#primeros 3 registros
tail(data)#enseña los ultimos registros
summary(data)
str(data)
quantile(data$councilDistrict,na.rm=T)
quantile(data$councilDistrict,probs = c(.5,.6))

table(data$zipCode,useNA = "ifany")
table(data$councilDistrict,data$zipCode)


sum(is.na(data$councilDistrict))
any(is.na(data$councilDistrict))
all(!is.na(data$councilDistrict))
all(data$zipCode > 0)
colSums(is.na(data))
all(colSums(is.na(data))==0)


table(data$zipCode %in% c("21212"))
table(data$zipCode %in% c("21212","21213"))
data[data$zipCode %in% c("21212","21213"),]


data("UCBAdmissions")
DF=as.data.frame(UCBAdmissions)
summary(DF)
xt <- xtabs(Freq ~ Gender + Admit,data=DF)
xt

head(warpbreaks)
warpbreaks

fakeata = rnorm(1e5)
fakeata
object.size(fakeata)
print(object.size((fakeata),unit))