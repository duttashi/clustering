# Script objective: basic pca in r
# Note: PCA works only for continuous data

library(cluster)
library(rattle) # for wine dataset

# reference
# https://www.analyticsvidhya.com/blog/2016/03/practical-guide-principal-component-analysis-python/

# Attach/Load the data
head(wine)
str(wine)
# scale the variables
wine.stand<- scale(wine[,-1]) # -1 denotes scale all continuous variables except the first variable which is categorical

# Is the data clusterable? Are there groups in the data?
# This can be answered by PCA. principal component analysis is a method of extracting important variables (in form of components) from a large set of variables available in a data set. 
# The base R function prcomp() is used to perform PCA. By default, it centers the variable to have mean equals to zero.

prin_comp<- princomp(wine.stand)
names(prin_comp)
#outputs the mean of variables
prin_comp$center
#outputs the standard deviation of variables
prin_comp$scale
# The loadings measure provides the principal component loading. Each column of rotation matrix contains the principal component loading vector. This is the most important measure we should be interested in.
prin_comp$loadings
# Biplot
biplot(prin_comp)
#compute standard deviation of each principal component
std_dev <- prin_comp$sdev
#compute variance
pr_var <- std_dev^2
#check variance of first 10 components
pr_var[1:10]

#We aim to find the components which explain the maximum variance. This is because, we want to retain as much information as possible using these components. So, higher is the explained variance, higher will be the information contained in those components.
#To compute the proportion of variance explained by each component, we simply divide the variance by sum of total variance. This results in:
#proportion of variance explained
prop_varex <- pr_var/sum(pr_var)
prop_varex[1:5]
# This shows that first principal component explains 36.1% variance. Second component explains 1.92% variance. Third component explains 1.1% variance and so on. So, how do we decide how many components should we select for modeling stage ?
#scree plot
plot(prop_varex, xlab = "Principal Component",
       ylab = "Proportion of Variance Explained",
       type = "b")
# The plot shows that 2 component explain about 99% variance in the data. In other words using PCA we now know there are 4 components in the data that explain maximum variance. Let’s do a confirmation check, by plotting a cumulative variance plot. This will give us a clear picture of number of components.
#cumulative scree plot
plot(cumsum(prop_varex), xlab = "Principal Component",
       ylab = "Cumulative Proportion of Variance Explained",
       type = "b")
