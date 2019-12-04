#' Making it a fun  
#' 
#' Lah-de-dah! Say no More!!!  
#' Here we create a function that makes use of rio::import to read a csv datafile 
#' and ggplot2 to render graphics of dataset loaded.   
#' @export 
#' @examples  
#' #Not Run  
#' hobbyist_fun()  
#' ?hobbyist_fun
hobbyist_fun <- function(){
    # read csv dataset
    data_file <- system.file("extdata", "weather_2014.csv", package = "rpackage.hack")
    data <- rio::import(data_file)
    ggplot2::ggplot(data, ggplot2::aes(season,rain)) +
        ggplot2::geom_jitter(ggplot2::aes(colour=rain), position = ggplot2::position_jitter(width = 0.2)) +
        ggplot2::scale_colour_gradient2(low = "blue", mid = "red",high = "black", midpoint = 30) +
        ggplot2::scale_y_continuous(breaks = seq(0,80,20)) +
        ggplot2::xlab("Season") +
        ggplot2::ylab ("Rain (mm)") +
        ggplot2::ggtitle("Daily rain amount by season")
}