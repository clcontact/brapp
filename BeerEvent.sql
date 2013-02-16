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
 CONSTRAINT [PK_BeerEvent] PRIMARY KEY CLUSTERED
(
 [BeerEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


GO
CREATE TABLE [dbo].[RSVP](
 [RsvpID] [int] IDENTITY(1,1) NOT NULL,
 [BeerEventID] [int] NOT NULL,
 [AttendeeName] [nvarchar](30) NULL,
 CONSTRAINT [PK_RSVP] PRIMARY KEY CLUSTERED
(
 [RsvpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[RSVP]  WITH CHECK ADD  CONSTRAINT [FK_RSVP_BeerEvent] FOREIGN KEY([BeerEventID])
REFERENCES [dbo].[BeerEvent] ([BeerEventID])
GO
ALTER TABLE [dbo].[RSVP] CHECK CONSTRAINT [FK_RSVP_BeerEvent]
GO