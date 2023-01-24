-- Authors
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(0, 'Yves Bigerel', 'Yves Bigerel', 'Jamal Campbell', 'Marvel Universe');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(1, 'Chris Sims', 'Jamal Campbell', NULL , 'Marvel Universe');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(2, 'Ryan North', 'Danilo S. Beyruth', NULL , 'Marvel Universe');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(3, 'Chuck Wendig', 'Juanan Ramirez', 'Jamal Campbell' , 'Marvel Universe');
INSERT INTO Authors(authors_id, writer, penciler, cover_artist, imprint)
VALUES(4, 'Paul Allor', 'Diego Olortegui', 'Jamal Campbell' , 'Marvel Universe');

-- Issue
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(0, 'A Year of Marvels: April Infinity Comic (2016) #1', 0 , 0);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(1, 'A Year of Marvels: August Infinity Comic (2016) #1', 1 , 1);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(2, 'A Year of Marvels: February Infinity Comic (2016) #1', 2 , 2);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(3, 'A Year of Marvels: July Infinity Comic (2016) #1', 3 , 3);
INSERT INTO Issue(issue_id, issue_title, authors_id, info_id)
VALUES(4, 'A Year of Marvels: June Infinity Comic (2016) #1', 4 , 4);

-- Info
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(0, 'A Year of Marvels: April Infinity Comic (2016)', (2016), 'April 01, 2016', 'The Infinite Comic that will have everyone talking!...', 'Infinite Comic', 'Rated T+', 'Free');
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(1, 'A Year of Marvels: August Infinity Comic (2016)', (2016), 'August 10, 2016', 'Its August, and Nick Fury us just time to attend ...', 'Infinite Comic', 'None', 'Free');
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(2, 'A Year of Marvels: February Infinity Comic (2016)', (2016), 'Februaru 10, 2016', 'Join us in a brand new Marvel comics adventure...', 'Infinite Comic', 'Rated T+', 'Free');
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(3, 'A Year of Marvels: July Infinity Comic (2016)', (2016), 'July 29, 2016', 'Celebrating the Fourth of July is complicated enough for a patriotic...', 'Infinite Comic', 'None', 'Free');
INSERT INTO Info(info_id, comic_name, active_years, publish_date, issue_description, format, rating, price)
VALUES(4, 'A Year of Marvels: June Infinity Comic (2016)', (2016), 'June 15, 2016', 'Sam Alexanders finding it hard to cope with the fact that...', 'Infinite Comic', 'None', 'Free');