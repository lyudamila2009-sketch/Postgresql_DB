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

--tracks
insert into tracks(albom_is,duration,name)
values 
(6,4.59,'Beat It'),
(3,4.5,'Ветер'),
(3,7.54,'Это все'),
(1,4.09,'Everytime'),
(2,4.31,'Мечты'),
(6,4.22,'Baby Be Mine'),
(8,2.19,'Wonderful world'),
(9,4.37,'Slumber party'),
(2,2.36,'Потерянный мой рай'),
(1,3.32,'It is my toxic');

--alboms
insert into alboms(name,year)
values
('In the Zone',2003),
('2000 и одна ночь',1999),
('Это всё…',1994),
('Thriller',1982),
('What a Wonderful World',1967),
('Glory',2019);

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
(1,2),
(2,5),
(3,6),
(6,8),
(8,1),
(9,2);

--singersgenres
insert into singersgenres (singer_id,genre_id)
values
(5,2),
(2,1),
(6,2),
(8,1),
(1,3),
(6,1);

--trackscollections
insert into trackscollections (track_id,collection_id)
values
(1,2),
(3,2),
(4,2),
(7,2),
(9,3),
(5,4),
(6,4),
(2,1),
(8,1),
(2,4),
(1,4);

