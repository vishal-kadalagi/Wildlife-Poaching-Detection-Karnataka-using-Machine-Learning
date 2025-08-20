library(readxl)
library(tidyverse)
library(googledrive)
drive_auth()


setwd("D:/GBIF_datasetUpload")

occur <- read_excel("006_kadamane_mammal_occurence.xlsx", sheet = 2)

occur$date <- as.Date(occur$date, format = "%d-%m-%Y")
occur$date <- format(occur$date, "%Y-%m-%d")
occur$time <- format(occur$time, format = "%H:%M:%S")
str(occur)


names <- read_excel("Kadamane_mammal_occurence.xlsx", sheet = 3)
places <- read.csv("002_placeLocs.csv")


# Update latitudes in occur where they are NA
occur$decimalLatitude <- ifelse(is.na(occur$decimalLatitude), places$lat[match(occur$place, places$place)], occur$decimalLatitude)

# Update longitudes in occur where they are NA
occur$decimalLongitude <- ifelse(is.na(occur$decimalLongitude), places$long[match(occur$place, places$place)], occur$decimalLongitude)

# Update accuracy in occur where they are NA
occur$GPSaccuracy <- ifelse(is.na(occur$GPSaccuracy), places$GPSaccuracy[match(occur$place, places$place)], occur$GPSaccuracy)

## from TRSR code (https://orcid.org/0000-0002-1347-3953)

mammdata<-occur  %>%  
  rename(recordedBy=observers, verbatimIdentification=species, individualCount = count, eventDate = date, eventTime = time, 
         verbatimLocality = place, verbatimElevation = GPSaltitude, coordinateUncertaintyInMeters = GPSaccuracy, 
         occurrenceID=instanceID)  %>% 
  rowid_to_column("sno") %>% 
  mutate(eventTime=str_c(eventTime,"+05:30"), 
         occurrenceRemarks = str_c("Observers:",recordedBy, " | ", "timestamp:", timestamp,  " | ", countType, " | ", obsType, " | ", notes),
         occurrenceID=str_c("urn:ncf:arp:mammals:",occurrenceID,":",sno) 
  )

mammdata <- left_join(mammdata, drive_df) %>% rename(associatedMedia = fileID)

mammdata<-left_join(mammdata,names) %>%  select(-countType, -obsType, -notes, -timestamp, -sno, -division, -imageID, -taxa) %>% mutate(associatedMedia=str_c("https://zenodo.org/record/13340613/files/",associatedMedia))

write_csv(mammdata, "001_mammalData.csv")

mammdata$recordedBy <- gsub(",", " | ", mammdata$recordedBy)

mammdata$coordinateUncertaintyInMeters <-replace_na(as.character(mammdata$coordinateUncertaintyInMeters),"")

#Add additional columns
mammdata$georeferenceRemarks = str_c("Data collected on mobile phones")
mammdata$geodeticDatum<-"WGS84"
mammdata$license<-"https://creativecommons.org/licenses/by/4.0/legalcode"
mammdata$institutionID<-"https://www.gbif.org/publisher/038a1133-81e2-42e8-a4dd-b5ac246eb082"
mammdata$institutionCode<-"NCF-India"
mammdata$bibliographicCitation<-"Nature Conservation Foundation (2024). Mammal occurrence records (2022-24) from Sakleshpura, central Western Ghats, India (2022-24). GBIF dataset."
mammdata$basisOfRecord<-"HumanObservation"
mammdata$occurrenceStatus<-"present"
mammdata$continent<-"Asia"
mammdata$country<-"India"
mammdata$stateProvince<-"Karnataka"
mammdata$county<-"Hassan"
mammdata$locality<-"Sakleshpura"
mammdata$language<-"en"
mammdata$type<-"Dataset"
mammdata$kingdom<- "Animalia"
mammdata$taxonRank<- "species"
mammdata$countryCode<- "IN"
mammdata$organismQuantity<- "individuals"


#Write file for GBIF upload
write_csv(mammdata, "mammal_occurrence_kadamane_2022-24_gbif.csv")
