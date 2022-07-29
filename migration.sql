DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS BookList;
DROP TABLE IF EXISTS BookSelection;
DROP TABLE IF EXISTS Books;

CREATE TABLE users (
    userName TEXT,
    email TEXT,
    userID INTEGER
    PRIMARY KEY 
);

-- CREATE TABLE BookList (
--     bookID TEXT,
--     shelfName TEXT,
--     userID INTEGER,
--     BookListID INTEGER PRIMARY KEY,
--     FOREIGN KEY (userID) REFERENCES users(userID)
-- );

-- CREATE TABLE BookSelection (
--     BookListID INTEGER FOREIGN KEY REFERENCES BookList(BookListID),
--     BookID INTEGER FOREIGN KEY REFERENCES Books(BookID)
-- );

CREATE TABLE Books (
    title TEXT,
    author TEXT,
    BookID INTEGER,
    PRIMARY KEY (BookID)
);

INSERT INTO users (userName, email, userID) VALUES ('IlsaAnn', 'hamptonilsa96@gmail.com', 00000);
INSERT INTO users (userName, email, userID) VALUES ('DanielRay', 'wowanemail@gmail.com', 00001);
INSERT INTO users (userName, email, userID) VALUES ('ClaraBeara', 'yupthatsanemail@gmail.com', 00010);
INSERT INTO users (userName, email, userID) VALUES ('TomoeK', 'emailemail@gmail.com', 00100);
INSERT INTO users (userName, email, userID) VALUES ('LofiSofi', 'meowmrrreow@gmail.com', 01000);

INSERT INTO Books (title, author, BookID) VALUES ('Verity', 'Colleen Hoover', 80808080);
INSERT INTO Books (title, author, BookID) VALUES ('Eragon', 'Christopher Paolini', 81808080);
INSERT INTO Books (title, author, BookID) VALUES ('InkHeart', 'Cornelia Funke', 80818080);
INSERT INTO Books (title, author, BookID) VALUES ('the House of the Scorpion', 'Nancy Farmer', 80808180);
INSERT INTO Books (title, author, BookID) VALUES ('the Thief Lord', 'Cornelia Funke', 80808081);




