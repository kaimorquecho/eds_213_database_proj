# U.S Asthma and Air Quality Database (2020–2022)

This project explores the relationship between air quality and asthma-related emergency room visits in the United States from 2020 to 2022. It investigates whether counties experiencing poor air quality—with most extreme values due to wildfire activity—also saw elevated rates of asthma emergencies.

### Data Sources

-   **EPA Outdoor Air Quality Data**\
    <https://www.epa.gov/outdoor-air-quality-data>
    -   Pre-generated data files can be downloaded by going to the Annual Summary Data table, AQI by County column, and clicking on desired years' zip file.
-   **CDC Environmental Public Health Tracking Network**\
    <https://ephtracking.cdc.gov/DataExplorer/>
    -   Desired data is queried via the Query Panel
        -   Under 'Content'
            -   Select 'Asthma'
            -   Select 'Emergency Department Visits For Asthma'
            -   Select 'Annual Number of Emergency Department Visits for Asthma'
        -   Under 'Geography Type' select 'National By County'
        -   Under 'Time' select 2020, 2021, and 2022.
    -   Download file

### Methods

-   Data cleaning and transformation using R (`tidyverse`, `janitor`, `lubridate`)
-   Environment managed with `renv`
-   Data loaded into a DuckDB database
-   Analysis conducted with SQL queries in VS Code
-   Key query: identifying counties with the highest asthma ER visits and comparing them to peak AQI levels during wildfire-heavy years

### Repository Structure

This repository contains all scripts, data, and resources used to explore the relationship between air quality and asthma emergency room visits in U.S. counties from 2020–2022. It was developed for the course **EDS 213: Data Management** at **UC Santa Barbara**.

------------------------------------------------------------------------

#### Files

-   `data_exploration_and_cleaning.Rmd` / `.html`\
    R Markdown document and rendered HTML for cleaning, QA/QC, and exploratory checks.

-   `create-database-asthma-emergencies.sql`\
    SQL script used to define tables, enforce constraints, and load cleaned data into DuckDB.

-   `dependencies.txt`\
    Summary of R version and package dependencies.

-   `renv.lock`\
    Auto-generated lockfile capturing package versions used.

-   `README.md`\
    Project overview, data sources, usage instructions, and structure.

-   `eds_213_database_proj.Rproj`\
    RStudio project file.

------------------------------------------------------------------------

#### Folders

-   `data/`\
    Contains cleaned CSVs and the final DuckDB database:
    -   `asthma_emergencies_clean.csv`\
    -   `annual_aqi_clean.csv`\
    -   `asthma_aqi_data_2020_2022.duckdb`
-   `renv/`\
    `renv` package environment folder (excluded from version control).

## Acknowledgments

This project was completed as part of EDS 213: Data Management, a graduate course at the Bren School of Environmental Science & Management, UC Santa Barbara.\
Special thanks to Professors Greg Janée and Julien Brun, and Annie Adams for their instruction and guidance.
