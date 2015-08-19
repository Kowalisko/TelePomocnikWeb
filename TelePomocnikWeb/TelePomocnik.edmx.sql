
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/28/2014 13:41:02
-- Generated from EDMX file: D:\Magisterka\Nowy folder\TelePomocnik\Telepomocnik_DB\TelePomocnik.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Baza];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Person]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Person];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Person'
CREATE TABLE [dbo].[Person] (
    [Id] int  NOT NULL,
    [Name] nchar(20)  NOT NULL,
    [Surname] nchar(50)  NOT NULL,
    [Phone] decimal(18,0)  NOT NULL,
    [Email] nchar(50)  NOT NULL,
    [Company] nchar(50)  NOT NULL,
    [CompanyAddress] nchar(80)  NOT NULL,
    [Job] nchar(20)  NOT NULL,
    [Comment] nvarchar(max)  NOT NULL,
    [DateContactAdd] datetime  NOT NULL,
    [DateLastContact] datetime  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] int  NOT NULL,
    [Name] nvarchar(20)  NOT NULL,
    [Surname] nvarchar(50)  NOT NULL,
    [Login] nchar(20)  NOT NULL,
    [Password] nchar(20)  NOT NULL,
    [IsAdmin] bit  NOT NULL,
    [IsLogged] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Person'
ALTER TABLE [dbo].[Person]
ADD CONSTRAINT [PK_Person]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------