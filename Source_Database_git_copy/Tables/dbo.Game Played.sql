CREATE TABLE [dbo].[Game Played] (
  [game_played] [nchar](10) NOT NULL,
  [game_id] [nchar](10) NULL,
  CONSTRAINT [PK_Game Played] PRIMARY KEY CLUSTERED ([game_played])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Game Played]
  ADD CONSTRAINT [FK_Game Played_Game] FOREIGN KEY ([game_played]) REFERENCES [dbo].[Game] ([game_id])
GO