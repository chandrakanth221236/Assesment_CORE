USE [Book]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 08-02-2023 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Book_id] [int] IDENTITY(1,1) NOT NULL,
	[Publisher] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NOT NULL,
	[AuthorLastName] [nvarchar](max) NULL,
	[AuthorFirstName] [nvarchar](max) NULL,
	[Price] [real] NOT NULL,
	[Style_Citation] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetAllBookDataDefaultSort]    Script Date: 08-02-2023 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create   PROCEDURE [dbo].[GetAllBookDataDefaultSort]
AS
BEGIN
    SELECT * from Book order by Publisher,AuthorLastName,AuthorFirstName,Title
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllBookDataDefaultSort2]    Script Date: 08-02-2023 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   PROCEDURE [dbo].[GetAllBookDataDefaultSort2]
AS
BEGIN
    SELECT * from Book order by AuthorLastName,AuthorFirstName,Title
END
GO
