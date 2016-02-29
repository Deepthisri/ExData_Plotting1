source("dataload.R")

plot2 <- function() {
        plot(finaldata$timestamp, finaldata$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
    png("plot2.png", width=480, height=480)
    dev.off()
    cat("plot2.png has been saved in", getwd())
}
plot2()