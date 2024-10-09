# CMDB QB2024
## Title:
Exploring the Gene Response to Infection in Early Placenta Using Single-Cell Transcriptomics
## Description:
We will use single-cell transcriptomic data from the cellxgene database to analyze an early placenta dataset from Hoo et al. (2024), who studied the "acute response to pathogens in the early human placenta at single-cell resolution." We aim to implement a Seurat-guided pipeline in Rstudio to cluster cell types. This approach will examine the gene response of early placental Hofbauer cells to infection by analyzing their differential gene expression through violin plots and comparing them to cytokines like TNF-alpha, IL-1 beta, and chemokines like CCL2, which are known to be significantly upregulated in infection.
## Example Published:
Acute response to pathogens in the early human placenta at single-cell resolution:
https://www.cell.com/cell-systems/fulltext/S2405-4712(24)00117-0
Figure 1C for the whole UMAP
Figure 2A for differentially expressed genes
## Datasets with IDs, links
https://cellxgene.cziscience.com/e/3966ba97-beb8-4d0b-9954-d3775cd2cd61.cxg/
https://cellxgene.cziscience.com/datasets#:~:text=158%2C978-,Download,-Explore
## Software with versions, links
Rstudio https://posit.co/download/rstudio-desktop/
Seurat Version 5 Tutorial - Guided Clustering Tutorial:
https://satijalab.org/seurat/articles/pbmc3k_tutorial#assigning-cell-type-identity-to-clusters
## 2-3 proposed steps:
### first doable < 5 hours and other two being "stretch"
We will begin by visualizing quality control (QC) metrics using a violin plot to assess the distribution of critical parameters. Next, we will explore relationships between different data features. After scaling the dataset, we will identify the ten most highly variable genes. Finally, we will cluster the cells and generate a UMAP to visualize the overall structure of the dataset.

Generate a Volcano plot and heat map to visualize and identify differentially expressed genes associated with the infection disease response.

Taking the identified differentially expressed genes, we can develop a GO map to visualize enriched biological processes, molecular functions, and cellular components associated with the differentially expressed genes.
