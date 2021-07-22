--1.film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT title, rating
FROM film
GROUP BY title, rating;

--2.film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film 
--sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını 
--sıralayınız.
SELECT replacement_cost, count(title)
FROM film
GROUP BY replacement_cost
HAVING COUNT(title) > 50
ORDER BY replacement_cost;

--3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri 
--sayılarını nelerdir?
SELECT store_id,count(*)
FROM customer
GROUP BY store_id;

--4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan 
--sonra en fazla şehir sayısı barındıra country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id,COUNT(city)
FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;
