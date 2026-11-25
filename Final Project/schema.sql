-- Database Creation and Table Structure --

CREATE DATABASE IF NOT EXISTS music_store;

USE music_store;

CREATE TABLE stores (
    store_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    store_name VARCHAR(75) NOT NULL
);

CREATE TABLE store_contacts (
    contact_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    store_id INTEGER NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number CHAR(11) NOT NULL,
    FOREIGN KEY(store_id) REFERENCES stores(store_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE instruments (music_store
    instrument_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    instrument_name VARCHAR(50) NOT NULL UNIQUE,
    instrument_type VARCHAR(30) NOT NULL,
    price DECIMAL(19, 4) NOT NULL
);

CREATE TABLE accessories (
    accessory_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    accessory_name VARCHAR(100) NOT NULL UNIQUE,
    instrument_id SMALLINT NOT NULL,
    price DECIMAL(19, 4) NOT NULL,
    FOREIGN KEY(instrument_id) REFERENCES instruments(instrument_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE orders (
    orderID INTEGER PRIMARY KEY AUTO_INCREMENT,
    store_id INTEGER NOT NULL,
    instrument_id SMALLINT,
    accessory_id SMALLINT,
    quantity SMALLINT NOT NULL,
    total_price DECIMAL(19, 4) NOT NULL,
    FOREIGN KEY(store_id) REFERENCES stores(store_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY(instrument_id) REFERENCES instruments(instrument_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY(accessory_id) REFERENCES accessories(accessory_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Manual Data Entry --

USE music_store;

-- INSERT stores

INSERT INTO stores 
 	 (store_name)
VALUES
     ('Super Cool Music Store'),
     ('Atlantic Music Equipment'),
     ('Uptown Beats'),
     ('Brass and Stuff'),
     ('Port Instruments');
    
-- Insert store contacts

INSERT INTO store_contacts
	 (store_id, first_name, last_name, phone_number)
VALUES 
	 (1, 'Jimmy', 'BillyBob', '19024442155'),
	 (2, 'Sarah', 'Smith', '19025391129'),
	 (3, 'Emily', 'Roberts', '19023229762'),
	 (4, 'John', 'Cena', '19022042784'),
	 (5, 'Eric', 'Ericson', '19023173030');

-- Insert instruments 

INSERT INTO instruments
    (instrument_name, instrument_type, price)
VALUES
    ('Guitar', 'String', 299.99),
    ('Violin', 'String', 499.99),
    ('Drum Kit', 'Percussion', 699.99),
    ('Keyboard', 'Keyboard', 249.99),
    ('Trumpet', 'Brass', 349.99);
	 
-- Insert accessoriess

INSERT INTO accessories
     (accessory_name, instrument_id, price)
VALUES 
	('Standard Guitar Strings', 1, 14.99),
    ('Classical Guitar Strings', 1, 17.99),
	('Guitar Amplifier', 1, 149.99),
    ('Standard Violin Strings', 2, 19.99),
    ('Violin Bow', 2, 49.99),
    ('Oil Varnish', 2, 19.99),
	('Drumsticks', 3, 12.99),
    ('Snare Stand', 3, 59.99),
    ('Cymbal Lock', 3, 14.99),
	('Keyboard Stand', 4, 59.99),
    ('Attachable Music Stand', 4, 24.99)
    ('Key Labels', 4, 4.99)
	('Trumpet Mouthpiece', 5, 49.99);
    ('Replacement Valve', 5, 59.99)
    ('Trumpet Cleaning Kit', 5, 19.99)

-- Insert orders

INSERT INTO orders
    (store_id, instrument_id, accessory_id, quantity, total_price)
VALUES
    (1, 1, 3, 2, 599.97),
    (2, 2, NULL, 3, 1499.97),
    (3, NULL, 3, 10, 1499.90),
    (1, 5, 13, 2, 449.97);
    (5, 3, 8, 7, 1119.92)
