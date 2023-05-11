CREATE TABLE [dbo].[Game_Type] (
  [game_id] [nchar](10) NULL,
  [game_type] [nchar](10) NOT NULL,
  CONSTRAINT [PK_Game_Type] PRIMARY KEY CLUSTERED ([game_type])
)
ON [PRIMARY]
GO