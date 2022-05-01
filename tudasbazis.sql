--------------------------------------------------------
--  File created - vasárnap-május-01-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "ADMIN" 
   (	"ID" VARCHAR2(10 BYTE), 
	"NEV" VARCHAR2(60 BYTE), 
	"JELSZO" VARCHAR2(60 BYTE), 
	"EMAIL" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BAN
--------------------------------------------------------

  CREATE TABLE "BAN" 
   (	"FELHASZNALOID" VARCHAR2(10 BYTE), 
	"ADMINID" VARCHAR2(10 BYTE), 
	"Date" DATE, 
	"INDOK" VARCHAR2(300 BYTE), 
	"HOSSZ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CIKK
--------------------------------------------------------

  CREATE TABLE "CIKK" 
   (	"ID" VARCHAR2(10 BYTE), 
	"CIM" VARCHAR2(100 BYTE), 
	"TARTALOM" VARCHAR2(4000 BYTE), 
	"ALLAPOT" VARCHAR2(60 BYTE), 
	"NYELV" VARCHAR2(60 BYTE), 
	"FELHASZNALOID_SZERZO" VARCHAR2(10 BYTE), 
	"KATEGORIA" VARCHAR2(60 BYTE), 
	"LEKTORALTA" VARCHAR2(10 BYTE), 
	"LEKTORALASDATUMA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "FELHASZNALO" 
   (	"ID" VARCHAR2(10 BYTE), 
	"NEV" VARCHAR2(60 BYTE), 
	"JELSZO" VARCHAR2(60 BYTE), 
	"EMAIL" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HIBA
--------------------------------------------------------

  CREATE TABLE "HIBA" 
   (	"ID" VARCHAR2(10 BYTE), 
	"LEIRAS" VARCHAR2(500 BYTE), 
	"JAVITVA" NUMBER, 
	"JELENTOID" VARCHAR2(10 BYTE), 
	"HIBASCIKKID" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JAVITAS
--------------------------------------------------------

  CREATE TABLE "JAVITAS" 
   (	"ADMINID" VARCHAR2(10 BYTE), 
	"HIBAID" VARCHAR2(10 BYTE), 
	"Date" DATE, 
	"JEGYZET" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KATEGORIA
--------------------------------------------------------

  CREATE TABLE "KATEGORIA" 
   (	"NEV" VARCHAR2(60 BYTE), 
	"BOVEBBEN" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KULCSSZO
--------------------------------------------------------

  CREATE TABLE "KULCSSZO" 
   (	"CIKKID" VARCHAR2(60 BYTE), 
	"SZO" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LEKTOR
--------------------------------------------------------

  CREATE TABLE "LEKTOR" 
   (	"ID" VARCHAR2(10 BYTE), 
	"NEV" VARCHAR2(60 BYTE), 
	"JELSZO" VARCHAR2(60 BYTE), 
	"EMAIL" VARCHAR2(60 BYTE), 
	"SZAKTERULET" VARCHAR2(60 BYTE), 
	"INTEZET" VARCHAR2(60 BYTE), 
	"TUDOMANYOS_FOKOZAT" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MODOSITAS
--------------------------------------------------------

  CREATE TABLE "MODOSITAS" 
   (	"CIKKID" VARCHAR2(60 BYTE), 
	"LEIRAS" VARCHAR2(100 BYTE), 
	"DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NYELVTUDAS
--------------------------------------------------------

  CREATE TABLE "NYELVTUDAS" 
   (	"LEKTORID" VARCHAR2(10 BYTE), 
	"NYELV" VARCHAR2(60 BYTE), 
	"SZINT" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View ALLUSERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "ALLUSERS" ("ID") AS 
  SELECT ID FROM FELHASZNALO 
UNION
SELECT ID  FROM ADMIN
UNION
SELECT ID FROM LEKTOR
;
REM INSERTING into ADMIN
SET DEFINE OFF;
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A6969','Gergõ','anyad','geri.t.0115@gmail.com');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A111111','admin','admin','nincs');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A55555','Klau','jelszó','ja');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A7777','Lela','majd-valami','ezis');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A00001','Bodnar','chad','chad@férfi.com');
REM INSERTING into BAN
SET DEFINE OFF;
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U2','A6969',to_date('21-MÁRC. -05','RR-MON-DD'),'Sértegetés','1');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U1','A6969',to_date('22-JAN.  -12','RR-MON-DD'),'Trágár szóhasználat.','5');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U3','A7777',to_date('21-AUG.  -10','RR-MON-DD'),'Trollkodás.','8');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U1','A6969',to_date('22-JAN.  -12','RR-MON-DD'),null,'1');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U2','A6969',to_date('21-MÁRC. -03','RR-MON-DD'),'Hamis információk terjesztése.','12');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U3','A6969',to_date('21-ÁPR.  -20','RR-MON-DD'),'Hamis információk terjesztése.','2');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U4','A6969',to_date('21-MÁJ.  -03','RR-MON-DD'),'Valóság torzítása.','1');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U1','A55555',to_date('21-JÚN.  -08','RR-MON-DD'),'Trollkodás.','3');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U2','A7777',to_date('21-JÚL.  -18','RR-MON-DD'),'Trágár szóhasználat.','7');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U4','A55555',to_date('21-SZEPT.-09','RR-MON-DD'),'Oda nem illõ kifejezések használata.','6');
REM INSERTING into CIKK
SET DEFINE OFF;
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C7','Biochemistry',' Biochemistry or biological chemistry, is the study of chemical processes within and relating to living organisms.[1] A sub-discipline of both chemistry and biology, biochemistry may be divided into three fields: structural biology, enzymology and metabolism. Over the last decades of the 20th century, biochemistry has become successsful at explaining living processes through these three disciplines. Almost all areas of the life sciences are being uncovered and developed through biochemical methodology and research.. ','Lektorálásra vár','Angol','U7','Kémia',null,to_date('21-JAN.  -21','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C10','Kendó',' A kendó (??), vagyis a kard útja a vívás japán harcmûvészete. A kendó a kendzsucuként ismert japán kardforgatás hagyományos technikáiból fejlõdött ki. A kendó egy fizikailag és szellemileg is erõt próbáló tevékenység, mely a kemény harcmûvészeteket ötvözi a sportos fizikai elemekkel. A kendót gyakorlók más néven a kendókák, vagyis „akik kendót gyakorolnak”, vagy kensik, vagyis „kardos emberek”.','Lektorálásra vár','Magyar','U10','Sport','L6',to_date('22-MÁJ.  -01','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C2','Mégsem halt ki az ezüstfejû antechinus, túlélte a perzselõ ausztráliai tüzeket','A mindent felperzselõ tüzeket is túlélték. A fajgazdagság megõrzése szempontjából minden ilyen felfedezés jó hír, de ebben az esetben a kutatók azt is kiemelik, hogy a ritka erszényesnek sikerült túlélnie a térségben pusztító bozóttüzeket. 2020-ban és 2021-ben a tûz a Queensland keleti részén fekvõ Bulburin Nemzeti Park jelentõs részén hamuvá égette a faj élõhelyét, és a tudósok nagyon aggódtak, hogy a 2013-ban azonosított ezüstfejû antechinus populációja teljesen odaveszhetett a természeti katasztrófában.','Lektorálásra vár','Magyar','U2','Biológia',null,to_date('20-AUG.  -06','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C3','A kör érintõje','Egy kör érintõje olyan egyenes a síkon, amelynek egy adott körrel egy, és csak egy közös pontja van, az érintési pontba húzott sugár mindig merõleges az érintõ egyenesre. Érintõ hétköznapi nyelven olyan egyenes, amely valamely görbét vagy felületet egy pontban érint.','Lektorálásra vár','Magyar','U3','Matematika',null,to_date('18-JAN.  -20','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C5','Ion',' Az ion (vagy régies nevén meneny) olyan atom vagy molekula (atomcsoport), mely elektromos töltéssel rendelkezik. A negatív töltésû ion, más néven anion olyan atom vagy molekula, melynek egy vagy több elektrontöbblete van, a kation pedig pozitív töltésû ion, amiben egy vagy több elektronhiány van, mint az eredeti részecskében. A folyamat, mely során létrejönnek az ionok, az ionizáció. Az ionizált atomokat vagy atomcsoportokat úgy jelölik, hogy az atom vagy molekula fölött jelölik az elvesztett vagy szerzett elektronok számát (kivéve ha egy van, akkor nem jelölik), és a töltést (+ vagy ?). Példa: H+, O2?. Egyszerû atomok esetén a fémek legtöbbször kationokat hoznak létre, a nemfémek anionokat, például a nátrium Na+ kationt, míg a klór Cl? (klorid) aniont hoz létre. Bonyolultabb szerves molekulák ikerionos állapotba is kerülhetnek, ekkor egyszerre anionos és kationos tulajdonságúak.','Lektorálva','Magyar','U5','Kémia','L4',to_date('19-NOV.  -10','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C1','Rendkívül érdekes megfigyeléseket tesznek a hangyakolóniákról a Szegedi Tudományegyetemen','A hangyák bonyolultan szervezett világában sok analógia fedezhetõ fel az emberi társadalommal. Dr. Maák István Elek és Dr. Lõrinczi Gábor, a Szegedi Tudományegyetem Ökológiai Tanszékének egyetemi adjunktusai hangyákkal végeznek kutatásokat, megfigyeléseket. A Szegedi Tudományegyetemen 1975-tõl Gallé László professzor alapozta meg a hangyakutatást. Minthogy a többi magyar hangyakutató is kapcsolatban állt Gallé professzorral, így Szeged mondható az origónak Magyarországon a hangyakutatások terén.','Lektorálva','Magyar','U1','Biológia','L2',to_date('21-ÁPR.  -03','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C4','Grafikai processzor',' A graphics processing unit (röviden a GPU) magyarul grafikai processzor; a grafikus vezérlõkártya központi egysége, amely az összetett grafikus mûveletek elvégzéséért felelõs. A GPU feladata a grafikák létrehozásával és megjelenítésével közvetlenül kapcsolatba hozható magas szintû feladatok átvétele a CPU-tól, hogy annak számítási kapacitása más mûveletek elvégzésére legyen felhasználható.','Lektorálva','Magyar','U4',null,'L5',to_date('19-JÚN.  -05','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C6','Számítógépes kémia',' A számítógépes kémia olyan ága a kémiának, amely számítógépes szimulációval segíti elõ a kémiai problémák megoldását. Hatékony számítógépes programokba ágyazva használja az elméleti kémia módszereit, hogy kiszámítsa és modellezze a molekulák, illetve az anyagok tulajdonságait. Ilyen tulajdonságok lehetnek pl. az anyagstruktúrával, abszolút és relatív energiával, elektromos töltéssûrûség eloszlásával, dipólusmomentummal, rezgési frekvenciával, reakcióképességgel és a részecskék ütközésével kapcsolatosak. ','Lektorálásra vár','Magyar','U6','Kémia',null,to_date('20-JAN.  -18','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C8','Central processing unit',' A central processing unit (CPU), also called a central processor, main processor or just processor, is the electronic circuitry that executes instructions comprising a computer program. The CPU performs basic arithmetic, logic, controlling, and input/output (I/O) operations specified by the instructions in the program. This contrasts with external components such as main memory and I/O circuitry,[1] and specialized processors such as graphics processing units (GPUs).','Lektorálásra vár','Angol','U8','Informatika',null,to_date('22-AUG.  -15','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C9','Vulkán',' A vulkánok vagy tûzhányók a Föld felszínének olyan hasadékai, amelyeken a felszínre jut a magma, az asztenoszféra izzó kõzetolvadéka. A Föld vulkánjait kialakulásuk oka szerint két csoportba soroljuk: többségük a távolodó és közeledõ kõzetlemezek határain (az aktív lemezhatárokon) alakul ki, kisebb részük az aktív peremszegélyektõl távol, a köpenyhöoszlopok (köpenycsóvák) fölötti forrópontokon jön létre.','Lektorálva','Magyar','U9','Informatika','L7',to_date('18-SZEPT.-19','RR-MON-DD'));
REM INSERTING into FELHASZNALO
SET DEFINE OFF;
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U20','ifj. Tetszt Elek','jelszo','IElek@gmail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U15','Kuruc Elek','jelsz1','kurucelek@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U16','Kuruc Elek','jelsz1','kurucelek@mail.hu');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U6','Kovács Nyék','jelszo','kovacsnyek@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U1','Markó Orbán','jelszo','markoorban@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U2','Fazakas Borsala','jelszo','fazakasborsala@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U3','Soltész Kaplony','jelszo','solteszkaplony@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U4','Sallai Mara','jelszo','sallaimara@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U5','Danka Kemenes','jelszo','dankakemenes@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U7','Jósa Szervác','jelszo','josaszervac@rhyta.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U8','Gergely Blanka','jelszo','gergelyblanka@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U9','Sallai Edina','jelszo','sallaiedina@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U10','Horváth Jolan','jelszo','horvathjolan@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U11','Szarka Ompoly','jelszaw','szarkaompoly@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U12','Halász Zizi','jelszooo','halaszzizi@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U13','Máthé Dzsenifer','jelsz2','mathedzsenifer@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U14','Joó Keled','jelsz1','jookeled@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U18','Teszt Elek','jelszava','Elek@gmail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U001','Kovács Ákos','jelszavam','kova@random.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U19','Tesztné Margit','jelszavcsi','Margo@gmail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U003','Pós Lacika','12345','valami@random.szar');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U17','Álmos Ferenc','12345','ugyanolyan@random.szar');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U002','Fekete Fehér','54321','ásmilyen@random.hülyeség');
REM INSERTING into HIBA
SET DEFINE OFF;
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H2','Jelölés lehetne a cikkben','0','U1','C3');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H1','Nem csak hangyák hanem csotányokkal is.','0','U5','C1');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H3','A régies név kiejtése hiányzik','0','U4','C5');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H4','A successsful szó elvan írva helyesen: successful','0','U6','C7');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H5','A köpenyhöoszlopok szó elvan írva helyesen: köpenyhõoszlopok','0','U3','C9');
REM INSERTING into JAVITAS
SET DEFINE OFF;
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A6969','H1',to_date('20-JAN.  -20','RR-MON-DD'),'Javítva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A7777','H3',to_date('20-MÁRC. -22','RR-MON-DD'),'Javítva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A00001','H4',to_date('20-ÁPR.  -23','RR-MON-DD'),'Javítva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A6969','H5',to_date('20-MÁJ.  -24','RR-MON-DD'),'Javítva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H2',to_date('20-FEBR. -20','RR-MON-DD'),'Javítva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A7777','H2',to_date('20-FEBR. -11','RR-MON-DD'),'Javítás megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A6969','H3',to_date('20-MÁRC. -12','RR-MON-DD'),'Javítás megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H4',to_date('20-ÁPR.  -13','RR-MON-DD'),'Javítás megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H5',to_date('20-MÁJ.  -14','RR-MON-DD'),'Javítás megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H1',to_date('20-JAN.  -19','RR-MON-DD'),'Javítás megkezdve');
REM INSERTING into KATEGORIA
SET DEFINE OFF;
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Sport','Olimpia, futás, íjászat, vívás');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Biológia','Állatok, növények');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Kémia','Vegyészet, vegytan, általános kémia, kvantum kémia');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Matematika','Aritmetika, algebra, geometria, trigonometria');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Földrajz','Geográfia, földtudományok');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Informatika',null);
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Tech','Autó, Pc');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Zene','Együttesek, hangszerek');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Fizika','Electron, gravitáció');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Világûr','Bolygók, csillagok');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Történelem','Háború');
REM INSERTING into KULCSSZO
SET DEFINE OFF;
Insert into KULCSSZO (CIKKID,SZO) values ('C10','Kendó');
Insert into KULCSSZO (CIKKID,SZO) values ('C2','Denevér');
Insert into KULCSSZO (CIKKID,SZO) values ('C3','Érintõ');
Insert into KULCSSZO (CIKKID,SZO) values ('C4','GPU');
Insert into KULCSSZO (CIKKID,SZO) values ('C5','Ion');
Insert into KULCSSZO (CIKKID,SZO) values ('C7','Biochemistry');
Insert into KULCSSZO (CIKKID,SZO) values ('C8','CPU');
Insert into KULCSSZO (CIKKID,SZO) values ('C9','Tûzhányó');
REM INSERTING into LEKTOR
SET DEFINE OFF;
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L2','Kiss Béla','jelszo','kissbela@gmail.com','Biológia','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L1','Kiss István','jelszo','kissistvan@gmail.com','Jogtudomány','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L3','Kiss Anna','jelszo','kissanna@gmail.com','Matematika','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L4','Kovács József','jelszo','kovacsjozsef@gmail.com','Kémia','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L5','Kovács Mária','jelszo','kovacsmaria@gmail.com','Informatika','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L6','Kovács Erzsébet','jelszo','kovacserzsebet@gmail.com','Matematika','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L7','Kovács Ilona','jelszo','kovacsilona@gmail.com','Földrajz','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L8','Lakatos Márton','jelszo','lakatosmarton@gmail.com','     Közigazgatásitudományok','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L9','Engi Júlia','jelszo','engijulia@gmail.com','Biológia','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L10','Szabó Tamás','jelszo','szabotamas@gmail.com','Matematika','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L11','Szabó Antal','jelszo','szaboantal@gmail.com','Média','BGE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L12','Szabó Mária','jelszo','szabomaria@gmail.com','Filozófia','BGE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L13','Szabó Aladár','jelszo','szaboaladar@gmail.com','Geológia','BGE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L14','Gábor Dénes','jelszo','gabordenes@gmail.com','Informatika','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L15','Gábor Áron','jelszo','gaboraron@gmail.com','Pénzügy','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L16','Gábor Anikó','jelszo','gaboraniko@gmail.com','Bölcsésztudomány','ELTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L17','Gábor László','jelszo','gaborlaszlo@gmail.com','Teológia','ELTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L18','Lakatos Ferenc','jelszo','lakatosferenc@gmail.com','Marketing','ELTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L19','Lakatos Zsigmond','jelszo','lakatoszsigmond@gmail.com','Geológia','ELTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L20','Lakatos Magdolna','jelszo','lakatosmagdolna@gmail.com','Történelem','ELTE','Dr');
REM INSERTING into MODOSITAS
SET DEFINE OFF;
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Helyesírási hibák javítása.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Hangyakutatás kezdete évszám módosítása.',to_date('20-MÁRC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Nevek ellenõrzése, javítása.',to_date('20-ÁPR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Kisebb kiegészítések.',to_date('20-MÁJ.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Felesleges információk törlése.',to_date('21-MÁRC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Helyesírási hibák javítása.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','antechinus szó kijavítása',to_date('20-MÁRC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Évszámok módosítása.',to_date('20-ÁPR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Nevek ellenõrzése, kisbetûk javítása.',to_date('20-MÁJ.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Kisebb kiegészítések.',to_date('21-MÁRC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Helyesírási hibák javítása.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Definíciók pontosítása.',to_date('20-MÁRC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Cikk címének javítása.',to_date('20-ÁPR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Nevek ellenõrzése, javítása.',to_date('20-MÁJ.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Kisebb kiegészítések.',to_date('21-MÁRC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Helyesírási hibák javítása.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Angol kifejezések helyesbítése.',to_date('20-MÁRC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Kis hibajavítások.',to_date('20-ÁPR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Nevek ellenõrzése, javítása.',to_date('20-MÁJ.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Kisebb kiegészítések.',to_date('21-MÁRC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Helyesírási hibák javítása.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Fizikai folyamatok ellenõrzése.',to_date('20-MÁRC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Jelölés hozzáadása.',to_date('20-ÁPR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Nevek ellenõrzése, javítása.',to_date('20-MÁJ.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Kisebb kiegészítések.',to_date('21-MÁRC. -03','RR-MON-DD'));
REM INSERTING into NYELVTUDAS
SET DEFINE OFF;
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L2','angol','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L3','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L4','angol','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L5','angol','C2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L6','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L6','német','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L7','angol','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L8','portugál','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L9','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L10','angol','A2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L11','angol','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L11','francia','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L12','angol','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L13','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L14','angol','C2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L15','angol','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L15','orosz','A2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L16','angol','C2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L17','angol','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L17','kínai','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L18','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L19','angol','C2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L20','angol','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L20','spanyol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L20','francia','B1');
--------------------------------------------------------
--  DDL for Index KATEGORIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KATEGORIA_PK" ON "KATEGORIA" ("NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LEKTOR_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "LEKTOR_UK1" ON "LEKTOR" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CIKK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CIKK_PK" ON "CIKK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAN_PK" ON "BAN" ("FELHASZNALOID", "ADMINID", "Date", "HOSSZ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JAVITAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVITAS_PK" ON "JAVITAS" ("ADMINID", "HIBAID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LEKTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LEKTOR_PK" ON "LEKTOR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN_PK" ON "ADMIN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KULCSSZO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULCSSZO_PK" ON "KULCSSZO" ("CIKKID", "SZO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MOSDOSITAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOSDOSITAS_PK" ON "MODOSITAS" ("CIKKID", "DATUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELHASZNALO_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FELHASZNALO_UK1" ON "FELHASZNALO" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMIN_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN_UK1" ON "ADMIN" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NYELVTUDAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NYELVTUDAS_PK" ON "NYELVTUDAS" ("LEKTORID", "NYELV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FELHASZNALO_PK" ON "FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIBA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HIBA_PK" ON "HIBA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger BANDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BANDATE" 
BEFORE INSERT ON BaN
FOR EACH ROW
BEGIN
 :NEW."Date" := SYSDATE;
