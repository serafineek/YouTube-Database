TRUNCATE TABLE filmy,uzytkownicy,kanaly,komentarze,playlisty,playlisty_filmy,pracownicy,sponsorzy,uzytkownicy,zgloszenia RESTART IDENTITY CASCADE;
ALTER SEQUENCE zmiana_typu_primarykey RESTART;
BEGIN TRANSACTION;
--rekordy do tabeli uzytkownicy
INSERT INTO uzytkownicy(imie,nazwisko,email,data_urodzenia,data_dolaczenia,plec) VALUES 
('Jan','D�browski','jdabrowsky@gmail.com','1996/09/29','2011/09/29','m�czyzna'),
('Karol','Wi�niewski','friz@gethero.pl','1996/02/13','2010/10/15','m�czyzna'),
('Karol','G�zwa','blowek@gamellon.com','1996/12/17','2011/04/13','m�czyzna'),
('Weronika','Sowa','wersow@gethero.pl','1996/08/31','2013/06/25','kobieta'),
('Remigiusz','Wierzgo�','rezigiusz@gethero.pl','1996/09/11','2012/08/27','m�czyzna'),
('Stuart','Burton','stuu@gamellon.com','1992/01/7','2011/10/05','m�czyzna'),
('Piotr','Skowyrski','izak@fantasyexpo.pl','1987/12/02','2006/12/01','m�czyzna'),
('Mateusz','Serafin','serafineq@o2.pl','2004/04/24','2016/05/26','m�czyzna'),
('Zuzanna','Borucka','zuziowesprawki@gmail.com','1996/02/28','2013/12/13','kobieta'),
('Sylwester','Ward�ga','sylwester@sawardega.com','1989/12/31','2012/01/30','m�czyzna'),
('Marek','Kruszel','wspolpraca@kruszwil.net','2001/03/23','2017/07/27','m�czyzna'),
('Tomasz','Dzia�owy','martyna.karas@goldencoil.pl','1994/04/17','2011/03/02','m�czyzna'),
('Sergiusz','G�rski','biznes@thenitrozyniak.pl','1996/09/29','2013/02/16','m�czyzna'),
('Mateusz','Krzy�anowski','minimajk@gethero.pl','1995/12/15','2017/04/01','m�czyzna'),
('Kamil','Matyka','kamil.kontakt1234@gmail.com','2004/03/15','2019/02/26','m�czyzna'),
('Jan','Kowalski','kowalski.jan@gmail.com','1992/11/14','2008/04/28','m�czyzna'),
('Joanna','Jagodzi�ska','joanna95@o2.pl','1995/12/12','2010/05/11','kobieta'),
('S�awomir','Zapa�a','s�awomir@biznes.pl','1983/03/19','2014/02/24','m�czyzna'),
('Marta','B�och','murcix@gethero.pl','1998/11/02','2017/04/01','kobieta'),
('Sylwia','Przybysz','sylwiaprzybysz@gmail.com','1998/08/28','2019/02/23','kobieta'),
('Norbert','Gierczak','dis@fantasyexpo.pl','1997/06/04','2012/08/10','m�czyzna'),
('Micha�','Baron','murcix@gethero.pl','1995/03/2','2014/11/27','m�czyzna'),
('Mateusz','Tr�bka','trombavlog@gmail.com','1996/04/14','2017/06/28','m�czyzna'),
('Jaros�aw','Ogarek','jarekogarek1986youtube@wp.pl','1986/05/21','2007/08/09','m�czyzna'),
('Kamil','Chwastek','Poczciwykrzychu@gethero.pl','1994/06/11','2019/12/11','m�czyzna');
--rekordy do tabeli kanaly

