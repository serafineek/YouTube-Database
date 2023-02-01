----REVOKE na u�ytkowniku postgres
REVOKE CREATE ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON DATABASE postgres FROM PUBLIC;


---tworzenie r�l

CREATE ROLE wlasciciel;
CREATE ROLE pracownicy;
CREATE ROLE programisci;
CREATE ROLE uzytkownicy;


GRANT ALL ON ALL TABLES IN SCHEMA youtube TO wlasciciel;

CREATE USER boss WITH PASSWORD 'haslo123';

ALTER USER boss WITH SUPERUSER;


ALTER USER boss WITH CREATEROLE;
GRANT boss TO wlasciciel;


GRANT SELECT ON ALL TABLES IN SCHEMA youtube TO programisci;

GRANT CREATE ON SCHEMA youtube TO programisci;

GRANT REFERENCES ON ALL TABLES IN SCHEMA youtube TO programisci;

GRANT SELECT,DELETE,UPDATE,INSERT ON ALL TABLES IN SCHEMA youtube TO uzytkownicy;

GRANT SELECT,DELETE,UPDATE ON ALL TABLES IN SCHEMA youtube TO pracownicy;

---ROZPISKA UPRAWNIE� DLA U�YTKOWNIKA
--SELECT potrzebny jest Do tego, aby u�ytkownik m�g� wy�wietli� podstawowe dane o kanalach (np.nazwa,liczba subskrybcji,liczba film�w,data do��czenia,playlisty,opis kana�u) 
--Delete potrzebny jest do kasowania tre�ci na kanale np. film�w, playlisty, komentarzy pod swoimi filmami
--INSERT potrzebny jest do dodawania film�w na kana�, playlisty, dodawania film�w do playlisty oraz pisania komentarzy,dodawanie opisu filmu/kana�u i tworzenie profilu
--Update do aktualizowania danych na swoim profilu/kanale np. (aktualizacja opisu,zmiana nazwy kana�u,zmiana nazwy filmu,zmiany opisu filmy)

--ROZPISKA UPRAWNIE� DLA PRACOWNIKA
--SELECT potrzebny jest Do tego, aby u�ytkownik m�g� wy�wietli� podstawowe dane o kanalach (np.nazwa,liczba subskrybcji,liczba film�w,data do��czenia,playlisty,opis kana�u), 
--a tak�e do wy�wietlania zg�osze� oraz danych poufnych
--Delete do zada� moderacyjnych np. usuwanie film�w nie zgodnych z regulaminem Youtube, oraz usuwanie kont.
--Update do zmiany statusu konta z przyjaznego na ograniczone, wsparcie techniczne np. pro�ba o zmiane tytu�u przez u�ytkownika


CREATE USER user1 WITH PASSWORD 'user123';
GRANT user1 TO uzytkownicy;

CREATE USER pracownik1 WITH PASSWORD 'pracownik123';
GRANT pracownik1 TO pracownicy;

CREATE USER mati WITH PASSWORD 'haslo123';


GRANT mati TO programisci;
GRANT mati TO wlasciciel;

-- ZAPYTANIA



-- ZAPYTANIA DLA U�YTKOWNIKA
SELECT f.tytul AS tytul_filmu,count(k.id_komentarza) AS liczba_komentarzy FROM filmy AS f INNER JOIN komentarze AS k ON k.id_filmu = f.id_filmu GROUP BY f.tytul HAVING f.tytul LIKE 'W%' OR f.tytul LIKE '%E';
SELECT f.id_filmu,f.tytul,k.nazwa AS nazwa_kanalu,f.wyswietlenia FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu;
SELECT count(f.id_filmu) AS liczba_filmow,k.nazwa FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu GROUP BY k.nazwa;

-- ZAPYTANIA DLA PRACOWNIKA
SELECT count(u.id_uzytkownika) FROM uzytkownicy AS u INNER JOIN sponsorzy AS s ON u.id_uzytkownika = s.id_uzytkownika WHERE u.plec = 'kobieta' AND s.kwota = 50;
SELECT f.id_filmu,f.tytul,k.nazwa AS nazwa_kanalu,f.wyswietlenia FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu;
SELECT count(f.id_filmu) AS liczba_filmow,k.nazwa FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu GROUP BY k.nazwa;
SELECT u.imie,k.zarobki from kanaly as k inner join uzytkownicy as u on k.id_uzytkownika = u.id_uzytkownika where u.plec = 'kobieta' AND k.zarobki = (SELECT max(k.zarobki) FROM kanaly AS k 
INNER JOIN uzytkownicy AS u ON k.id_uzytkownika = u.id_uzytkownika WHERE u.plec = 'kobieta');


--WIDOKI U�YTKOWNIKA

CREATE OR REPLACE VIEW policz_komentarze AS SELECT f.tytul AS tytul_filmu,count(k.id_komentarza) AS liczba_komentarzy FROM filmy AS f INNER JOIN komentarze AS k ON k.id_filmu = f.id_filmu GROUP BY f.tytul HAVING f.tytul LIKE 'W%' OR f.tytul LIKE '%E';
CREATE OR REPLACE VIEW pokaz_filmy_na_kanale as SELECT f.id_filmu,f.tytul,k.nazwa AS nazwa_kanalu,f.wyswietlenia FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu;
CREATE OR REPLACE VIEW pokaz_liczbe_filmow_na_kanalach AS SELECT count(f.id_filmu) AS liczba_filmow,k.nazwa FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu GROUP BY k.nazwa;

--WIDOKI PRACOWNIKA

CREATE OR REPLACE VIEW maksymalne_zarobki_youtuberek AS SELECT u.imie,k.zarobki from kanaly as k inner join uzytkownicy as u on k.id_uzytkownika = u.id_uzytkownika where u.plec = 'kobieta' AND k.zarobki = (SELECT max(k.zarobki) FROM kanaly AS k 
INNER JOIN uzytkownicy AS u ON k.id_uzytkownika = u.id_uzytkownika WHERE u.plec = 'kobieta');
CREATE OR REPLACE VIEW liczba_kobiet_wspieraj�ce_kanaly_kwota_50zl AS SELECT count(u.id_uzytkownika) FROM uzytkownicy AS u INNER JOIN sponsorzy AS s ON u.id_uzytkownika = s.id_uzytkownika WHERE u.plec = 'kobieta' AND s.kwota = 50;
--CREATE OR REPLACE VIEW policz_komentarze AS SELECT f.tytul AS tytul_filmu,count(k.id_komentarza) AS liczba_komentarzy FROM filmy AS f INNER JOIN komentarze AS k ON k.id_filmu = f.id_filmu GROUP BY f.tytul HAVING f.tytul LIKE 'W%' OR f.tytul LIKE '%E';
--CREATE OR REPLACE VIEW pokaz_filmy_na_kanale as SELECT f.id_filmu,f.tytul,k.nazwa AS nazwa_kanalu,f.wyswietlenia FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu;
--CREATE OR REPLACE VIEW pokaz_liczbe_filmow_na_kanalach AS SELECT count(f.id_filmu) AS liczba_filmow,k.nazwa FROM filmy AS f INNER JOIN kanaly AS k ON k.id_kanalu = f.id_kanalu GROUP BY k.nazwa;