END;
/
ALTER TRIGGER "BANDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CASCADEUSERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CASCADEUSERS" 
INSTEAD OF DELETE ON ALLUSERS
FOR EACH ROW
BEGIN
DELETE CIKK  WHERE FELHASZNALOID_SZERZO= :OLD.ID;
DELETE felhasznalo WHERE felhasznalo.ID= :OLD.ID;
DELETE ADMIN WHERE ADMIN.ID= :OLD.ID;
DELETE LEKTOR WHERE LEKTOR.ID= :OLD.ID;
END;
/
ALTER TRIGGER "CASCADEUSERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CIKKDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CIKKDATE" 
BEFORE UPDATE OF LEKTORALTA ON Cikk
FOR EACH ROW
BEGIN
 :NEW.LEKTORALASDATUMA := SYSDATE;
END;
/
ALTER TRIGGER "CIKKDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INVINCIBLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "INVINCIBLE" 
BEFORE DELETE ON ADMIN
FOR EACH ROW
DECLARE
v_chosen varchar(10);
BEGIN
v_chosen  := 'A6969';
IF :OLD.ID = v_chosen THEN
RAISE_APPLICATION_ERROR(-20000, 'Ezt az  accountot nem lehetséges törölni!');
END IF;
END;
/
ALTER TRIGGER "INVINCIBLE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JAVDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "JAVDATE" 
BEFORE INSERT ON Javitas
FOR EACH ROW
BEGIN
 :NEW."Date" := SYSDATE;
