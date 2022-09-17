-- film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
select count(*) from film where length > (select avg(length) from film);

-- film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(*) from film where rental_rate = (select max(rental_rate) from film);

-- film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
select * from film where rental_rate = (select min(rental_rate) from film) and replacement_cost = (select man(replacement_cost) from film);
 
-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
select customer.first_name, customer.last_name, count(payment.costumer_id) from payment 
left join customer on payment.costumer_id =  customer.customer_id
group by payment.costumer_id order by count(payment.costumer_id) desc;
