if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkGIANGKHOA_CHUONGTRINH]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[GIANGKHOA] DROP CONSTRAINT fkGIANGKHOA_CHUONGTRINH
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkLOP_CHUONGTRINH]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[LOP] DROP CONSTRAINT fkLOP_CHUONGTRINH
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkGIANGKHOA_KHOA]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[GIANGKHOA] DROP CONSTRAINT fkGIANGKHOA_KHOA
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkLOP_KHOA]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[LOP] DROP CONSTRAINT fkLOP_KHOA
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkMONHOC_KHOA]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[MONHOC] DROP CONSTRAINT fkMONHOC_KHOA
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkLOP_KHOAHOC]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[LOP] DROP CONSTRAINT fkLOP_KHOAHOC
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkSinhVien_Lop]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[SINHVIEN] DROP CONSTRAINT fkSinhVien_Lop
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkGIANGKHOA_MONHOC]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[GIANGKHOA] DROP CONSTRAINT fkGIANGKHOA_MONHOC
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkKETQUA_MONHOC]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[KETQUA] DROP CONSTRAINT fkKETQUA_MONHOC
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkKETQUA_SINHVIEN]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[KETQUA] DROP CONSTRAINT fkKETQUA_SINHVIEN
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fkXEPLOAI_SINHVIEN]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[XEPLOAI] DROP CONSTRAINT fkXEPLOAI_SINHVIEN
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CHUONGTRINH]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CHUONGTRINH]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GIANGKHOA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[GIANGKHOA]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[KETQUA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[KETQUA]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[KHOA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[KHOA]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[KHOAHOC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[KHOAHOC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LOP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LOP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MONHOC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MONHOC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SINHVIEN]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SINHVIEN]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[XEPLOAI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[XEPLOAI]
GO

CREATE TABLE [dbo].[CHUONGTRINH] (
	[MaCT] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenCT] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[GIANGKHOA] (
	[MaCT] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Khoa] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaMH] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[NamHoc] [int] NULL ,
	[Hocky] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Sotiet_LT] [int] NULL ,
	[Sotiet_TH] [int] NULL ,
	[Sotinchi] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KETQUA] (
	[MaSV] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaMH] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Lanthi] [int] NOT NULL ,
	[Diem] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KHOA] (
	[MaKhoa] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenKhoa] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NamThanhLap] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KHOAHOC] (
	[MaKhoahoc] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Nambatdau] [int] NULL ,
	[Namketthuc] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LOP] (
	[Khoahoc] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Khoa] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Chuongtrinh] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[STTLop] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MONHOC] (
	[MaMH] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenMH] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Khoa] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SINHVIEN] (
	[MaSV] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Hoten] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NamSinh] [datetime] NULL ,
	[Dantoc] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Khoahoc] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Khoa] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Chuongtrinh] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STTLop] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XEPLOAI] (
	[MaSV] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DiemTB] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KetQua] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HocLuc] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CHUONGTRINH] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaCT]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[GIANGKHOA] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaCT],
		[Khoa],
		[MaMH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[KETQUA] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaSV],
		[MaMH],
		[Lanthi]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[KHOA] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaKhoa]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[KHOAHOC] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaKhoahoc]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LOP] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[Khoahoc],
		[Khoa],
		[Chuongtrinh],
		[STTLop]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MONHOC] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaMH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SINHVIEN] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaSV]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XEPLOAI] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[MaSV]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[GIANGKHOA] ADD 
	CONSTRAINT [fkGIANGKHOA_CHUONGTRINH] FOREIGN KEY 
	(
		[MaCT]
	) REFERENCES [dbo].[CHUONGTRINH] (
		[MaCT]
	),
	CONSTRAINT [fkGIANGKHOA_KHOA] FOREIGN KEY 
	(
		[Khoa]
	) REFERENCES [dbo].[KHOA] (
		[MaKhoa]
	),
	CONSTRAINT [fkGIANGKHOA_MONHOC] FOREIGN KEY 
	(
		[MaMH]
	) REFERENCES [dbo].[MONHOC] (
		[MaMH]
	)
GO

ALTER TABLE [dbo].[KETQUA] ADD 
	CONSTRAINT [fkKETQUA_MONHOC] FOREIGN KEY 
	(
		[MaMH]
	) REFERENCES [dbo].[MONHOC] (
		[MaMH]
	),
	CONSTRAINT [fkKETQUA_SINHVIEN] FOREIGN KEY 
	(
		[MaSV]
	) REFERENCES [dbo].[SINHVIEN] (
		[MaSV]
	)
GO

ALTER TABLE [dbo].[LOP] ADD 
	CONSTRAINT [fkLOP_CHUONGTRINH] FOREIGN KEY 
	(
		[Chuongtrinh]
	) REFERENCES [dbo].[CHUONGTRINH] (
		[MaCT]
	),
	CONSTRAINT [fkLOP_KHOA] FOREIGN KEY 
	(
		[Khoa]
	) REFERENCES [dbo].[KHOA] (
		[MaKhoa]
	),
	CONSTRAINT [fkLOP_KHOAHOC] FOREIGN KEY 
	(
		[Khoahoc]
	) REFERENCES [dbo].[KHOAHOC] (
		[MaKhoahoc]
	)
GO

ALTER TABLE [dbo].[MONHOC] ADD 
	CONSTRAINT [fkMONHOC_KHOA] FOREIGN KEY 
	(
		[Khoa]
	) REFERENCES [dbo].[KHOA] (
		[MaKhoa]
	)
GO

ALTER TABLE [dbo].[SINHVIEN] ADD 
	CONSTRAINT [fkSinhVien_Lop] FOREIGN KEY 
	(
		[Khoahoc],
		[Khoa],
		[Chuongtrinh],
		[STTLop]
	) REFERENCES [dbo].[LOP] (
		[Khoahoc],
		[Khoa],
		[Chuongtrinh],
		[STTLop]
	)
GO

ALTER TABLE [dbo].[XEPLOAI] ADD 
	CONSTRAINT [fkXEPLOAI_SINHVIEN] FOREIGN KEY 
	(
		[MaSV]
	) REFERENCES [dbo].[SINHVIEN] (
		[MaSV]
	)
GO

