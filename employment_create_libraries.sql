DROP TABLE IF EXISTS LibraryAcademicTitle;
DROP TABLE IF EXISTS LibraryCompanyType;
DROP TABLE IF EXISTS LibraryCoreProgrammingLanguage;
DROP TABLE IF EXISTS LibraryCountryName;
DROP TABLE IF EXISTS LibrarySex;
DROP TABLE IF EXISTS LibraryFirstLanguage;
DROP TABLE IF EXISTS LibraryWorkForm;
DROP TABLE IF EXISTS LibrarySpeciality;
DROP TABLE IF EXISTS LibraryTeamType;
DROP TABLE IF EXISTS LibraryFormOfEmployment;

CREATE TABLE [LibraryAcademicTitle] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryCompanyType] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryCoreProgrammingLanguage] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryCountryName] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibrarySex] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryFirstLanguage] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryWorkForm] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibrarySpeciality] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryTeamType] (
    [Name] VARCHAR(50)
)
CREATE TABLE [LibraryFormOfEmployment] (
    [Name] VARCHAR(50)
)
INSERT INTO [dbo].[LibraryAcademicTitle] VALUES (NULL);
INSERT INTO [dbo].[LibraryCompanyType] VALUES (NULL);
INSERT INTO [dbo].[LibraryCoreProgrammingLanguage] VALUES (NULL);
INSERT INTO [dbo].[LibraryCountryName] VALUES (NULL);
INSERT INTO [dbo].[LibraryFirstLanguage] VALUES (NULL);
INSERT INTO [dbo].[LibraryFormOfEmployment] VALUES (NULL);
INSERT INTO [dbo].[LibrarySex] VALUES (NULL);
INSERT INTO [dbo].[LibrarySpeciality] VALUES (NULL);
INSERT INTO [dbo].[LibraryTeamType] VALUES (NULL);
INSERT INTO [dbo].[LibraryWorkForm] VALUES (NULL);