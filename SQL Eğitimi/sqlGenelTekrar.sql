-- film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
select title from film 
where title like "K%" 
order by length desc, replacement_cost asc limit 4;

-- film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
select rating from film 
group by rating 
order by count(*) desc limit 1;

-- cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
select customer.first_name from customer
inner join payment on customer.customer_id = payment.customer_id
group by customer.id
order by count(*) desc limit 1;

-- category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
select category.name, count(*) from category
inner join film_category on category.category_id = film_category.category_id
group by category.category_id
order by count(*) desc;

-- film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
select count(*) from film where ilike "%ee%e%e";