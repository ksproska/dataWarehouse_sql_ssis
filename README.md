# Data warehouse
Analysis of programmers' employment in Europe 2018-2021 using [data warehouse](https://github.com/itstats/programmers_salaries).

## Overview
1. Analisys of data quality - [document in polish](Projekt%20HD-254534-Sproska%202022.pdf)
2. Data normalization and inport into database using [integration services](Earnings_IntegrationServices), scripts used in this step, creating:
   1. [Destination tables](employment_create_destination.sql) where final data is stored
   2. [Library tables](employment_create_libraries.sql) for asserting string attriubutes correction
   3. [Temorary tables](employment_create_temp.sql) needed for normalization of data

    Other files used in this step:
    1. [Source of libraries](AttributeLibraries) for allowed string attributes
    2. [Destination of errors](Errors) for different proplems that can occur during import of new data
    3. [Source from which data is imported](Source_csv_files) (ignoring subfolders) - file must have extension .csv and format of [this file]("Source_csv_files\archive\employments.csv")

3. Data analysis - creating cube and graphs using [multidimensional project](Earnings_MultidimensionalProject), scripts used for creating:
   1. [Group attributes](employment_multidimensional.sql) for attributes with wide range of values
4. Final analysis - [standalone graphs](Earnings_Graphs.xlsx) and [graphs with descriptions - document in polish](Projekt%20HD-254534-Sproska%202022.pdf)

# Planed normalization
![image](https://user-images.githubusercontent.com/61067969/174017209-ff11f98c-2aed-43bb-a0ae-11774abf3304.png)

# Tables created in database
![image](https://user-images.githubusercontent.com/61067969/174017256-a0d7aac9-360e-401c-a265-386244bd3237.png)

# Integration services
## Overview
![image](https://user-images.githubusercontent.com/61067969/174017276-e5c839ef-22e3-4d75-b131-312433a8def7.png)

## Importing libraries
![image](https://user-images.githubusercontent.com/61067969/174017311-56c60584-cbe3-455f-8293-6584a86688fa.png)

## Data normalization, cleaning, checking correction of string attributes, import to temorary table
![image](https://user-images.githubusercontent.com/61067969/174017364-99a652ce-4de9-49ad-8d41-67468c9341bd.png)

![image](https://user-images.githubusercontent.com/61067969/174017383-e198d958-7651-43d2-92ee-58a9ec54c6da.png)

## Creating unique dimmensions
![image](https://user-images.githubusercontent.com/61067969/174017395-5f07e203-b52d-4813-9252-5894d20a610f.png)

## Mapping keys for earnings fact
![image](https://user-images.githubusercontent.com/61067969/174017412-5bdac1e5-dcdd-4961-97e7-0893d7637c0e.png)

# Multidimensional project
## Final cube
![image](https://user-images.githubusercontent.com/61067969/174026489-52ebc056-bd5b-43cb-8b0a-26b1b9331cde.png)

## Adding average earings measure
![image](https://user-images.githubusercontent.com/61067969/174026527-442d4431-e623-4732-a6b1-f9779798d886.png)

# Analysis - samples
![image](https://user-images.githubusercontent.com/61067969/174026574-0b2cbf9a-d66f-43fb-963a-d7212d6ac00f.png)

![image](https://user-images.githubusercontent.com/61067969/174026617-0a444587-219e-4217-b49b-8ddbba1ba195.png)

![image](https://user-images.githubusercontent.com/61067969/174026659-f35007cc-f924-4be5-9928-dcda2aaefad7.png)

![image](https://user-images.githubusercontent.com/61067969/174026690-26fa07d1-85eb-45f2-ba1b-c977c6d57902.png)

![image](https://user-images.githubusercontent.com/61067969/174026721-18aa4985-0758-4144-9f9f-ea96b61a7b3e.png)

![image](https://user-images.githubusercontent.com/61067969/174026753-a1456dff-0515-46d2-a719-1095b3a43d69.png)

![image](https://user-images.githubusercontent.com/61067969/174026787-95082bc4-986b-4fcc-a39f-b3e2d1718116.png)

![image](https://user-images.githubusercontent.com/61067969/174026815-f4e4c653-3cfa-4424-84cd-2859d934f1ee.png)

![image](https://user-images.githubusercontent.com/61067969/174026856-71709067-6860-4088-bff4-9bb5796218d6.png)

![image](https://user-images.githubusercontent.com/61067969/174026882-e8626730-2347-43cf-a5d8-7ba8a281fa12.png)

![image](https://user-images.githubusercontent.com/61067969/174026905-a2dd6ed4-9255-49d4-968e-a14542e30560.png)

![image](https://user-images.githubusercontent.com/61067969/174026938-a120d9d6-4e80-4ca0-9bed-c3739960703c.png)

![image](https://user-images.githubusercontent.com/61067969/174026970-13198634-7c2f-4d94-9a8e-ae7fcdaaddc4.png)

![image](https://user-images.githubusercontent.com/61067969/174027006-2f1ba947-8f30-4e3e-a1d0-c49507021159.png)

![image](https://user-images.githubusercontent.com/61067969/174027034-f3e470b9-2aa4-4953-a697-d6dcc343406f.png)

![image](https://user-images.githubusercontent.com/61067969/174027055-3f4de63a-fefd-43da-84ee-d520e4c74399.png)

![image](https://user-images.githubusercontent.com/61067969/174027077-6fdcec0c-00ae-4f74-b58d-82699b7c806e.png)

![image](https://user-images.githubusercontent.com/61067969/174027098-777dab3e-37b7-4b06-bc22-8a44b2b96707.png)

![image](https://user-images.githubusercontent.com/61067969/174027119-9ce3dd36-5ecc-4278-b4f7-630a4735843d.png)