INSERT INTO kanaly(nazwa,zarobki,opis_kanalu,subskrybcje,id_uzytkownika) VALUES
('JDabrowsky',6500,'JDabrowsky to grabarz smutku ludzkiego.',1760000,1),
('Karol Friz Wi�niewski',35000,'http://instagram.com/frizoluszek',4370000,2),
('Jdabrowsky Games',800,'Kana� JDabrowsky, czyli Jana D�browskiego, po�wi�cony gamingowi.',35300,1),
('Blowek',15000,'Siemano ziomeczku! Ja jestem blow i lubi� gra� w gry i powodowa� u�miech na twarzach moich widz�w! Kliknij przycisk subskrybuj i zosta� ziomalem. ',4730000,3),
('Stuu',10000,'Witam na moim kanale Stuu!',4300000,6),
('Sa Wardega',5000,'Prank Channel. My name is Sylwester Adam Wardega and im not very talented so i decided to make people laugh',3650000,10),
('Tomasz Gimper Dzia�owy',9000,'Prank Channel. My name is Sylwester Adam Wardega and im not very talented so i decided to make people laugh',1920000,12),
('Zuzanna Borucka',1500,'HO, HO, HO Wi�cej ju� lat na YouTube ni� w �yciu! haha',1080000,9),
('JDabrowsky Plus',50,'Kana� dodatkowy Jasia D�browskiego, znanego tak�e jako "JDabrowsky',230000,1),
('Murcix',18000,'WSPӣPRACA: murcix@gethero.pl',1140000,19),
('MiniMajk',12000,'Jestem Mini Majk!',1480000,14),
('Stuu Gry',10,'Na tym kanale b�d� r�ne gry i filmy bez monta�u. Wszystkie zarobki z tego kana�u b�d� sz�y na cele charytatywne, tak�e filmy b�d� u�ywane w celach promowania r�nych akcji charytatywnych! Subskrybuj�c, 
ogl�daj�c i likeuj�c wesprzesz akcj�, a wsp�lnie krok po kroku przyczynimy si� do zrobienia czego� dobrego ;)',2260000,6),
('S�awomir Gwiazda Rock Polo',6000,'Cze�� tu S�awomir! S�AWOMIR Tw�rca, wokalista, wizjoner',914000,18),
('TheNitroZyniak',12000,'Dzien Dobry albo Dobry wieczor, zalezy o ktorej godzinie ogladasz ten opis. W tym opisie opisze opisem. Opis bedzie opisywujacy i opisany. W opisie znajdzie sie rowniez wiele opisywujacych opis opisow, bo opis opisany musi byc.',2600000,13),
('Rezigiusz',10000,'Witaj na moim kanale reZigiusz! ;) Na YouTube jako "reZi" istnieje od Sierpnia 2010r',4160000,5),
('Rezi Born To Be a Gamer',5500,'Witaj na moim kanale reZigiusz! ;) Na YouTube jako "reZi" istnieje od Sierpnia 2010r',597000,5),
('IzakLIVE',8500,'Oficjalny kana� Piotra izaka Skowyrskiego',2160000,7),
('Tromba',19500,'instagram - https://www.instagram.com/trombabomba/',18300000,23),
('Wersow',25000,'??',2080000,4),
('jarekogarek1986',10000,'Takie tam parodie, piosenki i inne. Troch� traktor�w.',337000,24),
('Poczciwy Krzychu',16000,'Siema z tej strony Kamil �Krzychu� ?
Nie jestem znawc� a pasjonatem motoryzacji i bawi� si� tym! :D ',11400000,25),
('Boxdel',1800,'W �yciu pr�buj� wszystkiego po trochu, ale g��wnie jestem przedsi�biorc�...',1520000,22),
('DisStream',7500,'?http://www.facebook.com/DisStream - Odwied� mojego fanpage i zostaw lajka 
https://www.g2a.com/r/disstream - Kup tanie gry na G2A! Z kodem "DIS" otrzymasz 3% cashbacku!',1010000,21),
('Sylwia Przybysz Official',2800,'Wokalistka ju� w wieku 15 lat zacz�a swoj� przygod� ze �piewaniem - na samym pocz�tku umieszcza�a covery swoich ulubionych piosenek, na kanale YouTube. D�ugo nie trzeba by�o czeka�, bo ju� 09.04.2014 razem z Jasiem D�browskim nagra�a cover piosenki Disneya pt. �Mi�o�� ro�nie wok� nas�.
Dzi�ki tej akcji, Sylwi� pokocha�y dziesi�tki tysi�cy os�b i bardzo szybko zosta�a zauwa�ona przez wytw�rnie muzyczne.',597000,20);
INSERT INTO kanaly (nazwa,zarobki,subskrybcje,id_uzytkownika) values 
('Kamil Matyka',0,2448,15),
('Zagrajmy z Gimperem',1250,298000,12),
('serafineq',0,312,8),
('EKIPA',20000,153000,2);
INSERT INTO kanaly (nazwa,zarobki,subskrybcje,id_uzytkownika,ograniczenia) values 
('DISCO MAREK',0,2448,11,true),
('Marek Kruszwil',6000,230000,11,true);
--rekordy do tabeli sponsorzy

INSERT INTO sponsorzy(kwota,data_wspierania,czas_trwania,id_kanalu,id_uzytkownika) VALUES
(10,'2016/04/01 18:53:45','7 day',1,2),
(25,'2018/03/21 15:39:01','14 day',2,8),
(50,'2020/07/15 12:33:06','30 day',25,4),
(5,'2021/02/20 8:55:40','3 day',20,21),
(25,'2021/09/08 9:43:02','14 day',17,7),
(100,'2019/12/12 7:30:00','60 day',7,9),
(15,'2020/11/01 19:34:46','12 day',2,5),
(15,'2019/05/05 15:28:10','12 day',24,25),
(10,'2018/05/05 17:30:00','7 day',3,13),
(5,'2017/07/27 20:27:07','3 day',7,3),
(100,'2019/10/27 13:30:25','60 day',6,16),
(15,'2021/01/02 10:30:35','12 day',23,6),
(100,'2020/02/02 02:20:25','60 day',12,15);
INSERT INTO sponsorzy(kwota,czas_trwania,id_kanalu,id_uzytkownika) VALUES
(15,'12 day',25,5),
(100,'60 day',18,6);
--rekordy do tabeli pracownicy
INSERT INTO pracownicy (imie,nazwisko,data_dolaczenia,zarobki,stanowisko,email) VALUES
('Jan','Bytnar','2016/04/01',4500,'support','jan.bytnar@gmail.com'),
('Karol','Wielki','2012/12/02',5500,'grafik','karolwie@o2.pl'),
('Andrzej','Kowalski','2015/08/21',3800,'support','kowalski.andrzej@gmail.com'),
('Robert','Malinowski','2008/02/18',7200,'programista','malinowskir@wp.pl'),
('Jaros�aw','Krutysza','2009/10/12',6000,'technik','krutysza.jarek@gmail.com'),
('Marek','Mazowiecki','2011/11/17',3500,'support','mazowieckim@biznes.pl'),
('Malwina','Kr�pa','2013/07/05',9000,'grafik','malwina78@gmail.com'),
('Mateusz','Telega','2012/06/14',8000,'programista','telega88@gmail.com'),
('�ukasz','Marchewka','2007/09/02',4500,'technik','marchewka.lukasz@o2.pl'),
('Jacek','Sosna','2016/06/16',7800,'programista','sosenka.jacek@gmail.com'),
('J�zef','Redestowicz','2018/02/12',6200,'grafik','j�zef.red@gmail.com'),
('Mariusz','W�odarczyk','2019/05/23',4800,'technik','w�odarczyk.m@gmail.com'),
('Micha�','Anio�ek','2014/03/17',3200,'support','anio�ek.michal@gmail.com'),
('Adam','Wojew�dzki','2021/12/01',8900,'programista','adas.wojewodzki@wp.pl'),
('Justyna','Jagodzi�ska','2020/11/05',6500,'programista','justyna.jagoda@wp.pl');
--rekordy do tabeli filmy
INSERT INTO filmy(tytul,wyswietlenia,komentarze,liczba_polubien,opis_filmu,data_publikacji,dostepnosc,id_kanalu) VALUES
('Nadali�my Neli nietypowe drugie imi�',163202,781,12000,'SUBSKRYBUJ http://goo.gl/9InLO?
to �art na prima aprillis ?
JDabrowsky: https://www.instagram.com/jdabrowsky/?
Dzi�kuj� za obejrzenie i pozdrawiam,
JDabrowsky !','2021/04/01','publiczny',1),
('Powodzenia Wataha!',174360,507,7500,'#shorts','2021/03/06','publiczny',22),
('Nowe intro na kanale',17,1,3,'Nowe intro na kanale :)','2016/02/12','niepubliczny',27),
('WIELKI TEST SUSHI Z MARKET�W!',694741,2150,48000,'Je�li si� spodoba�o, nie zapomnij o �apce w g�r� oraz subskrybcji mojego kana�u! ?','2021/04/18','publiczny',10),
('kto mnie pokona = WYGRANA',365866,718,23000,'SUBSKRYBUJ! - https://tiny.pl/t7sht?
? Sprawd� poprzedni odcinek! - https://youtu.be/9dC1YrvNfac','2021/03/22','publiczny',11),
('NAJLEPSZE BMW W POLSCE',568519,2246,50000,'Zostaw Lajka Byqu
http://classicmt2.pl? -- START SERVERA 24.04.2021 o 16.00 !
7more7: http://7more7.com','2021/03/06','publiczny',14),
('COMEBACK NA DE_NUKE!',120700,251,9800,'?Podoba� si� film? Zostaw �apk� w g�r�!
? Ogl�daj streamy codziennie od 19 na: http://twitch.tv/izakooo?
? Kupuj gry na G2A: https://www.g2a.com/r/izak-g2a','2021/05/08','publiczny',17),
('Wymiana Opon w C-360',45855,427,5000,'Witajcie
W dzisiejszym odcinku wulkanizacja ;)
Mam nadziej�, �e da�em rad�','2021/05/10','publiczny',20),
('EKIPA - 3KIPA',52777545,170138,1100000,'? PREORDER DOST�PNY NA:
? https://sezon3ekipa.pl/','2021/03/06','publiczny',28),
('ROBOKOT (SA Wardega)',2182847,4496,109000,'Mam nadziej�, �e materia� si� podoba. W�o�y�em w niego ca�e swoje serce. Kotki te� du�o pomog�y :) pieski te�','2016/11/03','publiczny',6),
('POZNAJCIE DYZIA!',1114441,4534,85000,'Cze��! W dzisiejszym odcinku zobaczycie jak Chmurka zareagowa�a na Dyzia, czyli nowego pieska.','2021/04/03','publiczny',19),
('Disco Marek - WESELE',974636,1915,41000,'Dzi�kuj� za obejrzenie! ?
? KUP MOJ� P�YT�: https://kruszwil.pl/','2021/03/06','publiczny',29),
('FUNNY MOMENTS z MINECRAFT!',897703,21868,70000,'30,000 �APEK i kolejne FUNNY MOMENTS! :D
CODZIENNIE MINECRAFT o 16! Minecraft ale dzisiaj kompilacja najlepszych moment�w! :D','2020/05/27','publiczny',5),
('JUREK ZOSTA� BOHATEREM',222462,1814,31000,'Czy Yurii pokona� sw�j najwi�kszy l�k? Sami zobaczcie! ?
INSTA ? http://instagram.com/blowek5','2021/03/06','publiczny',4),
('POMNIEJSZYLI�MY MU POK�J!',2789979,11281,197000,'?WPADAJ NA SKLEP EKIPY ?? http://EKIPATONOSI.PL? 
?PREORDER NASZEJ P�YTY ?? https://sezon3ekipa.pl/','2021/04/14','publiczny',2),
('EKIPA CHILL',11484270,62936,612000,'EKIPA do��cza do entuzjast�w wakacyjnych piosenek i za spraw� Poczciwego Krzycha, Tromby oraz Friza ratuje wszystkich muzycznych meteopat�w, 
prezentuj�c bezpretensjonalny i orze�wiaj�cy letniak o wszystko m�wi�cym tytule "Chill"','2021/05/01','publiczny',28),
('ROMEO I JULIA',9032964,9433,211000,'Tytu�: Romeo i Julia
Album: DISCO MAREK Wykonawcy: Disco Marek, S�awomirProdukcja: Bartlomiej Kielar','2020/03/06','publiczny',29),
('DISCO MAREK REMIZA',4458768,8609,135000,'Dzi�kuj� za obejrzenie!','2020/02/14','publiczny',29);
--rekordy do tabeli komentarze
INSERT INTO komentarze(tresc,id_uzytkownika,id_filmu) VALUES
('Ooo jestem pierwszy',1,5),
('Biedny Minimajk',17,15),
('Super efekt!',4,15),
('Jarek z ciebie to prawdziwy gospodarz! :)',8,8),
('Ja tylko map� mirage lubi� :/',12,7),
('Jak MiniMajk to mistrz totalny!',3,5),
('Po co ci nowe intro jak nic nie nagrywasz?',18,3),
('Ale bym zjad� takie sushi! :)',13,4),
('Ale �e kolejni pseudo-muzycy na youtube?',16,9),
('Kurcze kiedy� to by�o!',19,10),
('Ale presti�owa muzyka, co prawda gorsza od naszej, ale jest ok :)',2,12),
('Oj Jasiu jak ty co� wymy�lisz... xD',7,1),
('Wr�� na youtube... :(',20,13),
('Ju� my�la�em �e kolejny piesek w domu EKIPY',24,11),
('Chwalisz si� czy �alisz? :D',10,6);
--rekordy do tabeli playlisty
INSERT INTO playlisty (nazwa,kategoria,id_kanalu) VALUES
('EKIPA MUSIC','muzyka',28),
('�YCIE JA�KA','rozrywka',1),
('CS:GO','gry',17),
('PRANKI','rozrywka',6),
('�ycie na gospodarstwie','rozrywka',20),
('DISCO MAREK - MUSIC','rozrywka',29),
('Streamy z EKIPA','rozrywka',2),
('Intra','gry',27),
('Boxdel - kr�tkie filmy','rozrywka',22),
('Blowek - ulubione','rozrywka',4),
('Wersow - vlogi','rozrywka',19),
('Friz Pranki','gry',2),
('Jedzenie - filmy','jedzenie',10),
('Blowek - wybrane filmy','rozrywka',4),
('Minecraft','gry',28);
--rekordy do tabeli playlisty_filmy
INSERT INTO playlisty_filmy (id_filmu,id_playlisty) VALUES
(1,2),
(3,8),
(11,11),
(12,6),
(9,1),
(10,4),
(8,5),
(16,1),
(17,6),
(18,6),
(13,15),
(14,10),
(14,14),
(15,12),
(4,13);
--rekordy do tabeli zgloszenia
INSERT INTO zgloszenia(tytul,pow�d,data_zgloszenia,id_filmu,id_pracownika) VALUES
('Wulgaryzm','Na filmie youtuber u�ywa brzydkich s��w','2021-03-06',6,1),
('Dawanie z�ego przyk�adu m�odszym','Z�y przyk�ad dla m�odszych os�b','2021-04-10',6,3),
('Przekle�stwa, wyzwiska','Obra�anie i przeklinanie na filmie','2021-03-06',6,10),
('Reklamowanie alkoholu','Reklama alkoholu','2021-05-01',16,2),
('Przeklinanie','YouTuber przeklina','2016-12-04',10,5),
('K�amsta i farmazony','Blowek znowu oszukuje na subskrajbery!','2021-03-06',14,7),
('Dawanie z�ego przyk�adu','�amanie zasad BHP na filmie','2021-05-10',8,12),
('Przekle�stwa i wyzwiska','YouTuber wyzywa i przeklina na filmie','2021-03-06',2,15),
('Dawanie z�ego przyk�adu m�odszym','Youtuberzy skacz� przez ognisko','2021-05-01',16,15),
('Migaj�ce �wiat�o','Strasznie miga �wiat�o na filmie','2021-04-03',3,15),
('Laguj�cy film','Strasznie laguje ten film','2021-04-03',2,15),
('Film bezsensu','Ten film jest bezsensu','2021-02-01',1,13),
('Reklamowanie energetyk�w','Wprowadzanie w b��d, �e z blackiem dbamy o kondycj�.','2021-04-03',11,5),
('Test zg�aszania filmu','Ooo jest taka funkcja na yt?','2021-01-24',4,11);
COMMIT;