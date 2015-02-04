library(kinship2)

pedigree.file <- ""

# 6 column tab delimited file

d <- read.table(pedigree.file,header=T,sep="\t",colClasses="character")

# Make sure that sex is coded 1, 2 or 3 (unknown)
# Make sure that affection status is coded 1, 2

ped <- pedigree(id=d[,2],dadid=d[,3],momid=d[,4],aff=as.numeric(d[,6]),sex=as.numeric(d[,5]),missid="0")

plot(ped)
