﻿USE [prueba]
GO
/****** Object:  User [Mate_13-PC\Mate_13]    Script Date: 17/02/2018 11:40:44 a.m. ******/
DROP USER [Mate_13-PC\Mate_13]
GO
USE [master]
GO
/****** Object:  Database [prueba]    Script Date: 17/02/2018 11:40:44 a.m. ******/
DROP DATABASE [prueba]
GO
/****** Object:  Database [prueba]    Script Date: 17/02/2018 11:40:44 a.m. ******/
CREATE DATABASE [prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\prueba.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'prueba_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\prueba_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [prueba] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prueba] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prueba] SET  MULTI_USER 
GO
ALTER DATABASE [prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prueba] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [prueba]
GO
/****** Object:  User [Mate_13-PC\Mate_13]    Script Date: 17/02/2018 11:40:44 a.m. ******/
CREATE USER [Mate_13-PC\Mate_13] FOR LOGIN [Mate_13-PC\Mate_13] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [master]
GO
ALTER DATABASE [prueba] SET  READ_WRITE 
GO
