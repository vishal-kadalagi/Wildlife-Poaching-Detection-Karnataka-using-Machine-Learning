Mammal occurrence records (2022-24) from Sakleshpura, central Western Ghats, India

This dataset contains Mammal occurrence records from 2022 to 2024 in the Sakleshpura region of central Western Ghats, India. It includes a few occurrence records of other chordates. Occurrence records were gathered in the field by researchers of the Nature Conservation Foundation, India, using a mobile data collection application. Suggested citation is:
Nature Conservation Foundation (2024). Mammal occurrence records (2022-24) from Sakleshpura, central Western Ghats, India. Nature Conservation Foundation, India. Dataset

Keywords: tropical rainforest, plantations, Sakleshpura, animal distribution, Western Ghats

CONTACT #1
1. Name: Anand M Osuri
2. Work Address: Nature Conservation Foundation, 1311, 12th A Main, Vijayanagar 1st Stage, Mysuru 570017, Karnataka, India
3. Work Phone: +91 821 2515601
4. Email address: aosuri@ncf-india.org
5. ORCID: https://orcid.org/0000-0001-9909-5633

CONTACT #2
1. Name: Vijay Karthick
2. Work Address: Nature Conservation Foundation, 1311, 12th A Main, Vijayanagar 1st Stage, Mysuru 570017, Karnataka, India
3. Work Phone: +91 821 2515601
4. Email address: vijayk@ncf-india.org 
5. ORCID:  https://orcid.org/0000-0001-6023-3955

CONTACT #3
1. Name: Vijay Kumar
2. Work Address: Nature Conservation Foundation, 1311, 12th A Main, Vijayanagar 1st Stage, Mysuru 570017, Karnataka, India
3. Work Phone: +91 821 2515601
4. Email address: vijaykumar@ncf-india.org 
5. ORCID: https://orcid.org/0009-0000-4149-0083


Geographic Coverage:
1. Location/Study Area: Sakleshpura, Karnataka, India
2. GPS coordinates: Kadamane Village (12.924647, 75.654650)

Temporal Coverage:
1. Begins: 2022-05-16 (Year, Month, Day)
2. Ends: 2024-05-22 (Year, Month, Day)

Besides the 000_readMe.txt file containing this information, the dataset includes three comma-delimited text (csv) files, and one R code file as explained below:
1) 001_mammalData.csv -- This file has the main mammal occurrence data with relevant and renamed columns derived from the original downloaded Excel worksheet file

2) 002_placeLocs.csv  -- This file lists names places for which the GPS location was unavailable from the mobile phone application, and was manually assigned to coordinates with 500 or 1000m accuracy

3) 003_nameMatch.csv -- This file matches the name as originally recorded with the correct common name and scientific name

4) 004_GBIF_upload_code.R -- R code for processing the files to create a file for upload as an occurrence dataset on the Global Biodiversity Information Facility (GBIF.org)

5) 005_download_images_from_googledrive.R - R code to extract image IDs and download images from googledrive

FILES INCLUDED IN DATASET

001_mammaldata.csv
This file has the main mammal occurrence data with relevant and renamed columns derived from the original downloaded Excel worksheet file 

observers:	Observers who made the observation
timestamp:	Automatic time stamp of date and time when app was used
date:	Date of observation
time:	Time of observation
decimalLatitude:	Latitude in decimal degrees N
decimalLongitude:	Longitude in decimal degrees E
GPSaltitude:	Altitude in metres
GPSaccuracy:	Horizontal accuracy of GPS location in metres
place:	Name of locality
habitat:	Habitat type
taxa:	mammal or reptile/amphibian
species:	Species common name
count:	Number of individuals observed
countType:	Total (solitary or fully counted groups) or Partial (incompletely counted groups)
obsType:	Type of observation: sighting, sign (droppings or vocalisation), death, roadkill, electrocution, other
notes:	Notes or remarks on observation
imageID:	Link to the google drive photo, if photo is available
instanceID:	Automatically generated unique identifier of observation

002_placeLocs.csv
This file lists names places for which the GPS location was unavailable from the mobile phone application, and was manually assigned to coordinates with 500 m accuracy

place: Name of locality as recorded
lat: Assigned latitude in decimal degrees N
long: Assigned longitude in decimal degrees E
GPSaccuracy: Assigned as 500 or 1000m – Horizontal accuracy of GPS location in metres

003_nameMatch.csv
This file matches the name as originally recorded with the correct common name and scientific name.

verbatimIdentification: Identification as originally recorded in the ‘species’ column of the mammaldata.csv file
vernacularName: Common or english name
scientificName: Scientific name

004_GBIF_upload_code.R
R code for processing the files to create a file for upload as an occurrence dataset on the Global Biodiversity Information Facility (GBIF.org)

005_download_images_from_googledrive.R
R code that extracts imageIDs from the 001_mammalData.csv file and downloads them automatically to a preferred directory

006_kadamane_mammal_occurrence.xlsx
An excel file that contains the raw data and used in the codes above