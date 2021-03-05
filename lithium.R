data <- read.csv("Lithium Carbonate Price.csv")
str(data)
#View(data)
unique(is.na(data))

lithium <- data[,1:2]
lithium$Date <- gsub(",", "", lithium$Date)
lithium$Date <- as.Date(lithium$Date, "%b %d %Y")
lithium$Price <- gsub(",", "", lithium$Price)
lithium$Price <- as.numeric(lithium$Price)
View(lithium)

plot(lithium$Date, lithium$Price, type = "h", col = "blue4", lwd = 6, xlab = "Time", ylab = "Price", main = "Lithium Carbonate Price")


