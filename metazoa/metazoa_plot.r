# Load UpSetR package or install and load
if (!require('UpSetR')) install.packages('UpSetR'); library('UpSetR')

# Read in data table
metazoa <- read.csv( "metazoa.csv", header=T, sep="," )

# Transpose the data and rename headers
metazoa <- transform(metazoa, taxa_name=paste(Genus, species, X, type, sep=" "))
# Use only the data useful for our intersects
metazoa <- subset(metazoa, select = c(taxa_name, Ensembl, JGI, NCBI))

# Recode to presence / absence with logic
metazoa$Ensembl <- as.integer(metazoa$Ensembl != "")
metazoa$JGI <- as.integer(metazoa$JGI != "")
metazoa$NCBI <- as.integer(metazoa$NCBI != "")

# Make the UpSetR plot
upset(metazoa)

