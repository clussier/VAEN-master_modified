setwd("/extraspace/ychen42/Drug_Response/bioinfo.uth.edu/VAEN/Figure/Figure5/GSE20194/VAEN/Figure/Figure5/GSE20194")
library("GEOquery")
library("limma")
library("preprocessCore")

###################################################################################################
# code chunk: GSE20194
###################################################################################################
gse <- getGEO(geo="GSE20194", destdir="/extraspace/ychen42/Drug_Response/bioinfo.uth.edu/vaen_rerun/figure5/",GSEMatrix = TRUE)

#gse <- getGEO(filename="/extraspace/ychen42/Drug_Response/bioinfo.uth.edu/VAEN/Figure/Figure5/GSE20194/GSE20194_MDACC_Sample_Info.xls.gz", destdir="/extraspace/ychen42/Drug_Response/bioinfo.uth.edu/vaen_rerun/figure5/",GSEMatrix = TRUE)
exprs(gse[[1]]) -> datExpr0

normalize.quantiles(datExpr0) -> datExprLQ
dimnames(datExprLQ) = dimnames(datExpr0)

########## section 2

gpl = getGEO("GPL96")
Table(gpl) -> anno

grep("/", anno[,11]) -> check
anno = anno[-check,]
anno = anno[anno[,11]!="", ]


datExprLQ = datExprLQ[which(rownames(datExprLQ) %in% anno[,1]),]
match(rownames(datExprLQ), anno[,1]) -> ii
symbol = anno[ii, 11]

apply(datExprLQ, 2, function(u)tapply(u, symbol, median)) -> expr.mat

pData(gse[[1]]) -> pheno.anno

save(expr.mat, pheno.anno, file="C:/Users/EYC/Documents/UTH/VAEN/GSE20194.RData",ascii=TRUE)
