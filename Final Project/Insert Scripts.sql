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
    ('Acoustic Guitar', 'String', 299.99),
    ('Electric Guitar', 'String', 499.99),
    ('Drum Kit', 'Percussion', 699.99),
    ('Keyboard', 'Keyboard', 249.99),
    ('Trumpet', 'Brass', 349.99);
	 
-- insert accessoriess

INSERT INTO accessories
     (accessory_name, instrument_id, price)
VALUES 
	 ('Guitar Strings', 1, 14.99),
	 ('Guitar Amplifier', 2, 149.99),
	 ('Drumsticks', 3, 12.99),
	 ('Keyboard Stand', 4, 59.99),
	 ('Trumpet Mouthpiece', 5, 39.99);

-- Insert orders

INSERT INTO orders
    (store_id, instrument_id, accessory_id, quantity, total_price)
VALUES
    (1, 1, NULL, 2, 599.98),
    (2, 2, NULL, 3, 1499.97),
    (3, NULL, 3, 10, 129.90),
    (1, NULL, 2, 2, 299.98);

