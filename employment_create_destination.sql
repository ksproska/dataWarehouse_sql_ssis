DROP TABLE IF EXISTS FactEarnings;
DROP TABLE IF EXISTS DimCompany;
DROP TABLE IF EXISTS DimDate;
DROP TABLE IF EXISTS DimWork;
DROP TABLE IF EXISTS DimTeam;
DROP TABLE IF EXISTS DimEmployee;
DROP TABLE IF EXISTS DimEmployment;

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='DimDate' AND XTYPE='U')
CREATE TABLE DimDate (
  DateKey INT IDENTITY(1,1) NOT NULL, 
  DateOffEmployment DATE NULL, 
  DayNumberOfMonth TINYINT NULL, 
  MonthNumberOfYear TINYINT NULL, 
  CalendarYear SMALLINT NULL, 
  CalendarQuarter TINYINT NULL,

  CONSTRAINT CHK_date_not_future CHECK(DateOffEmployment IS NULL OR DateOffEmployment <= GETUTCDATE()),
  CONSTRAINT CHK_date_not_too_far_past CHECK(YEAR(DateOffEmployment) IS NULL OR YEAR(DateOffEmployment) > 1970),
  CONSTRAINT PK_DateKey PRIMARY KEY (DateKey),
  CONSTRAINT UNQ_DateOffEmployment UNIQUE(DateOffEmployment)
); 

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='DimCompany' AND XTYPE='U')
CREATE TABLE DimCompany ( 
  CompanyKey INT IDENTITY(1,1) NOT NULL,
  CountryName VARCHAR(150) NULL, 
  CompanyType VARCHAR(50) NULL,

  CONSTRAINT PK_CompanyKey PRIMARY KEY (CompanyKey),
  CONSTRAINT UNQ_all_company UNIQUE(CountryName, CompanyType)
);

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='DimWork' AND XTYPE='U')
CREATE TABLE DimWork ( 
  WorkKey INT IDENTITY(1,1) NOT NULL,
  Speciality VARCHAR(100) NULL, 
  CoreProgrammingLanguage VARCHAR(50) NULL, 
  WorkForm VARCHAR(50) NULL,

  CONSTRAINT PK_WorkKey PRIMARY KEY (WorkKey),
  CONSTRAINT UNQ_all_work UNIQUE(Speciality, CoreProgrammingLanguage, WorkForm)
);

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='DimTeam' AND XTYPE='U')
CREATE TABLE DimTeam ( 
  TeamKey INT IDENTITY(1,1) NOT NULL,
  TeamSize SMALLINT NULL, 
  TeamType VARCHAR(50) NULL,

  CONSTRAINT PK_TeamKey PRIMARY KEY (TeamKey),
  CONSTRAINT CHK_team_size_positive CHECK(TeamSize > 1),
  CONSTRAINT CHK_team_size_smaller CHECK(TeamSize < 50),
  CONSTRAINT UNQ_all_team UNIQUE(TeamSize, TeamType)
);

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='DimEmployee' AND XTYPE='U')
CREATE TABLE DimEmployee ( 
  EmployeeKey INT IDENTITY(1,1) NOT NULL,
  Age SMALLINT NULL, 
  Sex CHAR(1) NULL, 
  ExperienceYearsIt SMALLINT NULL, 
  AcademicTitle VARCHAR(50) NULL, 
  EducationTowardsIt BIT NULL, 
  FirstLanguage VARCHAR(50) NULL, 
  KnowsEnglish BIT NULL,

  CONSTRAINT PK_EmployeeKey PRIMARY KEY (EmployeeKey),
  CONSTRAINT CHK_age_min_16 CHECK(Age >= 16),
  CONSTRAINT CHK_age_max_80 CHECK(Age <= 80),
  CONSTRAINT CHK_experience_positive CHECK(ExperienceYearsIt >= 0),
  CONSTRAINT CHK_experience_max CHECK(ExperienceYearsIt <= 60),
  CONSTRAINT UNQ_all_employee UNIQUE(Age, Sex, ExperienceYearsIt, AcademicTitle, EducationTowardsIt, FirstLanguage, KnowsEnglish)
);

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='DimEmployment' AND XTYPE='U')
CREATE TABLE DimEmployment (
	EmploymentKey INT IDENTITY(1,1) NOT NULL,
	FormOfEmployment VARCHAR(50) NULL, 
	Country VARCHAR(50) NULL, 
	FullTime BIT NULL, 
	PaidDaysOff BIT NULL, 
	Insurance BIT NULL, 
	TrainingSessions BIT NULL, 
	SalaryPaidMonthly BIT NOT NULL,

	CONSTRAINT PK_EmploymentKey PRIMARY KEY (EmploymentKey),
	CONSTRAINT UNQ_all_employment UNIQUE(FormOfEmployment, Country, FullTime, PaidDaysOff, Insurance, TrainingSessions, SalaryPaidMonthly)
);

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='FactEarnings' AND XTYPE='U')
CREATE TABLE FactEarnings (
	EarningsKey INT IDENTITY(1,1) NOT NULL,
	RatePerHour MONEY NOT NULL,

	EarningsDateKey INT NOT NULL, 
	EarningsCompanyKey INT NOT NULL, 
	EarningsWorkKey INT NOT NULL, 
	EarningsTeamKey INT NOT NULL, 
	EarningsEmployeeKey INT NOT NULL, 
	EarningsEmploymentKey INT NOT NULL, 
	
	CONSTRAINT FK_DateKey FOREIGN KEY (EarningsDateKey) REFERENCES DimDate (DateKey), 
	CONSTRAINT FK_CompanyKey FOREIGN KEY (EarningsCompanyKey) REFERENCES DimCompany (CompanyKey), 
	CONSTRAINT FK_WorkKey FOREIGN KEY (EarningsWorkKey) REFERENCES DimWork (WorkKey), 
	CONSTRAINT FK_TeamKey FOREIGN KEY (EarningsTeamKey) REFERENCES DimTeam (TeamKey), 
	CONSTRAINT FK_EmployeeKey FOREIGN KEY (EarningsEmployeeKey) REFERENCES DimEmployee (EmployeeKey),
	CONSTRAINT FK_EmploymentKey FOREIGN KEY (EarningsEmploymentKey) REFERENCES DimEmployment (EmploymentKey),
	
	CONSTRAINT CHK_rate_positive CHECK(RatePerHour > 0),
	CONSTRAINT CHK_rate_max CHECK(RatePerHour <= 100),
	CONSTRAINT UNQ_all_earnings UNIQUE(RatePerHour, EarningsDateKey, EarningsCompanyKey, EarningsWorkKey, 
	EarningsTeamKey, EarningsEmployeeKey, EarningsEmploymentKey)
);