directory <- "GenomeAnalysis/"


#Loading in the sample files and labeling them
sampleFiles <- c("ERR2036629_countread.txt","ERR2036630_countread.txt","ERR2036631_countread.txt","ERR2036632_countread.txt","ERR2036633_countread.txt")
sampleCondition <- c("Continuous","Continuous","Batch","Batch","Continuous")

sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)

sampleTable$condition <- factor(sampleTable$condition)

#Loading and running DESeq2
library("DESeq2")
ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)

ddsHTSeq

dds <- DESeq(ddsHTSeq)
res <- results(dds)
resultsNames(dds)
resLFC <- lfcShrink(dds, coef="condition_Continuous_vs_Batch", type="apeglm")
resLFC

#Creating MA plots for both the reuslts and the shrinkage result
plotMA(res, ylim=c(-4,4))
plotMA(resLFC, ylim=c(-4,4))

plotCounts(dds, gene=which.max(res$log2FoldChange), intgroup="condition")

BiocManager::install("ReportingTools")
library("ReportingTools")
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

report <- HTMLReport(shortname = 'DiffExp_analysis', title = 'Differential expression analysis', reportDirectory = ".")
publish(dds, report, pvalueCutoff=0.05, make.plots = TRUE, factor = sampleTable$condition, reportDir = ".")
finish(report)


