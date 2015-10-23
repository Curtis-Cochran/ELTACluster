ELTA with Clustering
========================================================
author: Curtis Cochran  
date: Fri Oct 23 12:52:09 2015
width: 1800
height: 1200
transition: rotate

Introducing ELTA with Clustering
========================================================

ELTA stands for External Lead Transformation Application. ELTA is ideal if you work in an environment where you have to constantly transform and cleanse data in preparation for use in other applications such as R or for import into other systems. 

You can use ELTA for the following tasks:

- Formatting Column Headers
- Removing Columns and Rows
- Hierchical Clustering for Quick Segmentation (New Feature!)


Formatting and Removing Columns and Rows
========================================================
left: 40%

Often times column headers have unwanted characters or different cases that need to be cleaned up so that you can code more efficiently or just for cleaner presentation. 

You may also want to remove columns or rows that are not needed for a particular analysis.

***


```
   State_Abbr                             Exec.tiTle 
 GA     : 90   Owner                           :143  
 CA     : 84   Chief Executive Officer         : 89  
 NY     : 43   Finance Executive               : 44  
 TX     : 35   Chief Financial Officer         : 21  
 FL     : 26   Ceo                             : 13  
 VA     : 21   Dallas Financial Service Partner:  7  
 (Other):201   (Other)                         :183  
                        INDUSTRY               EmployEEs  
 Business Services          :214   101-250 employees: 35  
 Computer Software          :114   11-25 employees  :181  
 Media                      : 41   26-50 employees  :105  
 Computer Services          : 39   51-100 employees :162  
 Consumer Services          : 32   6-10 employees   : 17  
 Telecommunications Services: 30                          
 (Other)                    : 30                          
```


Hierchical Clustering
========================================================
left: 30%
![plot of chunk unnamed-chunk-2](ELTA_w_Clustering-figure/unnamed-chunk-2-1.png) 

***

Within ELTA, you can create a hierchical clustering of your data based on inputs that you specify. 

In this plot, you can see how the observations are distributed across the clusters that were created to get an idea of the size of each of your clusters. 

Additionally, you can download the resulting data set from ELTA so that you can explore the clusters further in R or use to test certain scenarios or predictions.

Summary
========================================================
left: 30%

ELTA can simply your transformation and cleansing processes and allow more time for exploration and analysis. 

You can view the application [here](https://jccochran.shinyapps.io/ELTA_DataScience) or find the source files located here: [https://github.com/Curtis-Cochran/ELTACluster](https://github.com/Curtis-Cochran/ELTACluster).

***

![alt text](ELTA.png)



