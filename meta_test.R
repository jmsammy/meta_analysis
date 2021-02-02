## Explore data from meta analysis to see what we can do with it.

### Libraries

library(tidyverse)

#Read the file in with readxl. This prevents there being a big ol' mess due to commas and quotation marks and so on.
meta_test <- readxl::read_excel("meta_test.xlsx")
meta_test <- na_if(meta_test, "NA")

ggplot(meta_test, aes(x=direction))+
  geom_bar()

ggplot(meta_test, aes(x=how_cause_decided, fill=cause))+
  geom_bar()

ggplot(meta_test, aes(x=spatial_scale, fill=cause))+
  geom_bar()

ggplot(meta_test, aes(x=time_scale_yrs, y=year, colour=cause))+
  geom_point()
