# Load UpSetR package or install and load
if (!require('UpSetR')) install.packages('UpSetR'); library('UpSetR')

# Read in data table
plants <- read.csv( "plants.csv", header=T, sep="," )

# Transpose the data and rename headers
plants <- transform(plants, taxa_name=paste(Genus, species, X, type, sep=" "))
# Use only the data useful for our intersects
plants <- subset(plants, select = c(taxa_name, Ensembl, JGI, NCBI))

# Recode to presence / absence with logic
plants$Ensembl <- as.integer(plants$Ensembl != "")
plants$JGI <- as.integer(plants$JGI != "")
plants$NCBI <- as.integer(plants$NCBI != "")

# Make the UpSetR plot
upset(plants)

