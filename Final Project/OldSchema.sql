CREATE TABLE stores (
    store_id INTEGER PRIMARY KEY,
    store_name VARCHAR(75) NOT NULL
);

CREATE TABLE store_contacts (
    contact_id INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number CHAR(11) NOT NULL,
    FOREIGN KEY(store_id) REFERENCES stores(store_id)
);

CREATE TABLE instruments (
    instrument_id SMALLINT PRIMARY KEY,
    instrument_name VARCHAR(60) NOT NULL UNIQUE,
    instrument_type VARCHAR(30) NOT NULL,
    price DECIMAL(19, 4) NOT NULL
);

CREATE TABLE accessories (
    accessory_id SMALLINT PRIMARY KEY,
    accessory_name VARCHAR(100) NOT NULL UNIQUE,
    instrument_id SMALLINT NOT NULL,
    price DECIMAL(19, 4) NOT NULL,
    FOREIGN KEY(instrument_id) REFERENCES instruments(instrument_id)
);

CREATE TABLE orders (
    orderID INTEGER PRIMARY KEY,
    store_id INTEGER NOT NULL,
    instrument_id SMALLINT,
    accessory_id SMALLINT,
    quantity SMALLINT NOT NULL,
    total_price DECIMAL(19, 4) NOT NULL,
    FOREIGN KEY(store_id) REFERENCES stores(store_id)
    FOREIGN KEY(instrument_id) REFERENCES instruments(instrument_id)
    FOREIGN KEY (accessory_id) REFERENCES accessories(accessory_id)
);