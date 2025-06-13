CREATE TABLE newtable (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    message TEXT
);


INSERT INTO newtable (message) VALUES
	 ('Edwin'),
	 ('Samodra');