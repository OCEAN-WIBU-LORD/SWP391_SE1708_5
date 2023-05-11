CREATE TABLE [dbo].[Comment] (
  [played_id] [nchar](10) NULL,
  [user_id] [nchar](10) NULL,
  [comment] [nchar](10) NULL,
  [number_of_star] [int] NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Comment]
  ADD CONSTRAINT [FK_Comment_Player] FOREIGN KEY ([played_id]) REFERENCES [dbo].[Player] ([player_id])
GO

ALTER TABLE [dbo].[Comment]
  ADD CONSTRAINT [FK_Comment_User Details] FOREIGN KEY ([user_id]) REFERENCES [dbo].[User Details] ([user_id])
GO