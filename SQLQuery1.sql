
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/15/2019 02:28:18
-- Generated from EDMX file: C:\Users\Yulong Shi\source\repos\5032_asg\5032_asg\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Ships'
CREATE TABLE [dbo].[Ships] (
    [Ship_Id] int IDENTITY(1,1) NOT NULL,
    [Ship_Name] nvarchar(max)  NOT NULL,
    [Ship_Builder] nvarchar(max)  NOT NULL,
    [Lauch_Date] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cruises'
CREATE TABLE [dbo].[Cruises] (
    [Cruise_Id] int IDENTITY(1,1) NOT NULL,
    [Start_Date] nvarchar(max)  NOT NULL,
    [End_Date] nvarchar(max)  NOT NULL,
    [ShipShip_Id] int  NOT NULL
);
GO

-- Creating table 'Vists'
CREATE TABLE [dbo].[Vists] (
    [Cruise_Id] int IDENTITY(1,1) NOT NULL,
    [Port_Name] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [Arrive_Date] nvarchar(max)  NOT NULL,
    [Departure_Date] nvarchar(max)  NOT NULL,
    [CruiseCruise_Id] int  NOT NULL
);
GO

-- Creating table 'Toureds'
CREATE TABLE [dbo].[Toureds] (
    [Passenger_Id] int IDENTITY(1,1) NOT NULL,
    [Cruise_Id] nvarchar(max)  NOT NULL,
    [Tour_Id] nvarchar(max)  NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [PassengerPassenger_Id] int  NOT NULL,
    [CruiseCruise_Id] int  NOT NULL
);
GO

-- Creating table 'Passengers'
CREATE TABLE [dbo].[Passengers] (
    [Passenger_Id] int IDENTITY(1,1) NOT NULL,
    [Passenger_Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Ship_Id] in table 'Ships'
ALTER TABLE [dbo].[Ships]
ADD CONSTRAINT [PK_Ships]
    PRIMARY KEY CLUSTERED ([Ship_Id] ASC);
GO

-- Creating primary key on [Cruise_Id] in table 'Cruises'
ALTER TABLE [dbo].[Cruises]
ADD CONSTRAINT [PK_Cruises]
    PRIMARY KEY CLUSTERED ([Cruise_Id] ASC);
GO

-- Creating primary key on [Cruise_Id], [Port_Name], [Country] in table 'Vists'
ALTER TABLE [dbo].[Vists]
ADD CONSTRAINT [PK_Vists]
    PRIMARY KEY CLUSTERED ([Cruise_Id], [Port_Name], [Country] ASC);
GO

-- Creating primary key on [Passenger_Id], [Cruise_Id], [Tour_Id] in table 'Toureds'
ALTER TABLE [dbo].[Toureds]
ADD CONSTRAINT [PK_Toureds]
    PRIMARY KEY CLUSTERED ([Passenger_Id], [Cruise_Id], [Tour_Id] ASC);
GO

-- Creating primary key on [Passenger_Id] in table 'Passengers'
ALTER TABLE [dbo].[Passengers]
ADD CONSTRAINT [PK_Passengers]
    PRIMARY KEY CLUSTERED ([Passenger_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ShipShip_Id] in table 'Cruises'
ALTER TABLE [dbo].[Cruises]
ADD CONSTRAINT [FK_ShipCruise]
    FOREIGN KEY ([ShipShip_Id])
    REFERENCES [dbo].[Ships]
        ([Ship_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShipCruise'
CREATE INDEX [IX_FK_ShipCruise]
ON [dbo].[Cruises]
    ([ShipShip_Id]);
GO

-- Creating foreign key on [CruiseCruise_Id] in table 'Vists'
ALTER TABLE [dbo].[Vists]
ADD CONSTRAINT [FK_CruiseVist]
    FOREIGN KEY ([CruiseCruise_Id])
    REFERENCES [dbo].[Cruises]
        ([Cruise_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CruiseVist'
CREATE INDEX [IX_FK_CruiseVist]
ON [dbo].[Vists]
    ([CruiseCruise_Id]);
GO

-- Creating foreign key on [PassengerPassenger_Id] in table 'Toureds'
ALTER TABLE [dbo].[Toureds]
ADD CONSTRAINT [FK_PassengerToured]
    FOREIGN KEY ([PassengerPassenger_Id])
    REFERENCES [dbo].[Passengers]
        ([Passenger_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PassengerToured'
CREATE INDEX [IX_FK_PassengerToured]
ON [dbo].[Toureds]
    ([PassengerPassenger_Id]);
GO

-- Creating foreign key on [CruiseCruise_Id] in table 'Toureds'
ALTER TABLE [dbo].[Toureds]
ADD CONSTRAINT [FK_CruiseToured]
    FOREIGN KEY ([CruiseCruise_Id])
    REFERENCES [dbo].[Cruises]
        ([Cruise_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CruiseToured'
CREATE INDEX [IX_FK_CruiseToured]
ON [dbo].[Toureds]
    ([CruiseCruise_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------