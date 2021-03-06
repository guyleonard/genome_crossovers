# Genome Crossovers

Just a bit of fun to keep track of which genomes (in this case genomes with a set of predicted proteins) are available where.

I am mainly taking information from NCBI, Ensembl, JGI, EuPathDB portals (and their consituent portals e.g Mycocosm etc) as of ~April 2018. Occasionally I add in other genomes not available from these 'main' portals to cover my own needs.
I am only really interested in keeping track of the Eukaryotes (for another project OrcharDB). I have also split them into 4 rough 'groups', with that said I am not making any specific comment on these groupings, it's just a little easier to keep track of them this way.

## Fungi
The total number of genomes from each of the 'big' genome portals are as below:

Ensembl|JGI|FungiDB|Other|NCBI|Total|Unique Total
-------|---|-------|-----|----|-----|------------
761|874|81|25|900|2641|*1493*

### UpSetR Plot
Their intersections are as below, this is like a Venn diagram but 1000x better:

![](https://github.com/guyleonard/genome_crossovers/raw/master/fungi/fungi_jgi_ensembl_other_ncbi.png)

For example, we can see that:

 * whilst NCBI contains the most genomes, only 91 are unique
 * whereas JGI has the most number of unique genomes at 530 not available elsewhere
 * the 4 genome portals share 39 of the same genomes
 * with Ensembl and NCBI having the largest overlap

I think that's pretty revealing, if you're going to try and cover taxonomic diveristy of taxa in your analyses, you're going to need to use more than just NCBI! Of course, you will need to explore the data more thouroughly, some genera have more sequencing projects than others and that is likely inflating some of the numbers...

And so you can access the data, [here](https://github.com/guyleonard/genome_crossovers/blob/master/fungi/fungi.csv), and the code to make the plot [here](https://github.com/guyleonard/genome_crossovers/blob/master/fungi/fungi_plot.R), there are other examples in the Fungi directory.

## Plants
Continuing with the loose definitions, plants = anything green...

The total number of genomes from each of the 'big' genome portals are as below:

Ensembl|JGI|NCBI|Total|Unique Total
-------|---|----|-----|------------
53|85|87|225|*148*

### UpSetR Plot
Their intersections are as below, this is like a Venn diagram but 1000x better:

![](https://github.com/guyleonard/genome_crossovers/raw/master/plants/plants.png)

For example, we can see that:

 * NCBI wins this time with the most unique number of genomes
 * but JGI is a close second
 * and there's surprisingly few shared between the portals

You can access the data, [here](https://github.com/guyleonard/genome_crossovers/blob/master/plants/plants.csv), and the code to make the plot [here](https://github.com/guyleonard/genome_crossovers/blob/master/plants/plants_plot.r).


## Metazoa
The total number of genomes from each of the 'big' genome portals are as below:

Ensembl|JGI|NCBI|Total|Unique Total
-------|---|----|-----|------------
162|26|371|559|*433*

### UpSetR Plot
Their intersections are as below, this is like a Venn diagram but 1000x better:

![](https://github.com/guyleonard/genome_crossovers/raw/master/metazoa/metazoa.png)

For example, we can see that:
 
 * Very few taxa exist in all 3 portals
 * NCBI seems to be very metazoan heavy!

You can access the data, [here](https://github.com/guyleonard/genome_crossovers/blob/master/metazoa/metazoa.csv), and the code to make the plot [here](https://github.com/guyleonard/genome_crossovers/blob/master/metazoa/metazoa_plot.r)

## Protists / Other
The total number of genomes from each of the 'big' genome portals are as below:

Ensembl|JGI|NCBI|EuPathDB|Other|Total|Unique Total
-------|---|----|--------|-----|-----|------------
170|22|9|93|36|330|*275*

### UpSetR Plot
Their intersections are as below, this is like a Venn diagram but 1000x better:

![](https://github.com/guyleonard/genome_crossovers/raw/master/protists_and_others/protists_and_others.png)

For example, we can see that:

 * Ensembl has the largest collection of protists in one place 
 * Lots of protists exists in their own genome portal, or subsideries of others e.g. EuPathDB
 * NCBI maybe be underepresented in this graph!

You can access the data, [here](https://github.com/guyleonard/genome_crossovers/blob/master/protists_and_others/protists_and_others.csv), and the code to make the plot [here](https://github.com/guyleonard/genome_crossovers/blob/master/protists_and_others/protists_and_others_plot.R)

# Caveats

These lists were curated from various sources. Not everyone makes their information easily accessible. So, I have probably missed taxa and if it's your favourite one, then I apologise!

## NCBI
They have a list hidden away in their FTP site @ ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/. Is it complete? Hard to say. Is it full of duplicates and multiple assemblies? Yes. If anyone knows of a better list then please feel free to let me know and tell NCBI to make it more obvious.

## JGI
Fungi seem to be all contained in Mycocosm now, which is great but wasn't always the case. Other taxa plants/protists are not all in their own '-cosms' or '-zomes' though. So it's a bit more hit and miss. I have to parse their XMLs with scripts [here](https://github.com/guyleonard/get_jgi_genomes) or just look at the genome portal web page, one by one.

## Ensembl
Most of the constituent portals have lists and tables with the information I want in. By far the easiest to use and extract data from! Yay!

## EuPathDB + Others
Pretty easy from EuPathDB and consituent portals as they have a list function which also shows taxa with predicted proteins. Nice.
