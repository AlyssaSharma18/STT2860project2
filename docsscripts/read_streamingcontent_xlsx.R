library(readxl)
library(tidyverse)
library(XLConnect)
setwd("~/STT2860project2/dataraw")
# reads two datasets from the raw data file streamingcontent.xlsx
# writes the datasets to individual .rds files and an .Rdata file
# original data is in the raw folder, new in the processed folder

#save(file = "streamingcontent.xlsx")


# view the names of the worksheets that are in streamingcontent.xlsx

#wb <- loadWorkbook("streamingcontent.xlsx")
#names(wb)

# read in the first sheet of streamingcontent.xlsx and name it dplus

dplus <- read_xlsx("streamingcontent.xlsx", sheet = 1)



# read in the second sheet of streamingcontent.xlsx and name it strmtv

strmtv <- read_xlsx("streamingcontent.xlsx", sheet = 2)


# write the datasets to two .rds files named dplus.rds and strmtv.rds

saveRDS(dplus, file = "dplus.rds")
load("dplus.rds")
saveRDS(strmtv, file = "strmtv.rds")
load("strmtv.rds")

# write the datasets to an .Rdata file called streamingcontent.Rdata

save(dplus, strmtv , file = "streamingcontent.Rdata")

