1.select genre, count(*) as count from movies_genres group by genre order by count;
  select genre, count(genre) from movies_genres group by genre;
2. select concat_ws(' ', first_name, last_name) as Name from actors natural join roles where actors.id=roles.id and role='Wonder Woman' and gender='F';
3.select name from movies where ran>=9.5 and year>=2007;
4.select movies.name, directors.first_name, directors.last_name from movies inner join movies_directors on movies_directors.movie_id=movies.id inner join directors on movies_directors.director_id=directors.id where movies.name like 'Z%' or movies.name like '%z';
5.select movies.name, directors.first_name, directors.last_name from movies inner join movies_directors on movies_directors.movie_id=movies.id inner join directors on movies_directors.director_id=directors.id where movies.rank>=9.5;
6.select distinct concat_ws(' ', first_name, last_name) as Name from actors natural join roles where role='Himself' and gender='M';
7.select directors.first_name, directors.last_name, avg(movies.rank) as average_rank from directors inner join movies_directors on movies_directors.director_id=directors.id inner join movies on movies_directors.movie_id=movies.id group by directors.first_name, directors.last_name;
8.select directors.first_name, directors.last_name, avg(movies.rank) as average_rank from directors inner join movies_directors on movies_directors.director_id=directors.id inner join movies on movies_directors.movie_id=movies.id group by directors.first_name, directors.last_name order by average_rank desc limit 1;
9.create view max_roles as(select actors.first_name, actors.last_name, count(roles.role) as role from actors inner join roles on roles.actor_id=actors.id group by actors.first_name, actors.last_name having count(roles.role)>300);
10.select * from max_roles order by role desc limit 1;
11.select name from (select name, movie_id, genre from movies_genres inner join movies on movies.id=movies_genres.movie_id) as m natural join (select name, id, (genre) as genre1 from movies_genres inner join movies on movies_genres.movie_id=movies.id) as m1 where m.genre='Comedy' and m1.genre1='Action';
12.select name from (select name, movie_id, genre from movies_genres inner join movies on movies.id=movies_genres.movie_id) as m natural join (select name, id, (genre) as genre1 from movies_genres inner join movies on movies_genres.movie_id=movies.id) as m1 where m.genre in ('Comedy') and m1.genre1 in('Action');

13.select directors.first_name, directors.last_name from directors inner join actors where directors.first_name=directors.last_name and directors.last_name=actors.last_name;
14.select genre from movies_genres group by genre having count(genre)=(select count(genre) as great from movies_genres group by genre order by great desc limit 1);
16.select names from movies where rank is not null order by rank limit 25;
