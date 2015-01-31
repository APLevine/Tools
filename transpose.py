import sys

input=open(sys.argv[1],"r")

array=[]

for line in input:
    split=line.rstrip("\n").split("\t")
    array.append(split)

transposed=zip(*array)

for line in transposed:
    print "\t".join(line)
