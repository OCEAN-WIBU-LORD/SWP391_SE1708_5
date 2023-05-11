CREATE TABLE [dbo].[Booking_Details] (
  [booking_id] [nchar](10) NOT NULL,
  [price] [nchar](10) NULL,
  [total_price] [nchar](10) NULL,
  [hour] [nchar](10) NULL,
  [total_hour] [nchar](10) NULL,
  [date_booking] [datetime] NULL,
  [game_id] [nchar](10) NOT NULL,
  CONSTRAINT [PK_Booking_Details] PRIMARY KEY CLUSTERED ([booking_id])
)
ON [PRIMARY]
GO