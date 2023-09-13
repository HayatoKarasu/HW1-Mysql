drop database if exists HW2;
create database if not exists HW2;
use HW2;
create table if not exists shop
(
ID int,
title varchar(30),
address varchar(30),
city varchar(30),
working_hours varchar(30),
index (ID, title)
);

insert into shop values
(0, 'Пятерочка', 'ул. Семёнова, 47', "Москва", '8:00-22:00'),
(1, 'Перекрёсток', 'ул. Семёнова, 48', "Москва", 'круглосуточно'),
(2, 'Пятерочка', 'ул. Вовы, 32', "Санкт-Петербург", '8:30-22:30'),
(3, 'Перекрёсток', 'ул. Татьяны Б., 1', "Ижевск", '9:00-21:00');

update shop set title = 'Пятерочка2' where title = 'Пятерочка';

update shop set address = 'пр-т Орлова, 33' where city = 'Ижевск';

update shop set address = 'Рядом с домом', title = 'Всегда открыто' where working_hours = 'круглосуточно';

delete from shop where ID = 2;

select*from shop;