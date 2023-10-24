# Are we really safe from COVID-19 now?

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
I used SQL Server Management Studio and Tableau for the Analysis
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

#### COVID-19 Infection Count
The data used is based on 2020 to 2023 and I showed the list of the top 20 countries with the highest COVID-19 Infection. From this table, we can analyze:
  - France has the highest COVID-19 infection until 2023. There were 38,997,490 people infected with Covid-19.
  - Second place is South Korea with a number that is not much different from France. There were 34,571,873 people infected with COVID-19.
  - The last place is Saint Pierre and Miquelon has the lowest COVID-19 Infection at 3,426 people.

#### COVID-19 Infection Percentage
With this variable, we can see the COVID-19 infection percentage based on the population of a country. From this table, we can analyze:
  - Cyprus has the highest COVID-19 infection percentage at 73,76%. There were 660,854 of 896,007 people infected with COVID-19.
  - Second place is San Marino at 73.30%. There were 24,695 of 33,690 people infected with COVID-19.
  - The last place is Latvia has the lowest COVID-19 infection percentage at 52.76%. There were 976,316 of 1,850,654 people infected with COVID-19.

#### Conclusion
Based on the short analysis, I can conclude the country with the highest COVID-19 infections is France with 38,997,490 people infected with COVID-19 which has a 57,51% COVID-19 infection percentage. It means that only half of France's population is infected by COVID-19. While Cyprus only has 660,854 people infected with COVID-19. It's much better than France with 38,997,490 people infected with COVID-19 but, in Cyprus, the COVID-19 infection percentage is at 73.76%.

### 2. COVID-19 Death Percentage
![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/COVID-19%20Death%20Percentage.png)

#### Total Deaths
The data used is based on 2020 to 2023 and I showed the list top 20 countries with the highest deaths during COVID-19 Infection. From this table, we can analyze:
- Mexico has the highest number of deaths during the pandemic COVID-19 with 334,669 people dying during the pandemic COVID-19.
- Second place is Peru with 221,704 people dying during the pandemic COVID-19.
- The last place is Liberia with 295 people dying during the pandemic COVID-19.

#### Death Percentage
In this variable, we can see the death percentage based on the number of people infected by COVID-19. From this table, we can analyze:
- Yemen has the highest death percentage during the pandemic COVID-19 at 18,07%. There were 2,159 of 11,945 people dying during the pandemic COVID-19.
- Second place is Sudan at 7.89&. There were 5,046 of 63,993 people dying during the pandemic COVID-19.
- The last place is Algeria at 2.53%. There were 6,881 of 271,928 people dying during the pandemic COVID-19.

#### Conclusion
Based on the short analysis, I can conclude the country with the highest number of deaths is Mexico with 334,669 people dying which has a 4.35% death percentage. It means, 334,669 of 7,692,369 people died during the COVID-19. In Yemen, only 2,159 people died during the pandemic COVID-19. It is less than Mexico's number of deaths but, in Yemen, the death percentage is at 18.07%.

### 3. COVID-19 Growth in Indonesia
![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/COVID-19%20Growth%20in%20Indonesia.png)

![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/COVID-19%20Cases%20Percentage.png)

The data used is based on Indonesia to show the growth of COVID-19 every month from 2020 until 2023.
#### Number of COVID-19 Infection
- COVID-19 entered Indonesia in March 2020 with number of infections at 1,532 people. 1,532 is 0.074% of the population of Indonesia.
- The highest cases of infection COVID-19 in July 2021 at 1,231,386 people infected. 1,231,386 is 0.447% of the population of Indonesia.
- At the end of 2021, COVID-19 cases decreased to 6,311 but, two months later number of number of infections increased to 1,211,078 people in February 2022.
- In 2022, COVID-19 cases decreased to 54,971 at the end of the year and the lowest point at 8,177 in May 2022.
- In 2023 the highest cases of infection COVID-19 in May at 32,792 people. 32,792 is 0.012% of the population of Indonesia.

#### Number of Vaccination
- In 2020 no one took the vaccine. The data about vaccines is null in 2020.
- In January 2021, data emerged regarding vaccine use for the first time by 366,439 people. it's only 0.1% of the population of Indonesia.
- The highest number of Vaccinations at 51,168,870 in October 2021. it's only 18.6 of the population of Indonesia.
- The number of vaccinations decreased to 23,193,705 in March 2022 until 0 in 2023.

#### Number of Death
- In 2020, the number of deaths continued to increase to 5,193 in December 2020. it's only 0.0019% of the population of Indonesia.
- The highest number of deaths in August 2021 at 38.904 people. it's only 0,0141% of the population of Indonesia. 
- At the end of 2021, the number of deaths decreased significantly to 264 people.
- In Early 2022, the number of deaths increased to 6,754 in March 2022 and decreased again to 782 at the of 2022
- In 2023 the highest number of deaths at 487 people. it's only 0.0000001 of the population of Indonesia.

#### Conclusion
Based on the short analysis, I can inform the first year of the COVID-19 pandemic is 2020, and the number of COVID-19 cases and deaths keep rising until January 2021. After we took the first vaccination in January 2021, the number of COVID-19 cases and deaths slowly decreased until May 2021 aslo the vaccination number too. But, significantly the number of COVID-19 cases and deaths rose again in July to 0,447% and 0.0129%. After that, the number of vaccinations rose in October 2021 to 18.6%. That is the highest number we got during the COVID-19 pandemic. The number of COVID-19 cases and deaths decreased until the end of 2021. In early 2022 The number of COVID-19 cases and deaths increased again and the number of vaccinations increased too. It can be concluded that an increase in vaccinations results in a decrease in COVID-19 cases and deaths.


