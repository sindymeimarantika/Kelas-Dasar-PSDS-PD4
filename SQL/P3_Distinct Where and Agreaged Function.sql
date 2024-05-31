-- Mengakses Tabel Customer --
SELECT * FROM Customer

-- Menampilkan Country di Tabel Customer --
SELECT Country FROM Customer

-- Menampilkan Country di Tabel Customer dengan Fungsi DISTINCT (memilih data yg berbeda/tidak menampilkan data duplikat) --
SELECT DISTINCT Country FROM Customer

-- Mengambil/menampilkan semua data dari Negara Tertentu dan suatu kolom tertentu misal negara Brazil dengan kolom City --
SELECT * FROM Customer WHERE Country ="Brazil" and City ="São Paulo"

SELECT * FROM Customer WHERE Country = "Brazil" or Country = "Germany"

SELECT * FROM Customer WHERE Country IN ('Barzil','Germany')

-- Menghitung banyak data --
SELECT COUNT(i.Total) FROM Invoice i

-- Menghitung jumlah total --
SELECT SUM(i.Total) FROM Invoice i

-- Menghitung rata-rata --
SELECT AVG(i.Total) FROM Invoice i

-- Menghitung nilai maks min --
SELECT MAX(i.Total) FROM Invoice i
SELECT MIN(i.Total) FROM Invoice i

-- untuk menampilkan data total --
SELECT (i.Total) FROM Invoice i

-- Untuk mengganti Nama Tabel --
SELECT MIN(i.Total) AS NilaiMinimum FROM Invoice i
SELECT MAX(i.Total) AS NilaiMaksimum FROM Invoice i
