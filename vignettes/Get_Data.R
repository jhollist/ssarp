## ----get_key, warning = FALSE-------------------------------------------------
library(rgbif)

# Taxon query
query <- "Anolis allisoni"
# Taxon rank
rank <- "Species"

rgbif::name_suggest(q = query, rank = rank)

## ----save_key-----------------------------------------------------------------
# Re-run name_suggest() call to save table
suggestions <- rgbif::name_suggest(q = query, rank = rank)

# The correct key is the first element in the first row
key <- as.numeric(suggestions$data[1,1])

# Print key
key

## ----get_key_g----------------------------------------------------------------
query <- "Anolis"
rank <- "Genus"

suggestions <- rgbif::name_suggest(q = query, rank = rank)

# The correct key is the first element in the first row
key <- as.numeric(suggestions$data[1,1])

# Print key
key

