#' function_3

#' The input for this function is an individual year in the “Seasons_Stats_NBA.csv” dataset.
#' The output is the correlation matrix for all numeric variables in the data for that year.

corr_num <- function(season){
        library(tidyverse)
        library(dplyr)
        library(corrplot)
        era <- nba_data %>% filter(Year == season)
        era_num <- select_if(era, is.numeric)
        era_num <- era_num[,colSums(is.na(era_num))<nrow(era_num)]
        cor(era_num)
}
