-- The main data table we are going to be using
select 
* from CovidDeaths
order by 1,2

select 
* from CovidVaccinations
order by 3,4

-- Update data type
select 
* from CovidDeaths
order by 3,4

select 
* from CovidVaccinations
order by 3,4

EXEC sp_columns N'CovidDeaths';
EXEC sp_columns N'CovidVaccinations';

ALTER TABLE CovidDeaths
ALTER COLUMN population float;

ALTER TABLE CovidDeaths
ALTER COLUMN total_cases float;

ALTER TABLE CovidDeaths
ALTER COLUMN total_deaths float;

ALTER TABLE CovidDeaths
ALTER COLUMN new_cases float;

ALTER TABLE CovidDeaths
ALTER COLUMN new_deaths float;

ALTER TABLE CovidVaccinations
ALTER COLUMN new_vaccinations float;

-- select data that we are going to be using

select location, date, total_cases, new_cases, total_deaths, population
from CovidDeaths
order by 1,2

-- 1. Which country has the highest COVID-19 cases?

select 
	location,
	MAX (total_cases) as HighInfectionCount, 
	population,
	Max((total_cases/population))*100 as CovidPrecentage
from CovidDeaths
--where location like '%indonesia%'
group by location, population
order by 4 desc

-- 2. Which country has the highest Death percentage based on COVID-19 cases?

select 
	location,
	sum (new_cases) as total_cases, 
	sum(new_deaths) as total_deaths, 
	case
		WHEN SUM(new_cases) = 0 THEN NULL
        ELSE (SUM(new_deaths) / NULLIF (SUM(new_cases),0)) * 100
		end as DeathPercentage
from CovidDeaths
where continent is not null
group by location
order by DeathPercentage desc

-- 3. How did COVID-19 cases grow in Indonesia in 2020?

SELECT 
    location,
    date,
    SUM(new_cases) as total_cases,
    SUM(population) as population,
	(SUM(new_deaths)) / (SUM(population))* 100 AS CovidPercentage
FROM CovidDeaths
WHERE location = 'Indonesia' and year(date)=2020
GROUP BY location, date
ORDER BY date

-- 4. How does Vaccination affect the COVID-19 cases?

-- based on location (country)

with popvsvacc (
	continent, 
	location,
	date,
	population,
	total_cases,
	total_deaths,
	new_vaccinations, 
	TotalPeopleVaccinated
	) 	
as
(
Select 
	dea.continent, 
	dea.location, 
	dea.date,
	dea.population,
	dea.total_cases,
	dea.total_deaths,
	vac.new_vaccinations,
	sum(new_vaccinations) 
		over (
		partition by dea.location 
		order by dea.location, dea.date
		) as TotalPeopleVaccinated
	from CovidDeaths as dea
	join CovidVaccinations as vac
		on dea.location = vac.location
		and dea.date = vac.date
	where dea.continent is not null
		
)
SELECT *, year(date) as tahun, (TotalPeopleVaccinated/population) VaccPercentage
FROM popvsvacc
order by tahun desc

--based on continent 

with popvsvacc (
	continent, 
	location,
	date,
	populationcontinent,
	totalcasescontinent,
	totaldeathscontinent,
	new_vaccinations, 
	TotalPeopleVaccinated
	) 	
as
(
Select
	dea.continent,
	dea.location,
	dea.date,
	max(dea.population) over (
		partition by dea.continent 
		order by dea.continent, dea.date
		) populationcontinent,
	max(dea.total_cases)over (
		partition by dea.continent 
		order by dea.continent, dea.date
		) totalcasescontinent,
	max(dea.total_deaths)over (
		partition by dea.continent 
		order by dea.continent, dea.date
		) totaldeathscontinent,
	vac.new_vaccinations,
	sum(new_vaccinations) 
		over (
		partition by dea.continent 
		order by dea.continent, dea.date
		) as TotalPeopleVaccinated
	from CovidDeaths as dea
	join CovidVaccinations as vac
		on dea.location = vac.location
		and dea.date = vac.date
	where dea.continent is not null
	)

SELECT *, year(date) as tahun, (TotalPeopleVaccinated/populationcontinent) VaccPercentage
FROM popvsvacc
order by tahun

