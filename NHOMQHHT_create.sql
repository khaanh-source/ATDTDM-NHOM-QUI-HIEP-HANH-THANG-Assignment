-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-11-29 01:37:17.968
CREATE DATABASE NHOMQHHT;
use NHOMQHHT;
-- tables
-- Table: chi_tiet_hoa_don
CREATE TABLE chi_tiet_hoa_don (
    id int NOT NULL,
    sohoadon int NULL,
    id_chi_tiet_hoa_don int NOT NULL,
    pID int NOT NULL,
    CONSTRAINT chi_tiet_hoa_don_pk PRIMARY KEY (id_chi_tiet_hoa_don)
);

-- Table: hoa_don
CREATE TABLE hoa_don (
    id int NOT NULL,
    sohoadon int NOT NULL,
    ngaytaohoadon date NULL,
    CONSTRAINT hoa_don_pk PRIMARY KEY (sohoadon)
);

-- Table: customer
CREATE TABLE customer (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NULL,
    phone varchar(50) NULL,
    address varchar(50) NULL,
    CONSTRAINT customer_pk PRIMARY KEY (id)
);

-- Table: loai_san_pham
CREATE TABLE loai_san_pham (
    c_product_id int NOT NULL,
    c_product_category varchar(50) NULL,
    c_product_vendor varchar(50) NULL,
    CONSTRAINT loai_san_pham_pk PRIMARY KEY (c_product_id)
);

-- Table: items
CREATE TABLE items (
    pID int AUTO_INCREMENT,
    c_product_id int NOT NULL default 4022,
    productName varchar(50) NULL,
    product_date date NOT NULL default '2019-11-11',
    productPrice int NULL,
    isActive int NOT NULL,
    CONSTRAINT items_pk PRIMARY KEY (pID)
);

-- foreign keys
-- Reference: FK_0 (table: items)
ALTER TABLE items ADD CONSTRAINT FK_0 FOREIGN KEY FK_0 (c_product_id)
    REFERENCES loai_san_pham (c_product_id);

-- Reference: FK_1 (table: hoa_don)
ALTER TABLE hoa_don ADD CONSTRAINT FK_1 FOREIGN KEY FK_1 (id)
    REFERENCES customer (id);

-- Reference: FK_2 (table: chi_tiet_hoa_don)
ALTER TABLE chi_tiet_hoa_don ADD CONSTRAINT FK_2 FOREIGN KEY FK_2 (id)
    REFERENCES customer (id);

-- Reference: FK_3 (table: chi_tiet_hoa_don)
ALTER TABLE chi_tiet_hoa_don ADD CONSTRAINT FK_3 FOREIGN KEY FK_3 (sohoadon)
    REFERENCES hoa_don (sohoadon);

-- Reference: FK_4 (table: chi_tiet_hoa_don)
ALTER TABLE chi_tiet_hoa_don ADD CONSTRAINT FK_4 FOREIGN KEY FK_4 (pID)
    REFERENCES items (pID);

-- End of file.

insert into customer (name, phone, address) values ('Allison', '0123456789', '2 Cardinal Park');
insert into customer (name, phone, address) values ('Gerti', '0123456789', '6793 Division Junction');
insert into customer (name, phone, address) values ('Kyle', '0123456789', '383 Dennis Plaza');
insert into customer (name, phone, address) values ('Charity', '0123456789', '3399 Green Ridge Circle');
insert into customer (name, phone, address) values ('Vassily', '0123456789', '62985 Kingsford Drive');
insert into customer (name, phone, address) values ('Cybill', '0123456789', '90 Troy Alley');
insert into customer (name, phone, address) values ('Olin', '0123456789', '85 Swallow Place');
insert into customer (name, phone, address) values ('Jessie', '0123456789', '008 Ronald Regan Way');
insert into customer (name, phone, address) values ('Rosanne', '0123456789', '802 Dayton Crossing');
insert into customer (name, phone, address) values ('Camile', '0123456789', '9 Bunker Hill Hill');

insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (7993, 'Man hinh', 'Bubblebox');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (5902, 'Ban Phim', 'Photobug');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (7449, 'Tai nghe', 'Katz');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (9860, 'Thuc Pham', 'Avavee');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (8379, 'Quan Ao', 'Jaxworks');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (650, 'Xe may', 'Youtags');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (5943, 'O To', 'Feednation');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (4062, 'Xe dap', 'Demizz');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (4022, 'Phu kien', 'Oloo');
insert into loai_san_pham (c_product_id, c_product_category, c_product_vendor) values (7499, 'Dong Ho', 'DabZ');

insert into items (c_product_id, productName, product_date, productPrice, isActive) values (7993, 'LCD', '2020-11-29', 10000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (5902, 'Ban phim co', '2020-11-29', 20000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (7449, 'Tai nghe bluetooth', '2020-11-29', 30000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (9860, 'Gao', '2020-11-29', 40000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (8379, 'Ao Khoac', '2020-11-29', 50000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (650, 'Honda', '2020-11-29', 60000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (5943, 'Merc', '2020-11-29', 70000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (4062, 'Martin', '2020-11-29', 80000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (4022, 'Op Lung', '2020-11-29', 90000, 1);
insert into items (c_product_id, productName, product_date, productPrice, isActive) values (7499, 'Rolex', '2020-11-29', 10000, 1);

insert into hoa_don (id, sohoadon, ngaytaohoadon) values (1, 1, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (2, 2, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (3, 3, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (4, 4, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (5, 5, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (6, 6, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (7, 7, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (8, 8, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (9, 9, '2020-05-05');
insert into hoa_don (id, sohoadon, ngaytaohoadon) values (10, 10, '2020-05-05');

insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (1, 1, 17, 1);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (2, 2, 83, 2);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (3, 3, 29, 2);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (4, 4, 13, 3);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (5, 5, 79, 4);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (6, 6, 88, 5);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (7, 7, 28, 6);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (8, 8, 77, 7);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (9, 9, 89, 8);
insert into chi_tiet_hoa_don (id, sohoadon, id_chi_tiet_hoa_don, pID) values (10, 10, 56, 9);

