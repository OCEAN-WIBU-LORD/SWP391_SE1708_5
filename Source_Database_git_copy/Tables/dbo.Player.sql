CREATE TABLE [dbo].[Player] (
  [player_id] [nchar](10) NOT NULL,
  [player_name] [nchar](10) NULL,
  [gender] [nchar](10) NULL,
  [phone_number] [nchar](10) NULL,
  [number_of_star] [int] NULL,
  [password] [nchar](10) NULL,
  [game_played] [nchar](10) NULL,
  [link_image] [nchar](10) NULL,
  CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED ([player_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Player]
  ADD CONSTRAINT [FK_Player_Game Played] FOREIGN KEY ([game_played]) REFERENCES [dbo].[Game Played] ([game_played])
GO