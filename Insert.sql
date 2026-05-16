--singers
insert into singers (pseudonym)
values
('Louis Armstrong'),
('Britney Spears'),
('Ария'),
('ДДТ'),
('Michael Jackson ');

--genres
insert into genres(name)
values 
('pop'),
('rocknroll'),
('jazz');


--alboms
insert into alboms(name,year)
values
('In the Zone',2003),
('2000 и одна ночь',1999),
('Это всё…',1994),
('Thriller',1982),
('What a Wonderful World',1967),
('Glory',2020);

--tracks
insert into tracks(albom_id,name,duration)
values 
(4,'Beat It','00:04:59'),
(3,'Ветер','00:04:50'),
(3,'Это все','00:07:54'),
(1,'Everytime','00:04:09'),
(2,'Мечты','00:04:31'),
(4,'Baby Be Mine','00:04:22'),
(5,'Wonderful world','00:02:19'),
(6,'Slumber party','00:04:37'),
(2,'Потерянный мой рай','00:02:36'),
(1,'It is my toxic','00:03:32'),
(6,'my own','00:01:59'),
(6,'own my','00:02:33'),
(6,'my','00:04:09'),
(6,'oh my god','00:03:01'),
(6,'myself','00:06:22'),
(6,'be myself','00:01:13'),
(6,'bemy self','00:02:12'),
(6,'myself by','00:04:45'),
(6,'by myself by','00:05:59'),
(6,'beemy','00:03:03'),
(6,'premyne','00:04:01');

--collections
insert into collections(name,year)
values
('The Way You Make Me Feel',2005),
('Rocknroll Collection',2000),
('My wishlist',2026),
('It is jazz',2020);

--singersalboms
insert into  singersalboms (albom_id,singer_id)
values
(5,1),
(1,2),
(6,2),
(2,3),
(3,4),
(4,5),
(3,2);

--singersgenres
insert into singersgenres (singer_id,genre_id)
values
(1,3),
(2,1),
(3,2),
(4,1),
(4,2),
(5,1);

--trackscollections
insert into trackscollections (track_id,collection_id)
values
(7,4),
(1,1),
(2,2),
(3,2),
(4,3),
(5,2),
(8,3),
(9,2),
(10,3),
(6,1),
(3,3),
(9,3);


