TRUNCATE TABLE filmy,uzytkownicy,kanaly,komentarze,playlisty,playlisty_filmy,pracownicy,sponsorzy,uzytkownicy,zgloszenia RESTART IDENTITY CASCADE;
ALTER SEQUENCE zmiana_typu_primarykey RESTART;
BEGIN TRANSACTION;
--rekordy do tabeli uzytkownicy
INSERT INTO uzytkownicy(imie,nazwisko,email,data_urodzenia,data_dolaczenia,plec) VALUES 
('Jan','D¹browski','jdabrowsky@gmail.com','1996/09/29','2011/09/29','mê¿czyzna'),
('Karol','Wiœniewski','friz@gethero.pl','1996/02/13','2010/10/15','mê¿czyzna'),
('Karol','G¹zwa','blowek@gamellon.com','1996/12/17','2011/04/13','mê¿czyzna'),
('Weronika','Sowa','wersow@gethero.pl','1996/08/31','2013/06/25','kobieta'),
('Remigiusz','Wierzgoñ','rezigiusz@gethero.pl','1996/09/11','2012/08/27','mê¿czyzna'),
('Stuart','Burton','stuu@gamellon.com','1992/01/7','2011/10/05','mê¿czyzna'),
('Piotr','Skowyrski','izak@fantasyexpo.pl','1987/12/02','2006/12/01','mê¿czyzna'),
('Mateusz','Serafin','serafineq@o2.pl','2004/04/24','2016/05/26','mê¿czyzna'),
('Zuzanna','Borucka','zuziowesprawki@gmail.com','1996/02/28','2013/12/13','kobieta'),
('Sylwester','Wardêga','sylwester@sawardega.com','1989/12/31','2012/01/30','mê¿czyzna'),
('Marek','Kruszel','wspolpraca@kruszwil.net','2001/03/23','2017/07/27','mê¿czyzna'),
('Tomasz','Dzia³owy','martyna.karas@goldencoil.pl','1994/04/17','2011/03/02','mê¿czyzna'),
('Sergiusz','Górski','biznes@thenitrozyniak.pl','1996/09/29','2013/02/16','mê¿czyzna'),
('Mateusz','Krzy¿anowski','minimajk@gethero.pl','1995/12/15','2017/04/01','mê¿czyzna'),
('Kamil','Matyka','kamil.kontakt1234@gmail.com','2004/03/15','2019/02/26','mê¿czyzna'),
('Jan','Kowalski','kowalski.jan@gmail.com','1992/11/14','2008/04/28','mê¿czyzna'),
('Joanna','Jagodziñska','joanna95@o2.pl','1995/12/12','2010/05/11','kobieta'),
('S³awomir','Zapa³a','s³awomir@biznes.pl','1983/03/19','2014/02/24','mê¿czyzna'),
('Marta','B³och','murcix@gethero.pl','1998/11/02','2017/04/01','kobieta'),
('Sylwia','Przybysz','sylwiaprzybysz@gmail.com','1998/08/28','2019/02/23','kobieta'),
('Norbert','Gierczak','dis@fantasyexpo.pl','1997/06/04','2012/08/10','mê¿czyzna'),
('Micha³','Baron','murcix@gethero.pl','1995/03/2','2014/11/27','mê¿czyzna'),
('Mateusz','Tr¹bka','trombavlog@gmail.com','1996/04/14','2017/06/28','mê¿czyzna'),
('Jaros³aw','Ogarek','jarekogarek1986youtube@wp.pl','1986/05/21','2007/08/09','mê¿czyzna'),
('Kamil','Chwastek','Poczciwykrzychu@gethero.pl','1994/06/11','2019/12/11','mê¿czyzna');
--rekordy do tabeli kanaly

