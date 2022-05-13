# Shopify Fall 2022 Challenge - Analysis By [Jihad Al-Hussain](https://www.github.com/jqh84)

## The Problem 
The problem of this challenge is to find out why we are getting a higher than expected average order value or AOV of $3145.13 when the shopify store data is only selling sneakers which are a relatively low cost item.

## 

## Data Preparation & Exploration
The raw data was downloaded and stored locally for further review. The spreadsheet was reviewed using Excel to have an understanding of the data. below are some insights that were gathered:

- The average order value of 3145.13 seems to be due to multiple high order amounts that were recorded above $25000 with the lowest amount next to that being $1760.
- 64 counts on these outlier numbers were found in the dataset with order between ~ $25725 and $704000.

![Filter View from Excel](/imgs/Order_amount_filter_excel.png)
- Shop No. 42 seems to the only shop that the large order amount of $704000 was found in and the orders belong to user_id 607. 
- The high value transactions seemed to be from two stores (42 and 78) and total of 46 distinct users id's to have made those transactions.

![Shops and Users Pivot](/imgs/Store_id_pivot.png)
- At this point the data was loaded into Pandas using Python and jupyter notebook to have a more in depth look at the data.

## The Analysis Process 
- The initial data exploration done with excel revealed that average order value was caused by several outliers from a 
- Verify the data integrity by checking that the expected columns represent what we expect.
- Clean the data for any missing or incorrect data.
- Document the data cleaning process in a separate document. or use some software like jupyter notebooks and python. 

## 

