
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/05/2017 09:42:45
-- Generated from EDMX file: C:\Users\1616442\Source\Repos\ProjetoWebForms\ProjetoWF\ProjetoWF\Models\BaseDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BancoCatalogo];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CategoriaJogo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jogos] DROP CONSTRAINT [FK_CategoriaJogo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Jogos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Jogos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(25)  NOT NULL,
    [Ativo] bit  NULL
);
GO

-- Creating table 'Jogos'
CREATE TABLE [dbo].[Jogos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(25)  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL,
    [CategoriaId] int  NOT NULL,
    [Ativo] bit  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Jogos'
ALTER TABLE [dbo].[Jogos]
ADD CONSTRAINT [PK_Jogos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoriaId] in table 'Jogos'
ALTER TABLE [dbo].[Jogos]
ADD CONSTRAINT [FK_CategoriaJogo]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriaJogo'
CREATE INDEX [IX_FK_CategoriaJogo]
ON [dbo].[Jogos]
    ([CategoriaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------