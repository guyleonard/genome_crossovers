# Load UpSetR package or install and load
if (!require('UpSetR')) install.packages('UpSetR'); library('UpSetR')

# Read in data table
protists_and_others <- read.csv( "protists_and_others.csv", header=T, sep="," )

# Transpose the data and rename headers
protists_and_others <- transform(protists_and_others, taxa_name=paste(Genus, species, X, type, sep=" "))
# Use only the data useful for our intersects
protists_and_others <- subset(protists_and_others, select = c(taxa_name, Ensembl, JGI, EuPathDB, Other, NCBI))

# Recode to presence / absence with logic
protists_and_others$Ensembl <- as.integer(protists_and_others$Ensembl != "")
protists_and_others$JGI <- as.integer(protists_and_others$JGI != "")
protists_and_others$NCBI <- as.integer(protists_and_others$NCBI != "")
protists_and_others$EuPathDB <- as.integer(protists_and_others$EuPathDB != "")
protists_and_others$Other <- as.integer(protists_and_others$Other != "")

# Make the UpSetR plot
upset(protists_and_others)

