-- Membuat 2 macam tabel --

CREATE TABLE DB_Mahasiswa (
	NIM VARCHAR(10),
	Nama VARCHAR(30)
)

INSERT INTO Db_Mahasiswa (NIM,Nama)
VALUES ('2100015049','Wisnu Catur R'),
       ('2100015041','Sindy Mei Marantika'),
       ('2215015035','Hasan Darmawan'),
       ('2100015051','Saiful Andika')

INSERT INTO Db_Mahasiswa(NIM)
VALUES ('2100015053'),
       ('2100015037')
       
SELECT * FROM Db_Mahasiswa
--------------------------------------------
CREATE TABLE DB_Asal (
	NIM VARCHAR(10),
	AsalKota VARCHAR(30)
)

INSERT INTO Db_Asal (NIM,AsalKota)
VALUES ('2100015049','Pasuruan'),
       ('2100015041','OKU Timur'),
       ('2100015053','Ciamis'),
       ('2100015037','Bandung'),
       ('2115015030','kudus'),
       ('2100015002','Bogor')

INSERT INTO Db_Asal(NIM)
VALUES ('2200015023'),
       ('2200015012')
              
SELECT * FROM Db_Asal

-- menggabungkan 2 data --
-- INNER Join --
SELECT m.NIM, m.Nama, a.AsalKota
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a
ON m.NIM = a.NIM

-- LEFT Join --
SELECT m.NIM, m.Nama, a.AsalKota
FROM Db_Mahasiswa m
LEFT JOIN Db_Asal a
ON m.NIM = a.NIM

-- RIGHT Join --
SELECT m.NIM, m.Nama, a.AsalKota
FROM Db_Mahasiswa m
RIGHT JOIN Db_Asal a
ON m.NIM = a.NIM

-- INNER Join with ORDER --
--Menggurutkan AsalKota sesuai abjad
SELECT m.NIM, m.Nama, a.AsalKota
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a
ON m.NIM = a.NIM
ORDER BY a.AsalKota
--Menggurutkan NIM Ascending(Kecil -> besar)
SELECT m.NIM, m.Nama, a.AsalKota
FROM Db_Mahasiswa m
INNER JOIN Db_Asal a
ON m.NIM = a.NIM
ORDER BY m.NIM