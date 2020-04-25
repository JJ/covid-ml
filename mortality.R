library(ggplot2)
library(ggthemes)

data <- read.csv("/home/jmerelo/Documentos/COVID.HMhospitales/01.csv",sep=";")
data$SEXO.SEX <- as.factor(data$SEXO.SEX)
data$MOTIVO_ALTA.DESTINY_DISCHARGE_ING <- as.factor(data$MOTIVO_ALTA.DESTINY_DISCHARGE_ING)
ggplot(data, aes(x=MOTIVO_ALTA.DESTINY_DISCHARGE_ING,group=SEXO.SEX,fill=SEXO.SEX))+geom_bar()
