library(tidyverse)
library(patchwork)
library(Seurat)
library(SeuratObject)
library(dplyr)

e_placenta.data <- readRDS("/Users/cmdb/Desktop/Early-placenta-project.rds")
str(e_placenta.data)
# Subset Seurat object to keep pick a particular infection
placenta_lm <- subset(e_placenta.data, subset = infection %in% c("Lm", "Ul"))


#e_placenta.data[["percent_mito"]] <- PercentageFeatureSet(e_placenta.data, pattern = "^MT-")
View(e_placenta.data@meta.data)

VlnPlot(placenta_lm, features = c("nFeaturess_RNA", "nCounts_RNA", "percent_mito"), ncol = 3) 

# FeatureScatter is typically used to visualize feature-feature relationships, but can be used
# for anything calculated by the object, i.e. columns in object metadata, PC scores etc.

plot1 <- FeatureScatter(placenta_lm, feature1 = "nCounts_RNA", feature2 = "percent_mito")
plot2 <- FeatureScatter(placenta_lm, feature1 = "nCounts_RNA", feature2 = "nFeaturess_RNA")
plot1 + plot2

placenta_lm <- subset(placenta_lm, subset = nFeaturess_RNA > 200 & nFeaturess_RNA < 10000 & percent_mito < 0.15)

placenta_lm <- NormalizeData(placenta_lm)
placenta_lm <- FindVariableFeatures(placenta_lm, selection.method = "vst", nfeatures = 2000)

# Identify the 10 most highly variable genes
top10 <- head(VariableFeatures(placenta_lm), 10)

# plot variable features with and without labels
plot1 <- VariableFeaturePlot(placenta_lm)
plot2 <- LabelPoints(plot = plot1, points = top10, repel = TRUE)
plot1 + plot2

all.genes <- rownames(placenta_lm)
placenta_lm <- ScaleData(placenta_lm, features = all.genes)
placenta_lm <- RunPCA(placenta_lm, features = VariableFeatures(object = placenta_lm))
VizDimLoadings(placenta_lm, dims = 1:2, reduction = "pca")
ElbowPlot(placenta_lm)
placenta_lm <- FindNeighbors(placenta_lm, dims = 1:17)
placenta_lm <- FindClusters(placenta_lm, resolution = 0.5)
placenta_lm <- RunUMAP(placenta_lm, dims = 1:17)
DimPlot(placenta_lm, reduction = "umap", group.by = c("cell_type"), label = TRUE)
