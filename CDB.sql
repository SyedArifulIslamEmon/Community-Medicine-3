USE [CMedicineDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DoctorEntry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_DoctorEntry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Degree] [varchar](50) NULL,
	[Specialization] [varchar](50) NULL,
	[CenterID] [int] NULL,
	[ThanaID] [int] NULL,
	[DistrictID] [int] NULL,
 CONSTRAINT [PK_tbl_DoctorEntry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Dose]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Dose](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dose] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Dose] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Medicine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Medicine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Medicine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SendMedicine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_SendMedicine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictID] [int] NULL,
	[ThanaID] [int] NULL,
	[Center] [varchar](50) NULL,
	[MedicineName] [varchar](50) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tbl_SendMedicine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_TreatmentGiven]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_TreatmentGiven](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VoterID] [varchar](50) NULL,
	[ServiceGiven] [int] NULL CONSTRAINT [DF_tbl_TreatmentGiven_ServiceGiven]  DEFAULT ((0)),
	[Observation] [varchar](500) NULL,
	[Date] [datetime] NULL,
	[Doctor] [varchar](50) NULL,
	[Disease] [varchar](50) NULL,
	[Medicine] [varchar](50) NULL,
	[Dose] [varchar](50) NULL,
	[Meal] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Note] [varchar](50) NULL,
	[CenterID] [int] NULL,
	[ThanaID] [int] NULL,
	[DistrictID] [int] NULL,
 CONSTRAINT [PK_tbl_TreatmentGiven] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Disease_Entry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Disease_Entry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseName] [varchar](50) NOT NULL,
	[DiseaseDescription] [varchar](500) NOT NULL,
	[DiseaseTreatment] [varchar](500) NOT NULL,
	[DiseaseProcedure] [varchar](500) NOT NULL,
 CONSTRAINT [PK_tbl_Disease_Entry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_District]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_District](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [varchar](50) NOT NULL,
	[Population] [int] NULL,
 CONSTRAINT [PK_tbl_District] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CenterCreate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_CenterCreate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ThanaID] [int] NULL,
	[DistrictID] [int] NULL,
	[Code] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_CenterCreate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Thana]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Thana](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThanaName] [varchar](50) NOT NULL,
	[DistrictID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Thana] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CenterCreate_tbl_Thana]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CenterCreate]'))
ALTER TABLE [dbo].[tbl_CenterCreate]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CenterCreate_tbl_Thana] FOREIGN KEY([ThanaID])
REFERENCES [dbo].[tbl_Thana] ([ID])
GO
ALTER TABLE [dbo].[tbl_CenterCreate] CHECK CONSTRAINT [FK_tbl_CenterCreate_tbl_Thana]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Thana_tbl_District]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Thana]'))
ALTER TABLE [dbo].[tbl_Thana]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Thana_tbl_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[tbl_District] ([ID])
GO
ALTER TABLE [dbo].[tbl_Thana] CHECK CONSTRAINT [FK_tbl_Thana_tbl_District]
