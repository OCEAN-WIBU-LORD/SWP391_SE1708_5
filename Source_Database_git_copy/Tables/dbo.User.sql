CREATE TABLE [dbo].[User] (
  [user_id] [nchar](10) NOT NULL,
  [full_name] [nchar](10) NULL,
  CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([user_id])
)
ON [PRIMARY]
GO