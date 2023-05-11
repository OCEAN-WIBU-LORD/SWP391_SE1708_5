CREATE TABLE [dbo].[Booking] (
  [user_id] [nchar](10) NOT NULL,
  [player_id] [nchar](10) NOT NULL,
  [total_hour] [nchar](10) NULL,
  [game_id] [nchar](10) NULL,
  [booking_id] [nchar](10) NOT NULL,
  CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED ([booking_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Booking]
  ADD CONSTRAINT [FK_Booking_Booking_Details] FOREIGN KEY ([booking_id]) REFERENCES [dbo].[Booking_Details] ([booking_id])
GO

ALTER TABLE [dbo].[Booking]
  ADD CONSTRAINT [FK_Booking_Player] FOREIGN KEY ([player_id]) REFERENCES [dbo].[Player] ([player_id])
GO

ALTER TABLE [dbo].[Booking]
  ADD CONSTRAINT [FK_Booking_User] FOREIGN KEY ([user_id]) REFERENCES [dbo].[User] ([user_id])
GO