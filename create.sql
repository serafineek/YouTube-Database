DROP SCHEMA IF EXISTS youtube CASCADE;
CREATE SCHEMA youtube;


CREATE TYPE enum_kategoria AS ENUM('rozrywka','sport','jedzenie','muzyka','gry');
CREATE TYPE enum_stanowisko AS ENUM('support','technik','programista','grafik');
CREATE TYPE enum_plec AS ENUM('mê¿czyzna','kobieta');
CREATE TYPE enum_dostepnosc AS ENUM('publiczny','prywatny','niepubliczny');


CREATE TABLE kanaly(
id_kanalu SERIAL PRIMARY KEY,
nazwa VARCHAR(40) NOT NULL,
data_zalozenia TIMESTAMP DEFAULT now(),
zarobki NUMERIC(7,2),
opis_kanalu TEXT,
subskrybcje INT NOT NULL
);

CREATE TABLE uzytkownicy(
id_uzytkownika SERIAL PRIMARY KEY,
imie VARCHAR(30) NOT NULL,
nazwisko VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
data_urodzenia DATE NOT NULL,
data_dolaczenia TIMESTAMP DEFAULT now(),
plec enum_plec NOT NULL
);

ALTER TABLE kanaly ALTER column opis_kanalu SET DEFAULT 'brak opisu'; 
ALTER TABLE kanaly ALTER COLUMN subskrybcje SET DEFAULT 0;
ALTER TABLE kanaly ALTER COLUMN zarobki SET DEFAULT 0;


ALTER TABLE kanaly ADD CONSTRAINT wiecej_niz_zero CHECK (subskrybcje >=0);
ALTER TABLE kanaly ADD COLUMN id_uzytkownika SERIAL NOT NULL;
ALTER TABLE kanaly ADD COLUMN ograniczenia BOOL DEFAULT FALSE;
ALTER TABLE kanaly ADD FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownicy(id_uzytkownika);


CREATE TABLE sponsorzy(
kwota NUMERIC(7,2),
data_wspierania TIMESTAMP DEFAULT current_timestamp,
czas_trwania interval
);

ALTER TABLE sponsorzy ADD COLUMN id_kanalu SERIAL NOT NULL;
ALTER TABLE sponsorzy ADD FOREIGN KEY (id_kanalu) REFERENCES kanaly(id_kanalu);
ALTER TABLE sponsorzy ADD COLUMN id_uzytkownika SERIAL NOT NULL;
ALTER TABLE sponsorzy ADD FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownicy(id_uzytkownika);

CREATE TABLE zgloszenia(
id_zgloszenia SERIAL PRIMARY KEY,
tytul_zgloszenia VARCHAR(30) NOT NULL,
powód TEXT NOT NULL,
data_zgloszenia TIMESTAMP DEFAULT current_timestamp
);

ALTER TABLE zgloszenia ALTER COLUMN tytul_zgloszenia TYPE varchar(35);
ALTER TABLE zgloszenia RENAME COLUMN tytul_zgloszenia TO tytul;



CREATE TABLE pracownicy(
id_pracownika SERIAL PRIMARY KEY,
imie VARCHAR(30) NOT NULL,
nazwisko VARCHAR(30) NOT NULL,
email VARCHAR(45) NOT NULL,
data_dolaczenia TIMESTAMP DEFAULT now(),
zarobki NUMERIC(7,2),
stanowisko enum_stanowisko NOT NULL
);
ALTER TABLE pracownicy ADD UNIQUE(email);
CREATE TABLE filmy(
id_filmu SERIAL PRIMARY KEY,
tytul VARCHAR(45) NOT NULL,
autor VARCHAR(45) NOT NULL,
wyswietlenia VARCHAR(45) NOT NULL DEFAULT 0,
komentarze INTEGER NOT NULL DEFAULT 0,
liczba_polubien INTEGER NOT NULL DEFAULT 0,
opis_filmu TEXT,
data_publikacji TIMESTAMP DEFAULT current_timestamp,
dostêpnoœæ enum_dostepnosc NOT NULL
);
ALTER TABLE filmy RENAME COLUMN dostêpnoœæ TO "dostepnosc";
ALTER TABLE zgloszenia ADD COLUMN id_filmu SERIAL NOT NULL;
ALTER TABLE zgloszenia ADD FOREIGN KEY (id_filmu) REFERENCES filmy(id_filmu);
ALTER TABLE zgloszenia ADD COLUMN id_pracownika SERIAL NOT NULL;
ALTER TABLE zgloszenia ADD FOREIGN KEY (id_pracownika) REFERENCES pracownicy(id_pracownika);

ALTER TABLE filmy ALTER COLUMN wyswietlenia TYPE INTEGER USING wyswietlenia::integer;
--ALTER TABLE filmy RENAME COLUMN wyswietlenia2 TO wyswietlenia;

ALTER TABLE filmy DROP COLUMN autor;

ALTER TABLE filmy ALTER COLUMN opis_filmu SET DEFAULT 'brak opisu';
ALTER TABLE filmy ALTER COLUMN dostepnosc SET DEFAULT 'publiczny';

ALTER TABLE filmy ADD COLUMN id_kanalu SERIAL NOT NULL;
ALTER TABLE filmy ADD FOREIGN KEY(id_kanalu) REFERENCES kanaly(id_kanalu);


CREATE TABLE playlisty(
id_playlisty SERIAL PRIMARY KEY,
nazwa VARCHAR(45),
liczba_filmów INTEGER DEFAULT 0,
kategoria enum_kategoria NOT NULL,
autor VARCHAR(45),
data_utworzenia TIMESTAMP DEFAULT now()
);



CREATE TABLE playlisty_filmy (
id_filmu SERIAL NOT NULL,
id_playlisty SERIAL NOT NULL,
FOREIGN KEY(id_filmu) REFERENCES filmy(id_filmu),
FOREIGN KEY(id_playlisty) REFERENCES playlisty(id_playlisty)
);

ALTER TABLE playlisty_filmy DROP CONSTRAINT playlisty_filmy_id_filmu_fkey;
ALTER TABLE playlisty_filmy ADD FOREIGN KEY(id_filmu) REFERENCES filmy(id_filmu);


ALTER TABLE playlisty DROP COLUMN autor;
ALTER TABLE playlisty ADD COLUMN id_kanalu SERIAL NOT NULL;
ALTER TABLE playlisty ADD FOREIGN KEY(id_kanalu) REFERENCES kanaly(id_kanalu);


CREATE TABLE komentarze(
id_komentarza SERIAL PRIMARY KEY,
tresc TEXT NOT NULL,
id_uzytkownika SERIAL NOT NULL,
id_filmu SERIAL NOT NULL,
FOREIGN KEY(id_uzytkownika) REFERENCES uzytkownicy(id_uzytkownika),
FOREIGN KEY(id_filmu) REFERENCES filmy(id_filmu)
);

ALTER TABLE komentarze ALTER COLUMN tresc TYPE VARCHAR(450);


CREATE SEQUENCE "youtube".zmiana_typu_primarykey;
alter table komentarze alter column id_komentarza type int, alter column id_komentarza set default nextval('zmiana_typu_primarykey');
alter sequence zmiana_typu_primarykey start 2;

ALTER TABLE komentarze DROP CONSTRAINT komentarze_pkey;
ALTER TABLE komentarze ADD PRIMARY KEY(id_komentarza);







