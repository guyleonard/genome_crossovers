# Load UpSetR package or install and load
if (!require('UpSetR')) install.packages('UpSetR'); library('UpSetR')

# Read in data table
fungi <- read.csv( "fungi_all.csv", header=T, sep="," )

# Transpose the data and rename headers
fungi <- transform(fungi, taxa_name=paste(Genus, species, X, type, sep=" "))
# Use only the data useful for our intersects
fungi <- subset(fungi, select = c(taxa_name, Ensembl, JGI, FungiDB, Other, NCBI))

# Recode to presence / absence with logic
fungi$Ensembl <- as.integer(fungi$Ensembl != "")
fungi$JGI <- as.integer(fungi$JGI != "")
fungi$FungiDB <- as.integer(fungi$FungiDB != "")
fungi$other <- as.integer(fungi$other != "")
fungi$NCBI <- as.integer(fungi$NCBI != "")

# Make the UpSetR plot
upset(fungi)
