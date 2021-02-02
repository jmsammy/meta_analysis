library(tidyverse)

bioshifts <- read_csv("BioShifts.csv")

#let's explore bioshifts

ggplot(bioshifts, aes(x=Signif, y = ShiftR, fill = Signif))+
  geom_col(position="dodge")
