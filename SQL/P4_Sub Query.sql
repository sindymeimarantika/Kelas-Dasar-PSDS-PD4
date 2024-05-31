-- Membuat Tabel MK_Kalkulus --
CREATE TABLE MK_Kalkulus (
	NIM VARCHAR(10) PRIMARY KEY,
	Nama VARCHAR(30),
	UTS INTEGER,
	UAS INTEGER
)

-- Input Data --
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES ("2100015041","Sindy Mei Marantika",100,100),
       ("2100015049","Wisnu Catur R",70,90),
       ("2100015006","Januar Nur Rasyid",60,70),
       ("2100015037","Lisa Nessa Safitri",80,80)

-- Melihat Table --
SELECT * From MK_Kalkulus

-- Membuat Tabel nilai akhir(berisi nilai (UTS+UAS)/2) --
Select *,((UTS+UAS)/2)Nilai_akhir From MK_Kalkulus

-- Rata-rata Nilai_akhir --
Select AVG(((UTS+UAS)/2)) From MK_Kalkulus

-- Menampilkan data(Nilai_akhir) diatas rata-rata(81,25) --
Select *,((UTS+UAS)/2)Nilai_akhir From MK_Kalkulus
WHERE Nilai_akhir > 81.25

--- Query yang berlaku untuk semua data --
-- Input Data Tambahan --
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES ("2215015035","Hasan Darmawan",40,40)

-- Membuat Tabel nilai akhir(berisi nilai (UTS+UAS)/2) --
Select *,SUM(U)
Select *,((UTS+UAS)/2)Nilai_akhir From MK_Kalkulus

-- Rata-rata Nilai_akhir --
Select AVG(((UTS+UAS)/2)) From MK_Kalkulus

-- Sub Query (berlaku untuk semua data baik itu data tambahan) untuk Menampilkan data lebih dari rata-rata --
SELECT *,((UTS+UAS)/2)Nilai_akhir From MK_Kalkulus
WHERE Nilai_akhir > (SELECT AVG(((UTS+UAS)/2)) From MK_Kalkulus)

