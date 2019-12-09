#' Making it a fun  
#' 
#' Lah-de-dah! Say no More!!!  
#' Here we create a function that makes use of rio::import to read a csv datafile 
#' and ggplot2 to render graphics of dataset loaded.   
#' @export 
#' @import ggplot2
#' @examples  
#' #Not Run  
#' hobbyist_fun()  
#' ?hobbyist_fun
hobbyist_fun <- function(){
    print(test_fun(4,75))
    # read csv dataset
    data_file <- system.file("extdata", "weather_2014.csv", package = "rpackage.hack")
    data <- rio::import(data_file)
    ggplot(data, aes(season,rain)) +
        geom_jitter(aes(colour=rain), position = position_jitter(width = 0.2)) +
        scale_colour_gradient2(low = "blue", mid = "red",high = "black", midpoint = 30) +
        scale_y_continuous(breaks = seq(0,80,20)) +
        xlab("Season") +
        ylab ("Rain (mm)") +
        ggtitle("Daily rain amount by season")
}