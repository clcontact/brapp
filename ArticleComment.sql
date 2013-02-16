CREATE TABLE [dbo].[ArticleComment](
 [CommentID] [int] IDENTITY(1,1) NOT NULL,
 [ArticleID] [int] NOT NULL,
 [Notes] [nvarchar](max) NULL,
 [UserName] [nvarchar](20) NOT NULL,
 [InsertDate] [date] NOT NULL,
 CONSTRAINT [PK_ArticleComment] PRIMARY KEY CLUSTERED
(
 [CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

 

ALTER TABLE [dbo].[ArticleComment]  WITH CHECK ADD  CONSTRAINT [FK_ArticleComment_Article] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Article] ([ArticleID])


ALTER TABLE [dbo].[ArticleComment] CHECK CONSTRAINT [FK_ArticleComment_Article]