--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Чт окт 13 13:58:19 2022
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Authors
CREATE TABLE Authors (authorsID INT NOT NULL, authorsName STRING NOT NULL, PRIMARY KEY (authorsID));
INSERT INTO Authors (authorsID, authorsName) VALUES (1, 'Том Биркетт');
INSERT INTO Authors (authorsID, authorsName) VALUES (2, 'Станислав Лем');

-- Таблица: Books
CREATE TABLE Books (bookID INT NOT NULL, bookName STRING NOT NULL, bookAuthor INT NOT NULL REFERENCES Authors (authorsID), yearOfRelease INT, PRIMARY KEY (bookID));
INSERT INTO Books (bookID, bookName, bookAuthor, yearOfRelease) VALUES (1, 'Скандинавские мифы и легенды. Жизнеописания богов и героев с иллюстрациями и подробными комментариями', 1, 2021);
INSERT INTO Books (bookID, bookName, bookAuthor, yearOfRelease) VALUES (2, 'Солярис', 2, 1960);

-- Индекс: bookID
CREATE UNIQUE INDEX bookID ON Books (bookID);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