INSERT INTO kanaly(nazwa,zarobki,opis_kanalu,subskrybcje,id_uzytkownika) VALUES
('JDabrowsky',6500,'JDabrowsky to grabarz smutku ludzkiego.',1760000,1),
('Karol Friz Wiœniewski',35000,'http://instagram.com/frizoluszek',4370000,2),
('Jdabrowsky Games',800,'Kana³ JDabrowsky, czyli Jana D¹browskiego, poœwiêcony gamingowi.',35300,1),
('Blowek',15000,'Siemano ziomeczku! Ja jestem blow i lubiê graæ w gry i powodowaæ uœmiech na twarzach moich widzów! Kliknij przycisk subskrybuj i zostañ ziomalem. ',4730000,3),
('Stuu',10000,'Witam na moim kanale Stuu!',4300000,6),
('Sa Wardega',5000,'Prank Channel. My name is Sylwester Adam Wardega and im not very talented so i decided to make people laugh',3650000,10),
('Tomasz Gimper Dzia³owy',9000,'Prank Channel. My name is Sylwester Adam Wardega and im not very talented so i decided to make people laugh',1920000,12),
('Zuzanna Borucka',1500,'HO, HO, HO Wiêcej ju¿ lat na YouTube ni¿ w ¿yciu! haha',1080000,9),
('JDabrowsky Plus',50,'Kana³ dodatkowy Jasia D¹browskiego, znanego tak¿e jako "JDabrowsky',230000,1),
('Murcix',18000,'WSPÓ£PRACA: murcix@gethero.pl',1140000,19),
('MiniMajk',12000,'Jestem Mini Majk!',1480000,14),
('Stuu Gry',10,'Na tym kanale bêd¹ ró¿ne gry i filmy bez monta¿u. Wszystkie zarobki z tego kana³u bêd¹ sz³y na cele charytatywne, tak¿e filmy bêd¹ u¿ywane w celach promowania ró¿nych akcji charytatywnych! Subskrybuj¹c, 
ogl¹daj¹c i likeuj¹c wesprzesz akcjê, a wspólnie krok po kroku przyczynimy siê do zrobienia czegoœ dobrego ;)',2260000,6),
('S³awomir Gwiazda Rock Polo',6000,'Czeœæ tu S³awomir! S£AWOMIR Twórca, wokalista, wizjoner',914000,18),
('TheNitroZyniak',12000,'Dzien Dobry albo Dobry wieczor, zalezy o ktorej godzinie ogladasz ten opis. W tym opisie opisze opisem. Opis bedzie opisywujacy i opisany. W opisie znajdzie sie rowniez wiele opisywujacych opis opisow, bo opis opisany musi byc.',2600000,13),
('Rezigiusz',10000,'Witaj na moim kanale reZigiusz! ;) Na YouTube jako "reZi" istnieje od Sierpnia 2010r',4160000,5),
('Rezi Born To Be a Gamer',5500,'Witaj na moim kanale reZigiusz! ;) Na YouTube jako "reZi" istnieje od Sierpnia 2010r',597000,5),
('IzakLIVE',8500,'Oficjalny kana³ Piotra izaka Skowyrskiego',2160000,7),
('Tromba',19500,'instagram - https://www.instagram.com/trombabomba/',18300000,23),
('Wersow',25000,'??',2080000,4),
('jarekogarek1986',10000,'Takie tam parodie, piosenki i inne. Trochê traktorów.',337000,24),
('Poczciwy Krzychu',16000,'Siema z tej strony Kamil „Krzychu” ?
Nie jestem znawc¹ a pasjonatem motoryzacji i bawiê siê tym! :D ',11400000,25),
('Boxdel',1800,'W ¿yciu próbujê wszystkiego po trochu, ale g³ównie jestem przedsiêbiorc¹...',1520000,22),
('DisStream',7500,'?http://www.facebook.com/DisStream - OdwiedŸ mojego fanpage i zostaw lajka 
https://www.g2a.com/r/disstream - Kup tanie gry na G2A! Z kodem "DIS" otrzymasz 3% cashbacku!',1010000,21),
('Sylwia Przybysz Official',2800,'Wokalistka ju¿ w wieku 15 lat zaczê³a swoj¹ przygodê ze œpiewaniem - na samym pocz¹tku umieszcza³a covery swoich ulubionych piosenek, na kanale YouTube. D³ugo nie trzeba by³o czekaæ, bo ju¿ 09.04.2014 razem z Jasiem D¹browskim nagra³a cover piosenki Disneya pt. “Mi³oœæ roœnie wokó³ nas”.
Dziêki tej akcji, Sylwiê pokocha³y dziesi¹tki tysiêcy osób i bardzo szybko zosta³a zauwa¿ona przez wytwórnie muzyczne.',597000,20);
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
('Jaros³aw','Krutysza','2009/10/12',6000,'technik','krutysza.jarek@gmail.com'),
('Marek','Mazowiecki','2011/11/17',3500,'support','mazowieckim@biznes.pl'),
('Malwina','Krêpa','2013/07/05',9000,'grafik','malwina78@gmail.com'),
('Mateusz','Telega','2012/06/14',8000,'programista','telega88@gmail.com'),
('£ukasz','Marchewka','2007/09/02',4500,'technik','marchewka.lukasz@o2.pl'),
('Jacek','Sosna','2016/06/16',7800,'programista','sosenka.jacek@gmail.com'),
('Józef','Redestowicz','2018/02/12',6200,'grafik','józef.red@gmail.com'),
('Mariusz','W³odarczyk','2019/05/23',4800,'technik','w³odarczyk.m@gmail.com'),
('Micha³','Anio³ek','2014/03/17',3200,'support','anio³ek.michal@gmail.com'),
('Adam','Wojewódzki','2021/12/01',8900,'programista','adas.wojewodzki@wp.pl'),
('Justyna','Jagodziñska','2020/11/05',6500,'programista','justyna.jagoda@wp.pl');
--rekordy do tabeli filmy
INSERT INTO filmy(tytul,wyswietlenia,komentarze,liczba_polubien,opis_filmu,data_publikacji,dostepnosc,id_kanalu) VALUES
('Nadaliœmy Neli nietypowe drugie imiê',163202,781,12000,'SUBSKRYBUJ http://goo.gl/9InLO?
to ¿art na prima aprillis ?
JDabrowsky: https://www.instagram.com/jdabrowsky/?
Dziêkujê za obejrzenie i pozdrawiam,
JDabrowsky !','2021/04/01','publiczny',1),
('Powodzenia Wataha!',174360,507,7500,'#shorts','2021/03/06','publiczny',22),
('Nowe intro na kanale',17,1,3,'Nowe intro na kanale :)','2016/02/12','niepubliczny',27),
('WIELKI TEST SUSHI Z MARKETÓW!',694741,2150,48000,'Jeœli siê spodoba³o, nie zapomnij o ³apce w górê oraz subskrybcji mojego kana³u! ?','2021/04/18','publiczny',10),
('kto mnie pokona = WYGRANA',365866,718,23000,'SUBSKRYBUJ! - https://tiny.pl/t7sht?
? SprawdŸ poprzedni odcinek! - https://youtu.be/9dC1YrvNfac','2021/03/22','publiczny',11),
('NAJLEPSZE BMW W POLSCE',568519,2246,50000,'Zostaw Lajka Byqu
http://classicmt2.pl? -- START SERVERA 24.04.2021 o 16.00 !
7more7: http://7more7.com','2021/03/06','publiczny',14),
('COMEBACK NA DE_NUKE!',120700,251,9800,'?Podoba³ siê film? Zostaw ³apkê w górê!
? Ogl¹daj streamy codziennie od 19 na: http://twitch.tv/izakooo?
? Kupuj gry na G2A: https://www.g2a.com/r/izak-g2a','2021/05/08','publiczny',17),
('Wymiana Opon w C-360',45855,427,5000,'Witajcie
W dzisiejszym odcinku wulkanizacja ;)
Mam nadziejê, ¿e da³em radê','2021/05/10','publiczny',20),
('EKIPA - 3KIPA',52777545,170138,1100000,'? PREORDER DOSTÊPNY NA:
? https://sezon3ekipa.pl/','2021/03/06','publiczny',28),
('ROBOKOT (SA Wardega)',2182847,4496,109000,'Mam nadziejê, ¿e materia³ siê podoba. W³o¿y³em w niego ca³e swoje serce. Kotki te¿ du¿o pomog³y :) pieski te¿','2016/11/03','publiczny',6),
('POZNAJCIE DYZIA!',1114441,4534,85000,'Czeœæ! W dzisiejszym odcinku zobaczycie jak Chmurka zareagowa³a na Dyzia, czyli nowego pieska.','2021/04/03','publiczny',19),
('Disco Marek - WESELE',974636,1915,41000,'Dziêkujê za obejrzenie! ?
? KUP MOJ¥ P£YTÊ: https://kruszwil.pl/','2021/03/06','publiczny',29),
('FUNNY MOMENTS z MINECRAFT!',897703,21868,70000,'30,000 £APEK i kolejne FUNNY MOMENTS! :D
CODZIENNIE MINECRAFT o 16! Minecraft ale dzisiaj kompilacja najlepszych momentów! :D','2020/05/27','publiczny',5),
('JUREK ZOSTA£ BOHATEREM',222462,1814,31000,'Czy Yurii pokona³ swój najwiêkszy lêk? Sami zobaczcie! ?
INSTA ? http://instagram.com/blowek5','2021/03/06','publiczny',4),
('POMNIEJSZYLIŒMY MU POKÓJ!',2789979,11281,197000,'?WPADAJ NA SKLEP EKIPY ?? http://EKIPATONOSI.PL? 
?PREORDER NASZEJ P£YTY ?? https://sezon3ekipa.pl/','2021/04/14','publiczny',2),
('EKIPA CHILL',11484270,62936,612000,'EKIPA do³¹cza do entuzjastów wakacyjnych piosenek i za spraw¹ Poczciwego Krzycha, Tromby oraz Friza ratuje wszystkich muzycznych meteopatów, 
prezentuj¹c bezpretensjonalny i orzeŸwiaj¹cy letniak o wszystko mówi¹cym tytule "Chill"','2021/05/01','publiczny',28),
('ROMEO I JULIA',9032964,9433,211000,'Tytu³: Romeo i Julia
Album: DISCO MAREK Wykonawcy: Disco Marek, S³awomirProdukcja: Bartlomiej Kielar','2020/03/06','publiczny',29),
('DISCO MAREK REMIZA',4458768,8609,135000,'Dziêkujê za obejrzenie!','2020/02/14','publiczny',29);
--rekordy do tabeli komentarze
INSERT INTO komentarze(tresc,id_uzytkownika,id_filmu) VALUES
('Ooo jestem pierwszy',1,5),
('Biedny Minimajk',17,15),
('Super efekt!',4,15),
('Jarek z ciebie to prawdziwy gospodarz! :)',8,8),
('Ja tylko mapê mirage lubiê :/',12,7),
('Jak MiniMajk to mistrz totalny!',3,5),
('Po co ci nowe intro jak nic nie nagrywasz?',18,3),
('Ale bym zjad³ takie sushi! :)',13,4),
('Ale ¿e kolejni pseudo-muzycy na youtube?',16,9),
('Kurcze kiedyœ to by³o!',19,10),
('Ale presti¿owa muzyka, co prawda gorsza od naszej, ale jest ok :)',2,12),
('Oj Jasiu jak ty coœ wymyœlisz... xD',7,1),
('Wróæ na youtube... :(',20,13),
('Ju¿ myœla³em ¿e kolejny piesek w domu EKIPY',24,11),
('Chwalisz siê czy ¿alisz? :D',10,6);
--rekordy do tabeli playlisty
INSERT INTO playlisty (nazwa,kategoria,id_kanalu) VALUES
('EKIPA MUSIC','muzyka',28),
('¯YCIE JAŒKA','rozrywka',1),
('CS:GO','gry',17),
('PRANKI','rozrywka',6),
('¯ycie na gospodarstwie','rozrywka',20),
('DISCO MAREK - MUSIC','rozrywka',29),
('Streamy z EKIPA','rozrywka',2),
('Intra','gry',27),
('Boxdel - krótkie filmy','rozrywka',22),
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
INSERT INTO zgloszenia(tytul,powód,data_zgloszenia,id_filmu,id_pracownika) VALUES
('Wulgaryzm','Na filmie youtuber u¿ywa brzydkich s³ów','2021-03-06',6,1),
('Dawanie z³ego przyk³adu m³odszym','Z³y przyk³ad dla m³odszych osób','2021-04-10',6,3),
('Przekleñstwa, wyzwiska','Obra¿anie i przeklinanie na filmie','2021-03-06',6,10),
('Reklamowanie alkoholu','Reklama alkoholu','2021-05-01',16,2),
('Przeklinanie','YouTuber przeklina','2016-12-04',10,5),
('K³amsta i farmazony','Blowek znowu oszukuje na subskrajbery!','2021-03-06',14,7),
('Dawanie z³ego przyk³adu','£amanie zasad BHP na filmie','2021-05-10',8,12),
('Przekleñstwa i wyzwiska','YouTuber wyzywa i przeklina na filmie','2021-03-06',2,15),
('Dawanie z³ego przyk³adu m³odszym','Youtuberzy skacz¹ przez ognisko','2021-05-01',16,15),
('Migaj¹ce œwiat³o','Strasznie miga œwiat³o na filmie','2021-04-03',3,15),
('Laguj¹cy film','Strasznie laguje ten film','2021-04-03',2,15),
('Film bezsensu','Ten film jest bezsensu','2021-02-01',1,13),
('Reklamowanie energetyków','Wprowadzanie w b³¹d, ¿e z blackiem dbamy o kondycjê.','2021-04-03',11,5),
('Test zg³aszania filmu','Ooo jest taka funkcja na yt?','2021-01-24',4,11);
COMMIT;