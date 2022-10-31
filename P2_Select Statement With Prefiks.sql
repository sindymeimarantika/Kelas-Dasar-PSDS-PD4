-- Cara menampilkan tabel --
SELECT * FROM Sindy


-- Cara lain untuk menampilkan data dengan prefiks --
-- Prefiks jelas
SELECT * FROM Sindy AS i
-- Prefiks samar
SELECT * FROM Sindy i

-- Cara mengambil Variabel nama --
-- menggunakan prefiks
SELECT i.NIM From Sindy i
-- tidak menggunakan prefiks
SELECT NIM FROM Sindy

-- cara mengambil variabel namadepan dan namabelakang
SELECT i.NamaDepan, i.NamaBelakang FROM Sindy i
SELECT NamaDepan, NamaBelakang FROM Sindy

-- Cara Menganti urutan
SELECT i.NomorHP, i.NamaDepan, i.NamaBelakang, i.NIM FROM Sindy i