END;
/
ALTER TRIGGER "JAVDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MODDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MODDATE" 
BEFORE INSERT ON MODOSITAS
FOR EACH ROW
BEGIN
 :NEW.DATUM := SYSDATE;
END;
/
ALTER TRIGGER "MODDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SZERZOCHECK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SZERZOCHECK" 
AFTER INSERT OR UPDATE ON CIKK
FOR EACH ROW
DECLARE
v_count ALLUSERS.ID%TYPE;
BEGIN
SELECT COUNT(ALLUSERS.ID) INTO v_count from ALLUSERS WHERE ALLUSERS.ID = :NEW.FELHASZNALOID_SZERZO;
IF  v_count = 0 THEN
RAISE_APPLICATION_ERROR(-20000, 'Nem létezõ felhasználóra hivatkozik');
END IF;
END;
/
ALTER TRIGGER "SZERZOCHECK" ENABLE;
--------------------------------------------------------
--  DDL for Package TUDASBAZIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "TUDASBAZIS" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END TUDASBAZIS;


/
--------------------------------------------------------
--  Constraints for Table KATEGORIA
--------------------------------------------------------

  ALTER TABLE "KATEGORIA" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "KATEGORIA" ADD CONSTRAINT "KATEGORIA_PK" PRIMARY KEY ("NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MODOSITAS
--------------------------------------------------------

  ALTER TABLE "MODOSITAS" MODIFY ("CIKKID" NOT NULL ENABLE);
  ALTER TABLE "MODOSITAS" MODIFY ("DATUM" NOT NULL ENABLE);
  ALTER TABLE "MODOSITAS" ADD CONSTRAINT "MOSDOSITAS_PK" PRIMARY KEY ("CIKKID", "DATUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KULCSSZO
--------------------------------------------------------

  ALTER TABLE "KULCSSZO" MODIFY ("CIKKID" NOT NULL ENABLE);
  ALTER TABLE "KULCSSZO" MODIFY ("SZO" NOT NULL ENABLE);
  ALTER TABLE "KULCSSZO" ADD CONSTRAINT "KULCSSZO_PK" PRIMARY KEY ("CIKKID", "SZO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "FELHASZNALO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" ADD CONSTRAINT "FELHASZNALO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "FELHASZNALO" ADD CONSTRAINT "FELHASZNALO_UK1" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "ADMIN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN" ADD CONSTRAINT "ADMIN_UK1" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JAVITAS
--------------------------------------------------------

  ALTER TABLE "JAVITAS" MODIFY ("ADMINID" NOT NULL ENABLE);
  ALTER TABLE "JAVITAS" MODIFY ("HIBAID" NOT NULL ENABLE);
  ALTER TABLE "JAVITAS" ADD CONSTRAINT "JAVITAS_PK" PRIMARY KEY ("ADMINID", "HIBAID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CIKK
--------------------------------------------------------

  ALTER TABLE "CIKK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CIKK" MODIFY ("FELHASZNALOID_SZERZO" NOT NULL ENABLE);
  ALTER TABLE "CIKK" ADD CONSTRAINT "CIKK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HIBA
--------------------------------------------------------

  ALTER TABLE "HIBA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HIBA" MODIFY ("JELENTOID" NOT NULL ENABLE);
  ALTER TABLE "HIBA" MODIFY ("HIBASCIKKID" NOT NULL ENABLE);
  ALTER TABLE "HIBA" ADD CONSTRAINT "HIBA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BAN
--------------------------------------------------------

  ALTER TABLE "BAN" MODIFY ("FELHASZNALOID" NOT NULL ENABLE);
  ALTER TABLE "BAN" MODIFY ("ADMINID" NOT NULL ENABLE);
  ALTER TABLE "BAN" MODIFY ("Date" NOT NULL ENABLE);
  ALTER TABLE "BAN" MODIFY ("HOSSZ" NOT NULL ENABLE);
  ALTER TABLE "BAN" ADD CONSTRAINT "BAN_PK" PRIMARY KEY ("FELHASZNALOID", "ADMINID", "Date", "HOSSZ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LEKTOR
--------------------------------------------------------

  ALTER TABLE "LEKTOR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LEKTOR" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "LEKTOR" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "LEKTOR" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "LEKTOR" ADD CONSTRAINT "LEKTOR_UK1" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LEKTOR" ADD CONSTRAINT "LEKTOR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NYELVTUDAS
--------------------------------------------------------

  ALTER TABLE "NYELVTUDAS" MODIFY ("LEKTORID" NOT NULL ENABLE);
  ALTER TABLE "NYELVTUDAS" MODIFY ("NYELV" NOT NULL ENABLE);
  ALTER TABLE "NYELVTUDAS" MODIFY ("SZINT" NOT NULL ENABLE);
  ALTER TABLE "NYELVTUDAS" ADD CONSTRAINT "NYELVTUDAS_PK" PRIMARY KEY ("LEKTORID", "NYELV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAN
--------------------------------------------------------

  ALTER TABLE "BAN" ADD CONSTRAINT "BAN_FK1" FOREIGN KEY ("ADMINID")
	  REFERENCES "ADMIN" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "BAN" ADD CONSTRAINT "BAN_FK2" FOREIGN KEY ("FELHASZNALOID")
	  REFERENCES "FELHASZNALO" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CIKK
--------------------------------------------------------

  ALTER TABLE "CIKK" ADD CONSTRAINT "CIKK_FK1" FOREIGN KEY ("LEKTORALTA")
	  REFERENCES "LEKTOR" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "CIKK" ADD CONSTRAINT "CIKK_FK2" FOREIGN KEY ("KATEGORIA")
	  REFERENCES "KATEGORIA" ("NEV") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HIBA
--------------------------------------------------------

  ALTER TABLE "HIBA" ADD CONSTRAINT "HIBA_FK1" FOREIGN KEY ("JELENTOID")
	  REFERENCES "FELHASZNALO" ("ID") ENABLE;
  ALTER TABLE "HIBA" ADD FOREIGN KEY ("HIBASCIKKID")
	  REFERENCES "CIKK" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JAVITAS
--------------------------------------------------------

  ALTER TABLE "JAVITAS" ADD CONSTRAINT "JAVITAS_FK1" FOREIGN KEY ("ADMINID")
	  REFERENCES "ADMIN" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "JAVITAS" ADD CONSTRAINT "JAVITAS_FK2" FOREIGN KEY ("HIBAID")
	  REFERENCES "HIBA" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KULCSSZO
--------------------------------------------------------

  ALTER TABLE "KULCSSZO" ADD CONSTRAINT "KULCSSZO_FK1" FOREIGN KEY ("CIKKID")
	  REFERENCES "CIKK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MODOSITAS
--------------------------------------------------------

  ALTER TABLE "MODOSITAS" ADD CONSTRAINT "MOSDOSITAS_FK1" FOREIGN KEY ("CIKKID")
	  REFERENCES "CIKK" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NYELVTUDAS
--------------------------------------------------------

  ALTER TABLE "NYELVTUDAS" ADD CONSTRAINT "NYELVTUDAS_FK1" FOREIGN KEY ("LEKTORID")
	  REFERENCES "LEKTOR" ("ID") ON DELETE CASCADE ENABLE;
