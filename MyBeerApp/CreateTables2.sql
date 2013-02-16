CREATE TABLE [dbo].[Article](
 [ArticleID] [int] IDENTITY(1,1) NOT NULL,
 [URL] [nvarchar](2000) NULL,
 [InsertUserName] [nvarchar](20) NULL,
 [Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED
(
 [ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[Recipe](
 [RecipeID] [int] IDENTITY(1,1) NOT NULL,
 [Ingredients] [nvarchar](max) NULL,
 [Directions] [nvarchar](max) NULL,
 [PrepTime] [nvarchar](50) NULL,
 [CookTime] [nvarchar](50) NULL,
 [ReadyIn] [nvarchar](50) NULL,
 [RecipeYield] [nvarchar](50) NULL,
 [Notes] [nvarchar](max) NULL,
 [Rating] [int] NULL,
 [StyleID] [int] NULL,
 [Title] [nvarchar](50) NULL,
 [ABV] [nvarchar](50) NULL,
 [IBU] [nvarchar](50) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED
(
 [RecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Style] FOREIGN KEY([StyleID])
REFERENCES [dbo].[Style] ([StyleID])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Style]
GO


CREATE TABLE [dbo].[BeerEvent](
 [BeerEventID] [int] IDENTITY(1,1) NOT NULL,
 [Title] [nchar](50) NULL,
 [EventDate] [datetime] NULL,
 [Description] [nchar](256) NULL,
 [HostedBy] [nchar](20) NULL,
 [ContactPhone] [nchar](20) NULL,
 [Address] [nchar](50) NULL,
 [Country] [nchar](30) NULL,
 [Latitude] [float] NULL,
 [Longitude] [float] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED
(
 [BeerEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


GO
CREATE TABLE [dbo].[RSVP](
 [RsvpID] [int] IDENTITY(1,1) NOT NULL,
 [BeerEventID] [int] NULL,
 [AttendeeName] [nvarchar](30) NULL,
 CONSTRAINT [PK_RSVP] PRIMARY KEY CLUSTERED
(
 [RsvpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[RSVP]  WITH CHECK ADD  CONSTRAINT [FK_RSVP_Event] FOREIGN KEY([BeerEventID])
REFERENCES [dbo].[BeerEvent] ([BeerEventID])
GO
ALTER TABLE [dbo].[RSVP] CHECK CONSTRAINT [FK_RSVP_Event]
GO