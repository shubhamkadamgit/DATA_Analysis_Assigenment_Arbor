/*--Netflix Case Study
show_id	 type	title	director	cast	country	 date_added 	release_year	rating	duration listed_in	description

*/
create database Netflixdb;
use Netflixdb;
CREATE TABLE Netflix (
    show_id VARCHAR(50) not null,
    type VARCHAR(30),
    title VARCHAR(50),
    director VARCHAR(40),
    cast VARCHAR(200),
    country VARCHAR(30),
    date_added DATE,
    release_year INT,
    rating VARCHAR(40),
    duration VARCHAR(40),
    listed_in VARCHAR(100),
    description VARCHAR(250)
);

Alter table Netflix
modify column date_added varchar(30);

Alter table Netflix
modify column title varchar(100);

Alter table Netflix
modify column cast varchar(500);

select * from Netflix;

------------------------------------------------------------------

-- Q.1. What is the count of the total number
-- of records in the netflix_data table
SELECT 
    COUNT(show_id) AS No_records
FROM
    Netflix;
-- Ans-> 91 records
---------------------------------------------------------------
-- Q.2. What is the count of the number
-- of TV shows and movies separately

SELECT 
    type, COUNT(*) AS No_count
FROM
    Netflix
WHERE
    type IN ('Movie' , 'TV Show')
GROUP BY type;

-- Ans-> Movie - 50 ; TV Show -	41

-------------------------------------------------------------

-- Q.3.Find the top director with the most content on Netflix.

select director,count(*) as count from netflix
group by director
order by count desc
limit 1 offset 1;

-- Ans -> Toshiya Shinohara	- 4

------------------------------------------------------------------
-- Q.4. find the most recently added title

SELECT title,(STR_TO_DATE(date_added, '%M %d, %Y')) 
as latest_date 
FROM Netflix
order by latest_date desc
limit 1;

-- ANS -> Dick Johnson Is Dead- 2021-09-25
------------------------------------------------------------------
-- Q.5. What is the minimum release year for TV shows and movies

SELECT 
    type, MIN(release_year) AS mini_release_year
FROM
    netflix
GROUP BY type;

-- Ans -> Movie-1975 TV  & Show-1994
--------------------------------------------------------------
-- Q.6 Find the top contry with most content on the netflix
select country,count(*) 
as count_content from netflix
group by country
order by count_content desc
limit 1 offset 1;

-- Ans - United States ->	17
 
----------------------------------------------------------------

-- Q7. Find the longest duration movie.

select type,title,duration from netflix
where type = 'movie'
order by CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC
LIMIT 1;
-- Ans -> Movie	Jeans	166 min

select duration from netflix
where type='movie'
group by duration
having duration
limit 20;


