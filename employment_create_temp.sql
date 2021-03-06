DELETE FROM TempAllRecords;
DROP TABLE IF EXISTS TempAllRecords;
CREATE TABLE TempAllRecords (
	TempKey INT IDENTITY(1,1) NOT NULL, 
    [date_of_employment] DATE,
    [age] SMALLINT,
    [sex] VARCHAR(1),
    [country] VARCHAR(50),
    [experience_years_it] SMALLINT,
    [languages] VARCHAR(50),
    [speciality] VARCHAR(50),
    [core_programming_language] VARCHAR(50),
    [academic_title] VARCHAR(50),
    [education] VARCHAR(50),
    [education_towards_it] BIT,
    [rate_per_hour] MONEY,
    [salary_monthly] VARCHAR(50),
    [company_country] VARCHAR(50),
    [company_type] VARCHAR(50),
    [work_form] VARCHAR(50),
    [team_size] SMALLINT,
    [team_type] VARCHAR(50),
    [form_of_employment] VARCHAR(50),
    [full_time] BIT,
    [paid_days_off] BIT,
    [insurance] BIT,
    [training_sessions] BIT,
    [data_source] VARCHAR(50),
    [FirstLanguage] VARCHAR(50),
    [KnowsEnglish] BIT,
    [SalaryPaidMonthly] BIT NOT NULL,
    [CalendarYear] SMALLINT,
    [MonthNumberOfYear] TINYINT,
    [DayNumberOfMonth] TINYINT,
    [CalendarQuarter] TINYINT,

	CONSTRAINT CHK_temp_team_size_positive CHECK([team_size] > 1),
	CONSTRAINT CHK_temp_team_size_smaller CHECK([team_size] < 50),
	CONSTRAINT CHK_temp_age_min_16 CHECK(Age >= 16),
	CONSTRAINT CHK_temp_age_max_80 CHECK(Age <= 80),
	CONSTRAINT CHK_temp_experience_positive CHECK([experience_years_it] >= 0),
	CONSTRAINT CHK_temp_experience_max CHECK([experience_years_it] <= 60),
	CONSTRAINT CHK_temp_rate_positive CHECK([rate_per_hour] > 0),
	CONSTRAINT CHK_temp_rate_max CHECK([rate_per_hour] <= 100),
	CONSTRAINT CHK_temp_date_not_future CHECK([date_of_employment] IS NULL OR [date_of_employment] <= GETUTCDATE()),
	CONSTRAINT CHK_temp_not_too_far_past CHECK(YEAR([date_of_employment]) IS NULL OR YEAR([date_of_employment]) > 1970),
	CONSTRAINT CHK_temp_date_not_too_far_past CHECK([CalendarYear] IS NULL OR [CalendarYear] > 1970),
);
