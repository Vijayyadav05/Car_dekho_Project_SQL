create database car;
use car;
show tables;
select * from car_dekho;
-- Read cars data--
select * from car_dekho;
-- Total Cars: To get a count of total records --
select count(*) from car_dekho;
--  The manager asked the employee How many cars will be available in 2023? --
select count(*) from car_dekho where year=2023;
-- The manager asked the employee How many cars will be available in 2020,2021,2022? --
select count(*) from car_dekho where year between 2020 and 2022 group by year;
select count(*) from car_dekho where year in(2020,2021,2022) group by year;
-- Clint asked me to print the total of all cars by year. I don't see all the details --
select year, count(*) from car_dekho group by year;
-- Client asked to car delers agent How many diesel cars will there be in 2020 --
select * from car_dekho;
select * from car_dekho where fuel='diesel' and year=2020;
-- Client requested a car dealer agent How petrol cars will there be in 2020? --
select * from car_dekho where fuel='petrol' and year=2020;
-- The manager told the employee to give a print all the fuel cars (petrol, diesel and CNG) come by all year --
select year,count(*) from car_dekho where fuel='petrol' group by year;
select year,count(*) from car_dekho where fuel='diesel' group by year;
select year,count(*) from car_dekho where fuel='CNG' group by year;
# or
select year, fuel,count(*) from car_dekho group by year,fuel order by year,fuel;
# or
select year,fuel,count(*) over (partition by fuel order by year) as total_car 
from car_dekho where fuel in('petrol','diesel','CNG') order by fuel,year;
-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
select year,count(*) from car_dekho group by year having count(*)>100;
-- The manager said to the employee all cars count detais between 2015 and 2023 we ned a complete list --
select year, count(*) from car_dekho where year between 2015 and 2023 group by year;
-- The manager said to the employee All cars details between 2015 to 2023 we need complete list --
select * from car_dekho where year between 2015 and 2023 order by year;
-- The manager said to the employee all cars details that have mileage more than 30kmpl --
select * from car_dekho where mileage >30;
-- The manager said to the employee all cars that have fueltype 'CNG' and the selling price less than 300000 --
select * from car_dekho where fuel='CNG' and selling_price<= 300000;
-- List the top 5 most expensive cars sold in year 2020. --
select selling_price,fuel,owner,mileage from car_dekho where year=2020
order by selling_price desc limit 5;
 -- Determine the average mileage for each fuel type. --
 select fuel, avg(mileage) as average_mileage from car_dekho group by fuel order by average_mileage desc;
                             -- Thank You --   
 
