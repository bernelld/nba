#' function_2

#' The input for this function is an individual year in the “Seasons_Stats_NBA.csv” dataset.
#' The output is the oldest player in the NBA data for that year.

max_age <- function(season){
        library(tidyverse)
        library(dplyr)
        era <- nba_data %>% filter(Year == season)
        high_age <- max(era$Age, na.rm = TRUE)
        scorer <- era %>% filter(era$Age == high_age) %>% slice(1) %>% ungroup()
        player_name <- scorer$Player
        print(player_name)
}
