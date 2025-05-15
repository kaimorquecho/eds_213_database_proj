-- .open data/processed/asthma_aqi_data_2020_2022.db

.nullvalue -NULL-

-- Create table for asthma emergency visits
CREATE TABLE asthma_emergencies (
    state_fips VARCHAR
        CHECK (length(state_fips) = 2),
    state VARCHAR NOT NULL,
    county_fips VARCHAR
        CHECK (length(county_fips) = 5),
    county VARCHAR NOT NULL,
    year INTEGER NOT NULL,  -- ✅ comma added
    er_visits INTEGER NOT NULL 
        CHECK (er_visits >= 0),
    PRIMARY KEY (state, county, year)
);

COPY asthma_emergencies
FROM 'data/processed/asthma_emergencies_clean.csv'
(HEADER TRUE, AUTO_DETECT TRUE);

-- Create table for annual AQI data
CREATE TABLE annual_aqi (
    state VARCHAR NOT NULL,
    county VARCHAR NOT NULL,
    year INTEGER NOT NULL,  -- ✅ comma added
    days_with_aqi INTEGER
        CHECK (days_with_aqi BETWEEN 0 AND 366),
    good_days INTEGER
        CHECK (good_days BETWEEN 0 AND 366),
    moderate_days INTEGER
        CHECK (moderate_days BETWEEN 0 AND 366),
    unhealthy_for_sensitive_groups_days INTEGER
        CHECK (unhealthy_for_sensitive_groups_days BETWEEN 0 AND 366),
    unhealthy_days INTEGER
        CHECK (unhealthy_days BETWEEN 0 AND 366),
    very_unhealthy_days INTEGER
        CHECK (very_unhealthy_days BETWEEN 0 AND 366),
    hazardous_days INTEGER
        CHECK (hazardous_days BETWEEN 0 AND 366),
    max_aqi INTEGER
        CHECK (max_aqi >= 0),
    x90th_percentile_aqi INTEGER
        CHECK (x90th_percentile_aqi >= 0),
    median_aqi INTEGER
        CHECK (median_aqi >= 0),
    days_co INTEGER
        CHECK (days_co BETWEEN 0 AND 366),
    days_no2 INTEGER
        CHECK (days_no2 BETWEEN 0 AND 366),
    days_ozone INTEGER
        CHECK (days_ozone BETWEEN 0 AND 366),
    days_pm2_5 INTEGER
        CHECK (days_pm2_5 BETWEEN 0 AND 366),
    days_pm10 INTEGER
        CHECK (days_pm10 BETWEEN 0 AND 366),
    PRIMARY KEY (state, county, year)
);

COPY annual_aqi
FROM 'data/processed/annual_aqi_clean.csv'
(HEADER TRUE, AUTO_DETECT TRUE);
