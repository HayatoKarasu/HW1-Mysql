drop database if exists HW1;
create database if not exists HW1;
use HW1;
create table if not exists users
(
ID int,
Имя varchar(30),
Фамилия varchar(30),
Дата_регистрации date,
Сериалы varchar(30),
Жанры varchar(30),
Отзывы tinyint
);

insert into users values
(1, 'Вася', 'Пупкин', "2009-09-09", 'Ведьмак', 'Фэнтези', 5),
(2, 'Петя', 'Вилкин', "2009-09-15", 'Теория большого взрыва', 'Комедия', 5),
(3, 'Костя', 'Ложкин', "2009-09-17", 'Друзья', 'Комедия', 5);

insert into users(Имя, Дата_регистрации) values
('Дима', "2009-09-01"),
('Женя', "2009-09-25");

update users set ID = 4, Фамилия = 'Ручкин', Сериалы = 'Мир дикого запада', Жанры = 'Фантастика', Отзывы = 5 where Имя = 'Дима';
update users set ID = 5, Фамилия = 'Ножкин', Сериалы = 'Черное зеркало', Жанры = 'Фантастика', Отзывы = 5 where Имя = 'Женя';

update users set Имя = 'пользователь';

update users set Фамилия = 'Сенаторов' where Дата_регистрации = '2009-09-09';

-- delete from users where ID = 4;
delete from users where Жанры = 'Комедия' and Сериалы = 'Друзья';

select*from users;