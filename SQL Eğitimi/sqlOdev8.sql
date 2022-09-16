-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan 
-- bir tablo oluşturalım.
create table employee (
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(50)
);

-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (id, name, email, birthday) values (1, 'Esma', 'ehazelden0@cmu.edu', '5/21/2022')
---
insert into employee (id, name, email, birthday) values (50, 'Brendon', 'brudwell1d@jugem.jp', '10/11/2021')

-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
update employee set name = 'NewName' where id = 1
update employee set email = 'new@email.com' where email like '%.jp'
update employee set birthday = '20/02/2002' where id = 50
update employee set email = 'brudwell1d@jugem.jp'
                    birthday = '10/11/2021'
                where id = 50

-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
delete from employee where id between 40 and 50
delete from employee where name like '%Name'
delete from employee where id < 10
delete from employee where id in (10, 20, 30)
