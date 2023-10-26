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

![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/Dashboard%20COVID-19%20Growth%20in%20Indonesia.png)

The data used is based on Indonesia to show the growth of COVID-19 every month from 2020 until 2023.
#### Number of COVID-19 Infection
- COVID-19 entered Indonesia in March 2020 with number of infections at 1,532 people. 1,532 is 0.074% of the population of Indonesia.
- In March 2020, the number of cases increased until the end of the year from 1,532 to 743,198 people, increasing by 48,283.12% or 741,666 people.
- In 2021, the number of cases increased until the end of the year from 1,078,314 to 4,262,720 people, increasing by 295.99% or 3,184,406 people.
- In 2022, the number of cases increased until the end of the year from 4,353,370 to 6,719,815 people, increasing by 54.37% or 2,366,445 people.
- In 2023, the number of cases increased until October 2023 from 6,730,016 to 6,813,429, increasing by 1.24% or 83,413 people.

#### Number of People Vaccinated
- After the emergence of COVID-19, data emerged regarding vaccine use for the first time in Indonesia by 493,133 in January 2021.
- In January 2021, the number of people vaccinated increased until the end of the year from 493,133 to 161,082,857 people, increasing by 32,621.02% or 160,589,724 people.
- In January 2022, the number of people vaccinated increased until the end of the year from 184,608,997 to 203,575,051 people, increasing by 10.30% or 18,966,054 people.
- In January 2023, the number of people vaccinated increased until June from 203,657,525 to 203,845,350 people, increasing by 0.092% or 187,825 people.

#### Number of Deaths
- Data on deaths during the pandemic began to be recorded in March 2020 at 136 people.
- In March 2020, the number of deaths increased until the end of the year from 136 to 22,138 people, increasing by 16,117.65% or 22,002 people. 
- In January 2021, the number of deaths increased until the end of the year from 29,998 to 144,095 people, increasing by 380.13% or 114,097 people.
- In January 2022, the number of deaths increased until the end of the year from 144,320 to 160,612 people, increasing by 11.27% or 16,292 people.
- In January 2023, the number of deaths increased until October 2023 from 160,814 to 161,918 people, increasing by 0.686% or 1,104. people.

#### In Percentage
This graphic shows the total percentage of COVID-19 cases and deaths every month from 2020 until 2023.
- Population of Indonesia is 275501344 based on the data.
- The highest COVID-19 percentage in July 2021 at 0,44%. It means the addition of COVID-19 cases in a month was 1,214,006 people.
- The highest death percentage in August 2022 at 0,014%. It means the addition of deaths in a month was 38,770 people.
- The total of people vaccinated in June 2023 was 73.99%. 203,845,350 people vaccinated in total from 2020 to 2023

#### Conclusion
Based on the short analysis, I can inform you that the number of COVID-19 infections continues to increase until its peak in 2021 is 3,184,406 people in a year. Same with the number of deaths continues to increase until its peak in 2021 is 114,097 people in a year. After we took the first vaccine in January 2021, the number of people vaccinated increased from 493,133 to 161,082,857 people, increasing by 32,621.02% or 160,589,724 people in a year. In 2022, COVID-19 Infection decreased to 2,366,445 and the number of deaths decreased to 16,292 in a year. It's continuously decreased until 2023. It can be concluded that an increase in vaccinations results in a decrease in COVID-19 cases and deaths. 

### 4. Comparing Across Continents
![](https://github.com/AinulMr/DataAnalyst_Covid/blob/main/Dashboard%20Vaccination%20Compare%20Across%20Continents.png)

This chart shows us about average vaccination in each continent and how the COVID-19 cases and deaths during the pandemic from 2020 to 2023.

#### Average Vaccination Across Continent
- Asia in the first place with the highest average vaccination from 2020 to 2023 at 2,697,161,339.
- Oceania in last place with the lowest average vaccination from 2020 to 2023 at 21,782,549.

#### Total People Vaccination Across Continent 2020 - 2023
- In 2020, Africa and Oceania are the continents that didn't take the vaccine or the data is null.
- In Africa 2021, total vaccination increased from 193,644,216 to 553,200,675 in 2023, increasing by 185.11% or 359,556,459 people.
- In Asia, total vaccination increased from 1,058,055 in 2020 to 3,686,236,971 in 2023, increasing by 349,085.98% or 3,685,178,916 people.
- In Europe, total vaccination increased from 431,136 in 2020 to 523,153,709 in 2023, increasing by 121,056.93% or 522,722,573 people.
- In North America, total vaccination increased from 5,691,505 in 2020 to 458,523,091 in 2023, increasing by 7,999.83% or 452,831,586 people.
- In Oceania, total vaccination increased from 26,305,175 in 2021 to 28,959,949 in 2023, increasing by 10.08% or 2,654,774 people.
- In South America, total vaccination increased from 52,042 in 2020 to 375,416,586 in 2023, increasing by 721,471.23% or 375,364,544 people.

#### Total COVID-19 Cases Accros Continent 2020 - 2023
- In Africa, total COVID-19 cases increased from 2,747,852 in 2020 to 13,113,368 in 2023, increasing by 377.91% or 10,365,516 people.
- In Asia, total COVID-19 cases increased from 20,502,359 in 2020 to 300,657,724 in 2023, increasing by 1366.15% or 280,155,365 people.
- In Europe, total COVID-19 cases increased from 23,229,749 in 2020 to 249,600,407 in 2023, increasing by 973.68% or 226,370,658 people.
- In North America, total COVID-19 cases increased from 22,699,515 in 2020 to 124,491,980 in 2023, increasing by 448.76% or 101,792,465 people.
- In Oceania, total COVID-19 cases increased from 55,184 in 2020 to 124,491,980 in 2023, increasing by 448.76% or 101,792,465 people.
- In South America, total COVID-19 cases increased from 55,184 in 2020 to 124,491,980 in 2023, increasing by 448.76% or 101,792,465 people.

#### Total Deaths Across Continent 2020-2023
- In Africa, total deaths increased from 65,052 in 2020 to 259,021 in 2023, increasing by 298.69% or 193,969 people.
- In Asia, total deaths increased from 335,889 in 2020 to 1,633,780 in 2023, increasing by 386.44% or 1,297,891 people.
- In Europe, total deaths increased from 578,483 in 2020 to 2,078,570 in 2023, increasing by 259.47% or 1,500,087 people.
- In North America, total deaths increased from 536,063 in 2020 to 1,603,320 in 2023, increasing by 199.95% or 1,067,257 people.
- In Oceania, total deaths increased from 1,193 in 2020 to 29,896 in 2023, increasing by 2,407.79% or 28,703 people.
- In South America, total deaths increased from 420,059 in 2020 to 1,356,420 in 2023, increasing by 223.92% or 936,361 people.

#### In Percentage
- South America has the highest vaccination percentage across the continent at 85.94% of the population in South America. It's 375,364,544 people.
- Europe has the highest COVID-19 percentage across the continent at 33.51% of the population in Europe, it's 249,600,407 people.
- South America has the highest death percentage across the continent at 0,31% of the population in South America. It's 1,356,420 people

#### Conclusion
Based on the short analysis, Every continent experienced a significant increase in the number of COVID-19 cases and deaths from 2020 to 2021. But from 2022 to 2023 the number of COVID-19 cases and deaths did not significantly increase after 70.53% population in the world took the vaccine against the spread of COVID-19. So I can conclude, that vaccination did pretty well in reducing the number of COVID-19 cases and deaths based on the data which I analyzed.
