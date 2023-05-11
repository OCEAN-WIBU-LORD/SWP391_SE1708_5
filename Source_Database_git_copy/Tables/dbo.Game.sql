CREATE TABLE [dbo].[Game] (
  [game_id] [nchar](10) NOT NULL,
  [game_name] [nchar](10) NULL,
  [game_discription] [nchar](10) NULL,
  [game_type] [nchar](10) NULL,
  CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED ([game_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Game]
  ADD CONSTRAINT [FK_Game_Booking] FOREIGN KEY ([game_id]) REFERENCES [dbo].[Booking] ([booking_id])
GO

ALTER TABLE [dbo].[Game]
  ADD CONSTRAINT [FK_Game_Game_Type] FOREIGN KEY ([game_type]) REFERENCES [dbo].[Game_Type] ([game_type])
GO