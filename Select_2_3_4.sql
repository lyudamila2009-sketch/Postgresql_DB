--Задание №2

select name, duration
from tracks
where duration = (select max(duration) from tracks);

select name, duration
from tracks
where duration >= 3.5;

select name,year
from collections
where year between 2018 and 2020;

select *
from singers
where pseudonym not like '% %';

select name
from tracks
where name like '%мой%' or name like '%my%';

--Задание №3

select count(s.singer_id), g."name" 
from singersgenres s 
inner join genres g 
on s.genre_id  = g.id 
group by g."name"  ;

select t."name" 
from tracks t 
inner join alboms a 
on t.albom_id = a.id 
where a."year" between 2019 and 2020;

select a."name" , avg(t.duration ) 
from tracks t 
inner join alboms a 
on t.albom_id = a.id 
group by a."name"; 

select distinct s2.pseudonym 
from singersalboms s 
inner join alboms a
on a.id = s.albom_id
inner join singers s2 
on s.singer_id  = s2.id 
where a."year" != 2020;

select distinct c."name" 
from collections c 
inner join trackscollections t 
on c.id = t.collection_id
inner join tracks t2 
on t2.id = t.track_id 
inner join singersalboms s 
on s.albom_id = t2.albom_id 
inner join singers
on s.singer_id = singers.id
where singers.pseudonym = 'Britney Spears';

--Задание 4
select alboms."name" 
from alboms
inner join singersalboms s 
on s.albom_id  = alboms.id
inner join singers 
on s.singer_id = singers.id
inner join singersgenres sg
on sg.singer_id = singers.id 
group by alboms."name" 
having count(sg.genre_id ) > 1;

select tracks."name" 
from tracks
full outer join trackscollections t 
on tracks.id  = t.track_id 
where tracks.id is null
or t.track_id is null;

select s.pseudonym 
from singers s
inner join singersalboms sa
on s.id = sa.singer_id 
inner join tracks t 
on sa.albom_id  = t.albom_id 
where t.duration = (select min(duration) from tracks);


select c.name,count(*)
from trackscollections t 
inner join collections c 
on c.id  = t.collection_id  
group by c."name"
having count(*) = (select min(count) from(select a."name" as nm, count(t.id )
from alboms a 
inner join tracks t 
on t.albom_id  = a.id 
group by a."name" ));


















