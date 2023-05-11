CREATE TABLE [dbo].[User Details] (
  [user_id] [nchar](10) NOT NULL,
  [gender] [nvarchar](50) NULL,
  [phone_number] [int] NULL,
  [gmail] [nchar](10) NULL,
  [address] [nchar](10) NULL,
  [password] [nchar](10) NULL,
  [link_image] [nchar](10) NULL,
  CONSTRAINT [PK_User Details] PRIMARY KEY CLUSTERED ([user_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[User Details]
  ADD CONSTRAINT [FK_User Details_User] FOREIGN KEY ([user_id]) REFERENCES [dbo].[User] ([user_id])
GO