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
role_id nvarchar(50) primary key not null ,
role_name nvarchar(50)
);


insert into user(user_id,full_name) values
('duongdd123', 'Dinh Dai Duong'),
('hieudt123','Nguyen Trung Hieu'),
('phuongdd96','Dinh Minh Phuong');

alter table user_details modify column phone_number nvarchar(50);

insert into user_details(user_id,gender,phone_number,gmail,address, password,link_image) values
('duongdd123','male','098123456','duongddhe176496@fpt.edu.vn','DH-FPT','123456789','https://scontent.fhan2-4.fna.fbcdn.net/v/t39.30808-6/343340985_609038264590654_7861074615788473177_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=YPtOs0D07uwAX-L02Yn&_nc_ht=scontent.fhan2-4.fna&oh=00_AfBfxehr-INF2uaC__ccibN5JvvyFrvxIwFBFW5MwvK9Xw&oe=6462E51A'),
('hieudt123','male','036999998','nguyentrunghieu@gmail.com','12,Ba Trieu, HaNoi', '123456789', 'https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-6/332489386_3401774396729930_6971685825265049192_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6NI-G2fpAWIAX-TDhGC&_nc_ht=scontent.fhan2-3.fna&oh=00_AfCWx0AQD7YnpnKjs6FQyJlGMFuGuHmLiY__HFJwpu835Q&oe=6461B5F2'),
('phuongdd96','female','099867513', 'phuongdoanhdoanh@gmail.com','34, Toronto, Canada','123455678','https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-6/332489386_3401774396729930_6971685825265049192_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6NI-G2fpAWIAX-TDhGC&_nc_ht=scontent.fhan2-3.fna&oh=00_AfCWx0AQD7YnpnKjs6FQyJlGMFuGuHmLiY__HFJwpu835Q&oe=6461B5F2');

insert into user_role (role_id,user_id) values
('0','duongdd123'),
('1','hieudt123'),
('1','phuongdd96');

insert into role (role_id,role_name) values
('0','admin'),
('1','user');

drop table role;
alter table user_role drop primary key;
alter table user_role add primary key (user_id);

ALTER TABLE user_role
ADD CONSTRAINT fk_user_role_role_id
FOREIGN KEY (role_id)
REFERENCES role (role_id);

select * from  player;

create table comment;
select r.role_name from(select ar.role_id from user a inner join user_role ar on a.user_id = ar.user_id where a.user_id = 'duongdd123') as tb1 inner join role r on r.role_id = tb1.role_id;

insert into user_role (role_id,user_id) values ('1','dungnt123');

update User_Details set password = 123456789 where user_id = 'duongdd123';

insert into player (player_id, player_name, gender, phone_number, num_of_star, password, game_played, link_image) values ('nhungpd123', 'Pham Dang Nhung', 'female', '0966566712', '5','123456789','1','https://playerduo.net/api/upload-service/images/8a647942-cdbf-4d92-bae5-2cfa341b1256__ff8bade0-f664-11ed-a657-a54d6be1d46a__player_avatar.jpg');

drop table game_played;
alter table game_played drop primary key ;
alter table game_played drop primary key;

alter table Game_Played change column game_played player_id  nvarchar(250);

alter table player DROP foreign key fk_player_game_played;

select * from player;

alter table player add primary key (game_id);
alter table game_played add column player_id nvarchar(250);
alter table game_played add primary key (player_id);
alter table game_played drop column game_played;

ALTER TABLE game_played
ADD CONSTRAINT fk_game_played_player_id
FOREIGN KEY (player_id)
REFERENCES player (player_id);

insert into Player values();

insert into player (player_id, player_name, gender, phone_number, num_of_star, password, link_image) values ('windyiu', 'Windy', 'female', '096724421', '5','123456789','https://playerduo.net/api/upload-service/images/0daea254-1a71-44ce-903d-88a781d83124__d733b5f0-90c9-11ed-a19f-23a3b10d190e__player_album.jpg');

alter table game_type drop column game_played;
select * from player;

select * from user_details;

select * from Player m order by m.num_of_star desc limit 3;

alter table user_details ;

ALTER TABLE game
MODIFY COLUMN game_discription text;

select * from game_type;
insert into game_type (game_id,game_type) values ('1','creative');
insert into game (game_id, game_name,game_discription, game_type) values ('4','Fornite','GTA stands for Grand Theft Auto, which is a popular video game series created by David Jones and Mike Dailly. The franchise is developed by Rockstar Games, a subsidiary of Take-Two Interactive. GTA is known for its open-world gameplay, action-adventure elements, and immersive storytelling.

The Grand Theft Auto series is set in fictional cities that resemble real-life locations, providing players with a vast and interactive environment to explore. The games typically feature a mix of missions, activities, and open-ended gameplay that allows players to freely roam and engage in various criminal activities.

In GTA games, players assume the role of a protagonist who is often involved in criminal activities such as theft, smuggling, and organized crime. The gameplay involves completing missions and tasks, which can include driving vehicles, combat, shooting, and interacting with non-player characters (NPCs) in the game world.

The series has gained recognition for its engaging narratives, satirical social commentary, and attention to detail in recreating expansive cityscapes. Each installment of GTA introduces new characters, stories, and gameplay mechanics, offering a fresh experience with every release.

While the core gameplay of GTA revolves around the single-player campaign, several games in the series also feature multiplayer modes. GTA Online, for example, provides an online multiplayer experience where players can interact, participate in missions, and engage in various activities with other players in the game world.

The Grand Theft Auto series has become one of the most successful and influential video game franchises of all time, with each new release eagerly anticipated by fans. It has received critical acclaim for its immersive gameplay, open-world exploration, and cinematic storytelling, as well as its ability to push the boundaries of interactive entertainment.','Action');

update player set link_image = 'https://playerduo.net/api/upload-service/images/6885cb0a-74b9-4c50-a614-5f8e513a1225__cfaa3500-ce74-11ed-a19f-23a3b10d190e__player_album.jpg' where player_id = 'chanbaby95';

select * from player;

update player set income = '4000' where player_id = 'windyiu';
select * from Player m order by m.income desc limit 20;
select * from Player where link_image = 'https://playerduo.net/api/upload-service/images/0daea254-1a71-44ce-903d-88a781d83124__c016c0d0-73a8-11ed-a19f-23a3b10d190e__player_album.jpg';
alter table player add income double;
ALTER TABLE my_table MODIFY COLUMN column_name column_definition AFTER column_to_move_after;
ALTER TABLE user_details ADD COLUMN new_column INT;


SELECT full_name FROM User where user_id = ?
