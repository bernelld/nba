#' function_1

#' The input for this function is an individual year in the “Seasons_Stats_NBA.csv” dataset.
#' The output is the age of the player who scored the most points in the numeric 4-digit year.

age_scorer <- function(season){
        library(tidyverse)
        library(dplyr)
        era <- nba_data %>% filter(Year == season)
        high_score <- max(era$PTS, na.rm = TRUE)
        scorer <- era %>% filter(era$PTS == high_score)
        player_name <- scorer$Player
        age <- max(scorer$Age, na.rm = TRUE)
        print(age)
}
