![Shopify](https://cdn.shopify.com/s/files/1/0611/1605/5788/t/2/assets/shopify-internships-logo.svg)

# Shopify Fall 2022 Challenge - Analysis 
By [Jihad Al-Hussain](https://www.github.com/jqh84) - github.com/jqh84

## The Problem 
The problem of this challenge is to find out why we are getting a higher than expected average order value or AOV of $3145.13 when the shopify store data is only selling sneakers which are a relatively low cost item.

## Data Preparation & Exploration
The raw data was downloaded and stored locally for further review. The spreadsheet was reviewed using Excel to have an understanding of the data. below are some insights that were gathered:

- The average order value of 3145.13 seems to be due to multiple high order amounts that were recorded above 25000 with the lowest amount next to that being $1760.
- 64 counts on these outlier numbers were found in the dataset with order between  25725 and 704000.

![Filter View from Excel](imgs/Order_amount_filter_excel.png)
- Shop No. 42 seems to the only shop that the large order amount of $704000 was found in and the orders belong to user_id 607. 
- The high value transactions seemed to be from two stores (42 and 78) and total of 46 distinct users id's to have made those transactions.

![Shops and Users Pivot](imgs/Store_id_pivot.png)
- At this point the data was loaded into Pandas using Python and jupyter notebook to have a more in depth look at the data.

### Data cleaning in Python Pandas
The data was loaded as a csv into a pandas dataframe so that i could easily work with it for plotting and any statistical methods. 

Since we identified that the outlier transactions are coming from multiple users and two distinct stores, It is worth investigating further by constructing some visuals using Python (PyViz) to play with the data and extract more information and insights from it.


## The Analysis Process 
- The initial data exploration done with excel revealed that average order value was caused by several outliers from two stores and multiple users
- Verify the data integrity by checking that the expected columns represent what we expect.
- Clean the data for any missing or incorrect data.
- Document the data cleaning process in a separate document. or use some software like jupyter notebooks and python. 

## Conculsions and Insights Summary
- if we assume there is no issues in the order amount values then a simple avarage is not the best way to measure the perforamnce.
- other metrics can be sales per store per time of day and based on this dataset all sales were from March 2017 

