# Are we safe from COVID-19 now?

![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/3877986.jpg)

## Introduction
COVID-19, short for "Coronavirus Disease 2019," is a highly contagious and potentially severe respiratory illness caused by the novel SARS-CoV-2. It was first identified in Wuhan, China, in late 2019 and has since spread globally, leading to a pandemic. COVID-19 is primarily transmitted through respiratory droplets when an infected person coughs, sneezes, or talks. Common symptoms include fever, cough, and difficulty breathing, although it can range from mild to severe, with some cases leading to hospitalization and death. Public health measures such as vaccination, mask-wearing, social distancing, and hand hygiene have been essential in managing its spread. The COVID-19 pandemic has had far-reaching impacts on healthcare systems, economies, and daily life worldwide, prompting widespread efforts to control and mitigate its effects.

Today, I will delve into the data related to COVID-19, examining the impact of COVID-19 on the number of deaths and the impact of the vaccination from 2020 to 2023

## Datasets
I got the data from [here](https://ourworldindata.org/covid-deaths) on Our World in Data and downloaded it on 15 ‎October ‎2023. This data contains information about COVID-19 such as country, population, number of people infected, number of people who died, number of people who were vaccinated, and so on as the main data source for analysis.

## Problem Statement
1. Which country has the highest COVID-19 cases?
2. Which country has the highest Death percentage based on COVID-19 cases?
3. How did COVID-19 cases grow in Indonesia in 2020?
4. How do total COVID-19 cases, total deaths, and vaccination rates compare across continents or geographic regions? Are there significant differences between these regions?

## Analysis method
I use SQL Server Management Studio and Tableau for the Analysis
1. SQL Server Management Studio is used for data cleaning, joining tables, manipulation of data and aggregation of data 
2. Tableau is used to create a better look for the data and informative visualizations.

## Data Pre-processing
In this section, we are required to tidy the data first before we get initial insight from the Exploratory Data Analysis step
1. Import required main data tables like Covid Deaths and Covid Vaccinations
2. Deleting Irrelevant Rows
3. Change the data type
4. Select the required variable
5. Dealing with Null values

## SQL Script
Here is my whole SQL script for this project. [SQL Script](CleanQuery.sql)

## Analysis and Conclusion
### 1. COVID-19 Infection
![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/COVID-19%20Infection.png)

#### Infection Count
The data used is based on 2020 to 2023 and I showed the list top 20 countries with the highest COVID-19 Infection. From this table, we can analyze:
  - France has the highest COVID-19 infection until 2023. There were 38,997,490 people infected with Covid-19.
  - Second place is South Korea with a number that is not much different from France. There were 34,571,873 people infected with COVID-19.
  - The last place is Saint Pierre and Miquelon has the lowest COVID-19 Infection at 3,426 people.

#### COVID-19 Infection Percentage
With this variable, we can see the COVID-19 infection percentage based on the population of a country. From this table, we can analyze:
  - Cyprus has the highest COVID-19 infection percentage at 73,76%. There were 660,854 of 896,007 people infected with COVID-19.
  - Second place San Marino with 73,30%. There were 24,695 of 33,690 people infected with COVID-19.
  - The last place is Latvia has the lowest COVID-19 infection percentage at 52,76%. There were 976,316 of 1,850,654 people infected with COVID-19.

#### Conclusion
Based on the short analysis, I can inform the country with the highest COVID-19 infections France with 38,997,490 people infected with COVID-19 which has a 57,51% COVID-19 infection percentage. This means, only half of the whole France population is infected by COVID-19. While Cyprus only has 660,854 people infected with COVID-19. It's much better than France with 38,997,490 people infected with COVID-19 but, in Cyprus, the COVID-19 infection percentage is at 73,76%. It means if you live in Cyprus you have a chance of getting infected by COVID-19 at 73,76%.





