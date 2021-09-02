SELECT * FROM invoice_line;
SELECT * FROM invoice;

SELECT * 
FROM invoice
JOIN invoice_line ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99 

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c  ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT al.title, a.name
FROM album al 
JOIN artist a ON al.artist_id = a.artist_id;

SELECT playlist_track.track_id
FROM playlist_track
JOIN playlist p ON p.playlist_id = playlist_track.playlist_id
WHERE p.name = 'Music';

SELECT t.name
FROM track t 
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;


SELECT * FROM genre;

SELECT t.name, a.title
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';