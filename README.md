# Genome Crossovers

Just a bit of fun to keep track of which genomes (in this case genomes with a set of predicted proteins) are available where.

I am mainly taking information from NCBI, Ensembl, JGI, EuPathDB portals (and their consituent portals e.g Mycocosm etc) as of ~April 2018. Occasionally I add in other genomes not available from these 'main' portals to cover my own needs.
I am only really interested in keeping track of the Eukaryotes (for another project OrcharDB). I have also split them into 4 rough 'groups', with that said I am not making any specific comment on these groupings, it's just a little easier to keep track of them this way.

## Fungi
The total number of genomes from each of the 'big' genome portals are as below:

Ensembl|JGI|FungiDB|Other|NCBI
-------|---|-------|-----|----
761|874|81|25|900

### Upset Plot
Their intersections are as below, this is like a Venn diagram but 1000x better:

![](https://github.com/guyleonard/genome_crossovers/raw/master/fungi/fungi_jgi_ensembl_other_ncbi.png)

For example, we can see that:

 * whilst NCBI contains the most genomes, only 91 are unique
 * whereas JGI has the most number of unique genomes at 530 not available elsewhere
 * the 4 genome portals share 39 of the same genomes
 * with Ensembl and NCBI having the largest overlap

I think that's pretty revealing, if you're going to try and cover taxonomic diveristy of taxa in your analyses, you're going to need to use more than just NCBI!

You can access the data, [here](https://github.com/guyleonard/genome_crossovers/blob/master/fungi/fungi_all.csv), and the code to make the plot [here](https://github.com/guyleonard/genome_crossovers/blob/master/fungi/fungi_plot.R).

## Plants

## Metazoa

## Protists / Other
