# Data warehouse
Analysis of programmers' employment in Europe 2018-2021 using [data warehouse](https://github.com/itstats/programmers_salaries).

## Overview
1. Analisys of data quality - [document in polish](Projekt&#32HD-254534-Sproska&#322022.pdf)
2. Data normalization and inport into database using [integration services](Earnings_IntegrationServices), scripts used in this step, creating:
   1. [Destination tables](employment_create_destination.sql) where final data is stored
   2. [Library tables](employment_create_libraries.sql) for asserting string attriubutes correction
   3. [Temorary tables](employment_create_temp.sql) needed for normalization of data
3. Data analysis - creating cube and graphs using [multidimensional project](Earnings_MultidimensionalProject), scripts used for creating:
   1. [Group attributes](employment_multidimensional.sql) for attributes with wide range of values

![image](https://user-images.githubusercontent.com/61067969/174017209-ff11f98c-2aed-43bb-a0ae-11774abf3304.png)

![image](https://user-images.githubusercontent.com/61067969/174017256-a0d7aac9-360e-401c-a265-386244bd3237.png)

![image](https://user-images.githubusercontent.com/61067969/174017276-e5c839ef-22e3-4d75-b131-312433a8def7.png)

![image](https://user-images.githubusercontent.com/61067969/174017311-56c60584-cbe3-455f-8293-6584a86688fa.png)

![image](https://user-images.githubusercontent.com/61067969/174017364-99a652ce-4de9-49ad-8d41-67468c9341bd.png)

![image](https://user-images.githubusercontent.com/61067969/174017383-e198d958-7651-43d2-92ee-58a9ec54c6da.png)

![image](https://user-images.githubusercontent.com/61067969/174017395-5f07e203-b52d-4813-9252-5894d20a610f.png)

![image](https://user-images.githubusercontent.com/61067969/174017412-5bdac1e5-dcdd-4961-97e7-0893d7637c0e.png)
