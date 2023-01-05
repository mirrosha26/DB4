INSERT INTO artist (pseudonyme)
VALUES
	('XOLIDAYBOY'),
    ('10AGE'),
	('Eminem'),
	('Noize MC'),
	('Oxxymiron'),
	('Элджей'),
	('ЛСП'),
	('XXXTentacion');


INSERT INTO genre (title)
VALUES
	('Поп'),
	('Рэп и хип-хоп'),
	('Иностранный рок'),
	('Инностранный реп и хип-хоп'),
	('Русский рэп');


INSERT INTO album (title, year) 
VALUES
	('NEW XOLIDAYBOY', 2022),
	('NEW 10AGE', 2021),
	('NEW Eminem', 2020),
	('NEW Noize', 2019),
	('NEW Oxxymiron', 2017),
	('NEW Элджей', 2018),
	('NEW ЛСП', 2018),
	('NEW XXXTentacion', 2017);



INSERT INTO track(title, length, album_id)
VALUES
	('Моя хулиганка', 190, 1),
	('ЧЁРНОЕ ВИНО', 166, 1),
	('Нету интереса', 184, 2),
	('Пушка', 203, 2),
	('Lose Yourself', 320, 3),
	('Love The Way You Lie', 263, 3),
	('Люди с автоматами', 193, 4),
	('Выдыхай', 192, 4),
	('Монетка', 180, 5),
	('Мой мир', 192, 5),
	('ALONE, PART 3', 109, 6),
	('SAD!', 166, 6),
	('Дом Периньон', 174, 7),
	('Cadillac', 177, 7),
	('Где нас нет', 264, 8),
	('Город под подошвой', 246, 8),
    ('Миша тестит последний запрос с окси', 8);
	

INSERT INTO Сompilation(name, year)
VALUES
	('MYTOP 2023', 2023),
	('MYTOP 2022', 2022),
	('MYTOP 2021', 2021),
	('MYTOP 2020', 2020),
	('MYTOP 2019', 2019);


INSERT INTO Сompilation_Track(compilation_id, track_id)
VALUES
	(1,16),
	(1,15),
	(1,14),
	(1,13),
	(1,12),
	(2,11),
	(2,10),
	(2,9),
	(2,8),
	(3,7),
	(3,6),
	(3,5),
	(4,4),
	(4,3),
	(5,2);

INSERT INTO genre_artist(artist_id, genre_id)
VALUES
	(1,1),
	(2,2),
	(2,5),
	(3,4),
	(4,2),
	(4,5),
	(5,1),
	(6,1),
	(7,1),
	(8,4);


INSERT INTO album_artist(artist_id, album_id)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8);