## ELTA with Clustering

ELTA stands for External Lead Transformation Application. ELTA is ideal if you work in an environment where you have to constantly transform and cleanse data in preparation for use in other applications such as R or for import into other systems. You can use ELTA for the following tasks:

- Formatting Column Headers
- Removing Unnecessary Columns
- Editing Column Values
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

####Step 5: Select a Column to Edit Values
To adjust the values within a column, you can enter your column name in the “Column to Edit” box. This lets ELTA know which column you are adjusting. Be sure to type in the column name exactly as its current state. 

By default, ELTA will create a new column with the changes. If you no longer need the original column after making your edits, you can simply remove it using Step 4.

Next, enter the row value that you would like to update in the “Enter Value to Change” box and the value you want to change it to in the “Enter New Value” box. Click update and you’ll notice a new column called “newcolumn”.  After you’ve made your first update, the “Column to Edit” will default to your newly created column. After that, you can make subsequent value changes to your column. 

####Step 6: Download File to CSV
Now that you have transformed and cleaned your dataset, you can download the file to CSV for user elsewhere.
To download, enter the name of the CSV file you’d like to create and chose “Download File to CSV”.
I hope you found ELTA to be intuitive and easy to use.


Thanks,
Curtis
