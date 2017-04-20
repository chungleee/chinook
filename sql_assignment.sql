-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT id, name FROM artists WHERE name='Queen';
 id | name
----+-------
 51 | Queen
(1 row)

SELECT title FROm albums WHERE artist_id = '51';
       title
-------------------
 Greatest Hits II
 Greatest Hits I
 News Of The World
(3 rows)


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
SELECT id, name FROM media_types;
 id |            name
----+-----------------------------
  1 | MPEG audio file
  2 | Protected AAC audio file
  3 | Protected MPEG-4 video file
  4 | Purchased AAC audio file
  5 | AAC audio file
(5 rows)

SELECT COUNT(name) FROM tracks WHERE media_type_id='3';
 count
-------
   214
(1 row)


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT id, name FROM genres WHERE name='Electronica/Dance';
 id |       name
----+-------------------
 15 | Electronica/Dance
(1 row)

SELECT MIN(unit_price) FROM tracks WHERE genre_id='15';
 min
------
 0.99
(1 row)


-- 4) Find the all the artists whose names start with A.
SELECT name FROM artists WHERE name LIKE 'A%';
                                         name
---------------------------------------------------------------------------------------
 Aerosmith
 Alice In Chains
 Antônio Carlos Jobim
 Apocalyptica
 Azymuth
 Aquaman
 AC/DC
 Alanis Morissette
 Audioslave
 Avril Lavigne
 Aisha Duo
 Aaron Goldberg
 Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
 Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
 Aaron Copland & London Symphony Orchestra
 Antal Doráti & London Symphony Orchestra
 Amy Winehouse
 Adrian Leaper & Doreen de Feis
 Accept
 Aerosmith & Sierra Leone s Refugee Allstars
 Alberto Turco & Nova Schola Gregoriana
 Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
 Academy of St. Martin in the Fields & Sir Neville Marriner
 Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
 Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
 A Cor Do Som
(26 rows)


-- 5) Find all the tracks that belong to playlist 1.
