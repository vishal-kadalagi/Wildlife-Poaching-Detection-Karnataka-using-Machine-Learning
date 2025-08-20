library(googledrive)

# Extract the 'imageID' column from occur (001_mammaldata.csv) dataframe
image_ids <- occur$imageID
image_ids <- na.omit(image_ids)


# Function to extract file ID from URL
extract_id <- function(url) {
  sub(".*id=([^&]+).*", "\\1", url)
}

file_ids <- sapply(image_ids, extract_id)

drive_df <- data.frame(
  imageID = image_ids,
  fileID = file_ids,
  stringsAsFactors = FALSE
)

drive_df$fileID <- paste0(drive_df$fileID, ".jpg")

# Specify the directory for saving the files
save_dir <- "D:/GBIF_datasetUpload/images/"


# download files 
for (url in image_ids) {
  file_id <- extract_id(url)
  drive_download(as_id(file_id), path = paste0(save_dir, file_id, ".jpg"), overwrite = TRUE)
}
