library(ggplot2)
df2 <- data.frame(supp=rep(c("Database", "FHIR Generation", "FHIR Parsing"), each=4),
                Patient_Set_Size=rep(c("8K", "100K","200K","400K"), 3),
                Time_Spent_Seconds=c(17000, 17700, 23000, 16500,
				     2000, 11000, 23000, 45000,
				     300,400,600,1600
				     ))
print(df2)
df2$Patient_Set_Size <- factor(df2$Patient_Set_Size, levels=c("8K", "100K","200K","400K"))
df2$supp <- factor(df2$sup, levels=c("i2b2 CRC Processing",  "FHIR Parsing", "FHIR Generation", "Database" ))
ggplot(data=df2, aes(x=Patient_Set_Size, y=Time_Spent_Seconds, fill=supp)) + geom_bar(stat="identity") + xlab("Patient Set Size") + ylab("Time Spent (ms)") + theme(text = element_text(size=20))
ggsave("graph1.pdf")
