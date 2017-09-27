library(ggplot2)
df2 <- data.frame(Labels=rep(c("Traditional i2b2", "SMART-on-FHIR i2b2"), each=3),
                Patient_Set_Size=rep(c(
				       #"4K"
				        "50K"
				       ,"100K"
				       , "200K"), 2),
                Time_Spent_Seconds=c(  
#26
				      162
				     , 351
				     , 700
				     #, 3241
#,900
				     , 4000
				     , 6700
				     , 10000
				     #, 52000
				     ))
print(df2)
df2$Patient_Set_Size <- factor(df2$Patient_Set_Size, levels=c(
							      #"4K"
							       "50K","100K","200K"))
df2$Labels <- factor(df2$Labels, levels=c("Traditional i2b2", "SMART-on-FHIR i2b2" ))
ggplot(data=df2, aes(x=Patient_Set_Size, y=Time_Spent_Seconds, fill=Labels)) + geom_bar(stat="identity", position=position_dodge()) +
  xlab("Patient Set Size") + ylab("Time Spent (ms)")
ggsave("graph2.pdf")
