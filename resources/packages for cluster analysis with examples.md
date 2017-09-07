Some notable R packages for cluster analysis are given below.

- The package `stats` has a function `kmeans()`. The usage can be either `stats::kmeans()` or by importing the `library stats`.
- The package `factoextra` has a function `fviz_nbclust()` to estimate the optimal number of clusters. Possible usage `factoextra::fviz_nbclust()`
- `factoextra` package has another function `fviz_clust()` for visualizing k-means cluster.
- For computing Partition around Medoids (PAM), the required R packages and functions are `cluster::pam()` or `fpc::pamk()`
- If using the PAM algorithm, to estimate the optimal number of clusters, use `factoextra::fviz_nbclust()`
- To visualize the PAM clusters use `factoextra::fviz_cluster()`
- To use the algorithm Clustering Large Applications (CLARA), the required R package is `cluster` and the function is `clara()`. 

A major drawback with k-means algorithm is the requirement to specify the number of clusters in advance. An alternative approach to determine the `optimal number` of clusters is to use the `silhouette` method. The average silhouette measures the quality of a clustering. A high average silhouette width indicates a good clustering. The optimal number of clusters k is the one that maximize the average silhouette over a range of possible values for k (Kaufman and Rousseeuw 1990). I show an example below;

   