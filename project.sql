 --1
 create table person
 (person_id serial primary key,
  name varchar(80),
  age integer,
  height integer,
  city varchar (100),
  favorite_color varchar (25)
  );
  
  --2
  insert into person (name, age, height, city, favorite_color)
  values ('Dakota', 25, 172, 'Payson', 'Blue');
  insert into person (name, age, height, city, favorite_color)
  values ('Brittney', 25, 150, 'Payson', 'Black');
  insert into person (name, age, height, city, favorite_color)
  values ('Collete', 46, 140, 'Lafayette', 'Purple');
  insert into person (name, age, height, city, favorite_color)
  values ('Jeremy', 49, 176, 'Lafayette', 'Green');
insert into person (name, age, height, city, favorite_color)
values ('Sophie', 1, 42, 'Payson', 'Pink');

select * from person;

--3
select * from person order by height desc;

--4
select * from person order by height asc;

--5
select * from person order by age desc;

--6
select * from person where age >= 20;

--7
select * from person where age = 18;

--8
select * from person where age < 20 or age > 30;

--9
select * from person where age != 27;

--10
select * from person where favorite_color != 'Red';

--11
select * from person where favorite_color != 'Red'
and favorite_color != 'Blue';

--12
select * from person where favorite_color = 'Orange'
or favorite_color = 'Green';

--13
select * from person where favorite_color in 
('Orange', 'Green', 'Blue');

--14
select * from person where favorite_color in
('Yellow', 'Purple');

--*--------------------------------------------------*--

--1
create table orders
(order_id serial primary key, 
person_id integer, 
product_name varchar(100), 
product_price float,
quantity integer);

--2
insert into orders (order_id, person_id, product_name,
                   product_price, quantity)
values (9, 2, 'Flamethrower', 749.99, 25)
values (30, 1, 'Snake Shoes', 39.99, 100);

--3
	select * from orders;

--4
select sum(quantity) from orders;

--5
select sum(product_price * quantity) from orders;

--6
select sum(product_price * quantity) from orders
where person_id = 1; -- output 3,999 --

--*-------------------------------------------------*--

--1
insert into artist (name) 
values ('Rage Against The Machine');
values ('Simple Plan');
values ('Justin Beiber');

--2
select * from artist order by name desc limit 10;

--3
select * from artist order by name asc limit 5;

--4
select * from artist where name like 'Black%'; 

--5
select * from artist where name like '%Black%';

--*--------------------------------------------------*--

--1

select first_name, last_name from employee where city = 'Calgary';

--2

select max(birth_date) from employee;

--3

select min(birth_date) from employee;

--4
 select * from employee;
select * from employee where reports_to = 2;

--5
select * from employee where city = 'Lethbridge';
select count(*) from employee where city = 'Lethbridge';

--*-------------------------------------------------------*--

--1
select count(*) from invoice where billing_country = 'USA';

--2
select max(total) from invoice;

--3
select min(total) from invoice;

--4
select * from invoice where total > 5;

--5
select count(*) from invoice where total < 5;

--6
select count(*) from invoice where billing_state in ('CA', 'TX', 'AZ');

--7
select avg(total) from invoice; 

--8
select sum(total) from invoice;