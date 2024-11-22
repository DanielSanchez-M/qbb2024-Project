# CHECK-IN 2
Addressing the feedback we received from the peer reviews, we adjusted plan of action and made adjustments to previous data outputs of our single-cell sequencing data. We have attempted to implement DESeq2 into our pipeline to identify the differentially expressed genes and create different figures with this data. However, we have had some issues attempting to normalize the data using vst but,we have been limited in applying the DESeq2. One comment we received was on interpreting the elbow plot and how we can implement that information for our UMAP. We determined that we needed to use PC value of 12 instead of 17 to help minimize the extra “noise” incorporated into our clustering.

Since our last checkpoint, we have addressed most of the feedback provided by our peers and implemented many of their suggestions into our pipeline. We took what we had a step further by attempting to implement DESeq2 to generate differentially expressed gene analysis. Initially we had issues with attempting to conduct DESeq2 on our data due to our data file being too large. However, after taking steps to narrow down our data inputs, by reducing our data from 100,000 genes down to 25,000 genes. We were then able to attempt the DESeq2 analysis. This was where we ran into another problem when attempting to normalize and apply the DESeq2 pipeline.

Some improvements we implemented to our project organization is improving our project pipeline and implementing DESeq2 with our data in order to conduct differentially expressed gene analysis. We hope to then refine our UMAP with this information and then utilize a GO analysis to explore the biological processes and molecular functions associated with the differentially expressed genes. We are also planning to start working on presentation with the introduction slides and implement our data figures into the presentation in time for the final project presentation date.

One of the main things we have been struggling with is that after attempting to normalize our data using vst, we were unable to apply the DESeq2 system to generate our plots. We are planning on meeting with TAs and instructors for assistance in resolving this issue, or looking for potential work arounds to obtain similar data.