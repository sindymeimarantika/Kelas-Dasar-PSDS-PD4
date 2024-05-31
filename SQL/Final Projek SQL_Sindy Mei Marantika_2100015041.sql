CREATE TABLE Outlet (
	id_outlet INT,
	nama_outlet VARCHAR(30)
)

INSERT INTO Outlet
VALUES (1,'Pamela 1'),
       (2,'Pamela 2'),
       (3,'Pamela 3'),
       (4,'Pamela 4'),
       (5,'Pamela 5'),
       (6,'Pamela 6')

CREATE TABLE Barang (
	id_produk INT,
	nama_produk VARCHAR(30),
	stok_produk INT,
	harga_produk INT,
	harga_jual INT
)

INSERT INTO Barang
VALUES (1,'Oreo',267,4500,5000),
	   (2,'Indomie Rendang',521,1200,1800),
	   (3,'Indome Goreng',127,1250,1750),
	   (4,'Indome Soto',426,1223,1678),
	   (5,'Aqua 600 ml',523,2350,3000),
	   (6,'Le Mineral 600 ml',524,2456,2500),
	   (7,'Beras Sahaja 5 Kg',121,48000,54000),
	   (8,'Mama Lemon 250 ml',123,4500,5000),
	   (9,'Cimory Almond 200 ml', 21, 3000,3900),
	   (10,'Lifeboy 250 ml',52,23400,26000)
	   

SELECT * FROM Outlet
SELECT * FROM Barang

--- Top 2 Produk paling laku di pamela 6 ---
SELECT m.id_outlet, a.nama_produk, SUM(m.produk_terjual)totalprodukterjual
FROM DataPenjualan m
INNER JOIN Barang a
ON m.id_produk = a.id_produk
WHERE m.id_outlet = '6' and m.id_produk
GROUP BY m.id_produk, m.id_outlet
ORDER BY SUM(m.produk_terjual) DESC LIMIT 2

--- Keuntungan ---
-- Keuntungan id_produk 6 di pamela 1 --
SELECT ((harga_jual - harga_produk) * (SELECT SUM(produk_terjual))) AS Keuntungan 
FROM(SELECT m.id_outlet,m.id_produk, m.produk_terjual,a.harga_produk, a.harga_jual
FROM DataPenjualan m
INNER JOIN Barang a
ON m.id_produk = a.id_produk)
WHERE id_outlet = '1' and id_produk = '6'

--- Keuntungan id_produk 2 di pamela 6 ---
SELECT ((harga_jual - harga_produk) * (SELECT SUM(produk_terjual))) AS Keuntungan 
FROM(SELECT m.id_outlet,m.id_produk, m.produk_terjual,a.harga_produk, a.harga_jual
FROM DataPenjualan m
INNER JOIN Barang a
ON m.id_produk = a.id_produk)
WHERE id_outlet = '6' and id_produk = '2'

--- Keuntungan id_produk 3 di pamela 3 ---
SELECT ((harga_jual - harga_produk) * (SELECT SUM(produk_terjual))) AS Keuntungan 
FROM(SELECT m.id_outlet,m.id_produk, m.produk_terjual,a.harga_produk, a.harga_jual
FROM DataPenjualan m
INNER JOIN Barang a
ON m.id_produk = a.id_produk)
WHERE id_outlet = '3' and id_produk = '3'

--- Keuntungan id_produk 2 di pamela 6 ---
SELECT ((harga_jual - harga_produk) * (SELECT SUM(produk_terjual))) AS Keuntungan 
FROM(SELECT m.id_outlet,m.id_produk, m.produk_terjual,a.harga_produk, a.harga_jual
FROM DataPenjualan m
INNER JOIN Barang a
ON m.id_produk = a.id_produk)
WHERE id_outlet = '6' and id_produk = '2'