1.

```
WITH movies AS (SELECT * FROM movies)
select duration from movies where title = "Outback" // 86
```

2.

```
WITH movies AS (SELECT * FROM movies)
select title from movies where director = "Peter Sullivan" and year=2017 //The Sandman
```

3.

```
WITH movies AS (SELECT * FROM movies)
select reviews_from_users from movies where imdb_title_id = "tt7336182" //47
```

4.

```
WITH movies AS (SELECT * FROM movies)
select reviews_from_critics from movies where title="Joker" //698

select votes_1 from ratings r JOIN movies m ON (r.votes_1 = m.imdb_title_id) where title = "Joker"

```

5.

```
WITH movies AS (SELECT * FROM movies)
select COUNT(distinct production_company) from movies //2321
```

6.

```
WITH movies AS (SELECT * FROM movies)
SELECT AVG(duration) from movies where (year < 2018 OR year > 2018)  and (actors LIKE "%Dharmajan Bolgatty%" OR actors LIKE "%Sugith Varughes%") //136.0769

```

7.

```
WITH movies AS (SELECT * FROM movies)
select title,genre, (worlwide_gross_income_in_USD - budget) as Profit from movies where production_company = "DreamWorks" ORDER BY Profit DESC // 289857224
```

8.

```
select title,year,age_18_to_30_avg_vote from ratings r JOIN movies m ON (r.votes_1 = m.imdb_title_id) ORDER BY age_18_to_30_avg_vote DESC
```

9.

```
select SUM(age_0_to_18_avg_vote) as age_0_to_18_avg_vote, SUM(age_18_to_30_avg_vote) as age_18_to_30_avg_vote,SUM(age_45_plus_avg_vote) as age_45_plus_avg_vote,SUM(age_30_to_45_avg_vote) as age_30_to_45_avg_vote from ratings r JOIN movies m ON (r.votes_1 = m.imdb_title_id)  //age_30_to_45_avg_vote

```

10.

```
WITH movies AS (SELECT sum(duration) as sum,genre FROM movies where year>2016 GROUP BY genre ORDER BY sum DESC )
select * from movies limit 3 //Drama, Comedy, Comedy; Drama

```

11.

```
select sum(average_vote) as av, year from ratings r JOIN movies m ON (r.imdb_title_id = m.imdb_title_id) where language = "english" GROUP BY year ORDER BY av DESC //335.28, 2018

```

12.

```
select title, males_vote_count,females_vote_count, females_avg_vote - males_avg_vote as diff from ratings r JOIN movies m ON (r.imdb_title_id = m.imdb_title_id) ORDER BY diff DESC

```

13.

```
SELECT title,year,director,(select avg(m.year) from movies as m where m.director=movies.director) as director_avg_duration,production_company, (select m2.year from movies as m2 where m2.production_company=movies.production_company order by year asc limit 1) as production_company_first_movie_year
FROM `movies`
WHERE Language='English'
LIMIT 50

```

14.

```
SELECT ()



```
