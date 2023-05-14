create table User (
  user_id nvarchar(50),
  full_name nvarchar(50)
);

create table Booking (
 booking_id nvarchar(50) primary key not null,
 user_id nvarchar(50),
 player_id nvarchar(50),
 total_hour nvarchar(50),
 game_id nvarchar(50)
);

create table Booking_Details(
	price nvarchar(50),
    total_price nvarchar(50),
    hour nvarchar(50),
    total_hour nvarchar(50),
    date_booking datetime,
    game_id nvarchar(50)
);

alter table booking_details add booking_id nvarchar(50);

ALTER TABLE Booking
ADD CONSTRAINT fk_Booking_user_id
FOREIGN KEY (user_id)
REFERENCES user (user_id);

alter table user_details add primary key (user_id);

create table game (
game_id nvarchar(50),
game_name nvarchar(50),
game_discription nvarchar(50),
game_type nvarchar(50)
);

ALTER TABLE booking
ADD CONSTRAINT fk_booking_game_id
FOREIGN KEY (game_id)
REFERENCES game (game_id);

create table Game_Type(
game_id nvarchar(50),
game_type nvarchar(50)
);

ALTER TABLE game_type
ADD CONSTRAINT fk_game_type_game_id
FOREIGN KEY (game_id)
REFERENCES game (game_id);

create table user_details(
user_id nvarchar(50),
gender nvarchar(50),
phone_number int,
gmail nvarchar(50),
address nvarchar(50),
password nvarchar(50),
link_image nvarchar(500)
);


ALTER TABLE user_details
ADD CONSTRAINT fk_user_details__game_id
FOREIGN KEY (user_id)
REFERENCES User (user_id);

create table player(
player_id nvarchar(50),
player_name nvarchar(50),
gender nvarchar(50),
phone_number nvarchar(50),
num_of_star int,
password nvarchar(50),
game_played nvarchar(50),
link_image nvarchar(500)
);

alter table user_role add primary key (role_id);


ALTER TABLE booking
ADD CONSTRAINT fk_booking_player_id
FOREIGN KEY (player_id)
REFERENCES player (player_id);

create table game_played(
game_played nvarchar(50) not null primary key,
game_id nvarchar(50)
);

drop table game_played;


ALTER TABLE game_played
ADD CONSTRAINT fk_game_played_game_id
FOREIGN KEY (game_id)
REFERENCES game (game_id);

create table comment (
player_id nvarchar(50),
user_id nvarchar(50),
comment nvarchar(50),
num_of_star int,

FOREIGN KEY (user_id)
REFERENCES user_details (user_id),
FOREIGN KEY (player_id)
REFERENCES player (player_id)
);

create table user_role (
role_id nvarchar(50),
user_id nvarchar(50),
FOREIGN KEY (user_id)
REFERENCES user (user_id)
);

create table role (
role_id nvarchar(50) ,
role_name nvarchar(50),
FOREIGN KEY (role_id)
REFERENCES user_role (role_id)
);


insert into user(user_id,full_name) values
('duongdd123', 'Dinh Dai Duong'),
('hieudt123','Nguyen Trung Hieu'),
('phuongdd96','Dinh Minh Phuong');


