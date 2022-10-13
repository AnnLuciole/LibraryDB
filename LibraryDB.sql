--
-- ���� ������������ � ������� SQLiteStudio v3.3.3 � �� ��� 13 13:58:19 2022
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: Authors
CREATE TABLE Authors (authorsID INT NOT NULL, authorsName STRING NOT NULL, PRIMARY KEY (authorsID));
INSERT INTO Authors (authorsID, authorsName) VALUES (1, '��� �������');
INSERT INTO Authors (authorsID, authorsName) VALUES (2, '��������� ���');

-- �������: Books
CREATE TABLE Books (bookID INT NOT NULL, bookName STRING NOT NULL, bookAuthor INT NOT NULL REFERENCES Authors (authorsID), yearOfRelease INT, PRIMARY KEY (bookID));
INSERT INTO Books (bookID, bookName, bookAuthor, yearOfRelease) VALUES (1, '������������� ���� � �������. ������������� ����� � ������ � ������������� � ���������� �������������', 1, 2021);
INSERT INTO Books (bookID, bookName, bookAuthor, yearOfRelease) VALUES (2, '�������', 2, 1960);

-- ������: bookID
CREATE UNIQUE INDEX bookID ON Books (bookID);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
