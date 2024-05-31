-- Cara Membuat Tabel --
CREATE TABLE PD04 (
	NIM VARCHAR(10) PRIMARY KEY,
    NamaDepan VARCHAR(10),
    NamaBelakang VARCHAR(10),
    NomorHP VARCHAR(14)
)

-- Cara Input Data --
INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015041','Sindy','Marantika','085840565100')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015050','Lely','Saputri','085640961542')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015051','Saiful','Andika','082241617784')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015036','Anggit','Larasati','085846933321')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015002','Ragita','Anillya','081292147880')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015010','Nastasya','Dewi','085710700182')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2200015012','Didi','Cahyadi','083824034448')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2200015032','Anggitha','Aryanawa','08989220177')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2200015023','Maya','Saputri','085641662848')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015037','Lisa','Safitri','082253059683')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015049','Wisnu','Tulloh','081232197053')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2100015006','Januar','Rasyid','081229088740')

INSERT INTO PD04(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ('2215015035','Hasan','Darmawan','085694294438')

-- Cara Melihat Data Yang Sudah Di Inputkan --
SELECT * FROM PD04