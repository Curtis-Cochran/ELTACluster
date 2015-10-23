## ELTA with Clustering

ELTA stands for External Lead Transformation Application. ELTA is ideal if you work in an environment where you have to constantly transform and cleanse data in preparation for use in other applications such as R or for import into other systems. You can use ELTA for the following tasks:

- Formatting Column Headers
- Removing Unnecessary Columns and Rows
- Hierchical Clustering for Quick Segmentation (New Feature!)

In order to use the application, you will need a CSV format with UTF-8 encoding. If you do not have a CSV file handy, you can download an example here: XXXXXXX.

####Step 1. Choose a CSV file to upload:
Once you have located a CSV file, click the “Choose File” button, navigate to your CSV file, and select to open the file. ELTA will automatically load the data for you.

####Step 2: Format Column Headers
Many application require specific naming conventions for column headings. With ELTA, you can easily remove periods (.) and underscores (_) as well as change the case of the columns to all lowercase. This will help when trying to specify column names during your later analysis. 

Choose “Update Columns” and you’ll notice that the column headings have been adjusted. 

####Step 3: Choose Row Numbers to Remove
In some cases, your CSV file may have unwanted rows or observations that you would like to remove. ELTA will allow you to choose the specific row number that you would like to remove.

Type in the row number or use the up/down arrow keys to select the row number that you would like to delete and select the “Remove Rows” button.

####Step 4: Select Columns to Keep
If you don’t want to keep all of the column headers, then you can delete them from the Multi-Select List. 

Note: Once removed, you cannot add the columns back.


####Step 5: Clustering in ELTA
If you wish to cluster your uploaded data you can choose to "Create Clusters" specifying the "Number of Clusters" to create. ELTA will append the cluster to the dataset and plot the latest cluster. If you wish to try another number of clusters, change the "Number of Clusters" and re-click "Create Clusters". 

Note: The plot function always plots the last column in the dataset. If you want to see the plots of other variables in your data set, you can delete columns one at a time and see how each variable is distributed across your dataset. In future releases, ELTA will allow you to add back in columns but for now this feature is purely a by-product of plotting the last column to see the clustering affects.

####Step 6: Download File to CSV
Now that you have transformed and cleaned your dataset, you can download the file to CSV for user elsewhere.
To download, enter the name of the CSV file you’d like to create and chose “Download File to CSV”.
I hope you found ELTA to be intuitive and easy to use.


Thanks,
Curtis
