--------------------------------------------------------
--  File created - vas�rnap-m�jus-01-2022   
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
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A6969','Gerg�','anyad','geri.t.0115@gmail.com');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A111111','admin','admin','nincs');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A55555','Klau','jelsz�','ja');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A7777','Lela','majd-valami','ezis');
Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values ('A00001','Bodnar','chad','chad@f�rfi.com');
REM INSERTING into BAN
SET DEFINE OFF;
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U2','A6969',to_date('21-M�RC. -05','RR-MON-DD'),'S�rteget�s','1');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U1','A6969',to_date('22-JAN.  -12','RR-MON-DD'),'Tr�g�r sz�haszn�lat.','5');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U3','A7777',to_date('21-AUG.  -10','RR-MON-DD'),'Trollkod�s.','8');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U1','A6969',to_date('22-JAN.  -12','RR-MON-DD'),null,'1');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U2','A6969',to_date('21-M�RC. -03','RR-MON-DD'),'Hamis inform�ci�k terjeszt�se.','12');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U3','A6969',to_date('21-�PR.  -20','RR-MON-DD'),'Hamis inform�ci�k terjeszt�se.','2');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U4','A6969',to_date('21-M�J.  -03','RR-MON-DD'),'Val�s�g torz�t�sa.','1');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U1','A55555',to_date('21-J�N.  -08','RR-MON-DD'),'Trollkod�s.','3');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U2','A7777',to_date('21-J�L.  -18','RR-MON-DD'),'Tr�g�r sz�haszn�lat.','7');
Insert into BAN (FELHASZNALOID,ADMINID,"Date",INDOK,HOSSZ) values ('U4','A55555',to_date('21-SZEPT.-09','RR-MON-DD'),'Oda nem ill� kifejez�sek haszn�lata.','6');
REM INSERTING into CIKK
SET DEFINE OFF;
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C7','Biochemistry',' Biochemistry or biological chemistry, is the study of chemical processes within and relating to living organisms.[1] A sub-discipline of both chemistry and biology, biochemistry may be divided into three fields: structural biology, enzymology and metabolism. Over the last decades of the 20th century, biochemistry has become successsful at explaining living processes through these three disciplines. Almost all areas of the life sciences are being uncovered and developed through biochemical methodology and research.. ','Lektor�l�sra v�r','Angol','U7','K�mia',null,to_date('21-JAN.  -21','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C10','Kend�',' A kend� (??), vagyis a kard �tja a v�v�s jap�n harcm�v�szete. A kend� a kendzsucuk�nt ismert jap�n kardforgat�s hagyom�nyos technik�ib�l fejl�d�tt ki. A kend� egy fizikailag �s szellemileg is er�t pr�b�l� tev�kenys�g, mely a kem�ny harcm�v�szeteket �tv�zi a sportos fizikai elemekkel. A kend�t gyakorl�k m�s n�ven a kend�k�k, vagyis �akik kend�t gyakorolnak�, vagy kensik, vagyis �kardos emberek�.','Lektor�l�sra v�r','Magyar','U10','Sport','L6',to_date('22-M�J.  -01','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C2','M�gsem halt ki az ez�stfej� antechinus, t�l�lte a perzsel� ausztr�liai t�zeket','A mindent felperzsel� t�zeket is t�l�lt�k. A fajgazdags�g meg�rz�se szempontj�b�l minden ilyen felfedez�s j� h�r, de ebben az esetben a kutat�k azt is kiemelik, hogy a ritka ersz�nyesnek siker�lt t�l�lnie a t�rs�gben puszt�t� boz�tt�zeket. 2020-ban �s 2021-ben a t�z a Queensland keleti r�sz�n fekv� Bulburin Nemzeti Park jelent�s r�sz�n hamuv� �gette a faj �l�hely�t, �s a tud�sok nagyon agg�dtak, hogy a 2013-ban azonos�tott ez�stfej� antechinus popul�ci�ja teljesen odaveszhetett a term�szeti katasztr�f�ban.','Lektor�l�sra v�r','Magyar','U2','Biol�gia',null,to_date('20-AUG.  -06','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C3','A k�r �rint�je','Egy k�r �rint�je olyan egyenes a s�kon, amelynek egy adott k�rrel egy, �s csak egy k�z�s pontja van, az �rint�si pontba h�zott sug�r mindig mer�leges az �rint� egyenesre. �rint� h�tk�znapi nyelven olyan egyenes, amely valamely g�rb�t vagy fel�letet egy pontban �rint.','Lektor�l�sra v�r','Magyar','U3','Matematika',null,to_date('18-JAN.  -20','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C5','Ion',' Az ion (vagy r�gies nev�n meneny) olyan atom vagy molekula (atomcsoport), mely elektromos t�lt�ssel rendelkezik. A negat�v t�lt�s� ion, m�s n�ven anion olyan atom vagy molekula, melynek egy vagy t�bb elektront�bblete van, a kation pedig pozit�v t�lt�s� ion, amiben egy vagy t�bb elektronhi�ny van, mint az eredeti r�szecsk�ben. A folyamat, mely sor�n l�trej�nnek az ionok, az ioniz�ci�. Az ioniz�lt atomokat vagy atomcsoportokat �gy jel�lik, hogy az atom vagy molekula f�l�tt jel�lik az elvesztett vagy szerzett elektronok sz�m�t (kiv�ve ha egy van, akkor nem jel�lik), �s a t�lt�st (+ vagy ?). P�lda: H+, O2?. Egyszer� atomok eset�n a f�mek legt�bbsz�r kationokat hoznak l�tre, a nemf�mek anionokat, p�ld�ul a n�trium Na+ kationt, m�g a kl�r Cl? (klorid) aniont hoz l�tre. Bonyolultabb szerves molekul�k ikerionos �llapotba is ker�lhetnek, ekkor egyszerre anionos �s kationos tulajdons�g�ak.','Lektor�lva','Magyar','U5','K�mia','L4',to_date('19-NOV.  -10','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C1','Rendk�v�l �rdekes megfigyel�seket tesznek a hangyakol�ni�kr�l a Szegedi Tudom�nyegyetemen','A hangy�k bonyolultan szervezett vil�g�ban sok anal�gia fedezhet� fel az emberi t�rsadalommal. Dr. Ma�k Istv�n Elek �s Dr. L�rinczi G�bor, a Szegedi Tudom�nyegyetem �kol�giai Tansz�k�nek egyetemi adjunktusai hangy�kkal v�geznek kutat�sokat, megfigyel�seket. A Szegedi Tudom�nyegyetemen 1975-t�l Gall� L�szl� professzor alapozta meg a hangyakutat�st. Minthogy a t�bbi magyar hangyakutat� is kapcsolatban �llt Gall� professzorral, �gy Szeged mondhat� az orig�nak Magyarorsz�gon a hangyakutat�sok ter�n.','Lektor�lva','Magyar','U1','Biol�gia','L2',to_date('21-�PR.  -03','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C4','Grafikai processzor',' A graphics processing unit (r�viden a GPU) magyarul grafikai processzor; a grafikus vez�rl�k�rtya k�zponti egys�ge, amely az �sszetett grafikus m�veletek elv�gz�s��rt felel�s. A GPU feladata a grafik�k l�trehoz�s�val �s megjelen�t�s�vel k�zvetlen�l kapcsolatba hozhat� magas szint� feladatok �tv�tele a CPU-t�l, hogy annak sz�m�t�si kapacit�sa m�s m�veletek elv�gz�s�re legyen felhaszn�lhat�.','Lektor�lva','Magyar','U4',null,'L5',to_date('19-J�N.  -05','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C6','Sz�m�t�g�pes k�mia',' A sz�m�t�g�pes k�mia olyan �ga a k�mi�nak, amely sz�m�t�g�pes szimul�ci�val seg�ti el� a k�miai probl�m�k megold�s�t. Hat�kony sz�m�t�g�pes programokba �gyazva haszn�lja az elm�leti k�mia m�dszereit, hogy kisz�m�tsa �s modellezze a molekul�k, illetve az anyagok tulajdons�gait. Ilyen tulajdons�gok lehetnek pl. az anyagstrukt�r�val, abszol�t �s relat�v energi�val, elektromos t�lt�ss�r�s�g eloszl�s�val, dip�lusmomentummal, rezg�si frekvenci�val, reakci�k�pess�ggel �s a r�szecsk�k �tk�z�s�vel kapcsolatosak. ','Lektor�l�sra v�r','Magyar','U6','K�mia',null,to_date('20-JAN.  -18','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C8','Central processing unit',' A central processing unit (CPU), also called a central processor, main processor or just processor, is the electronic circuitry that executes instructions comprising a computer program. The CPU performs basic arithmetic, logic, controlling, and input/output (I/O) operations specified by the instructions in the program. This contrasts with external components such as main memory and I/O circuitry,[1] and specialized processors such as graphics processing units (GPUs).','Lektor�l�sra v�r','Angol','U8','Informatika',null,to_date('22-AUG.  -15','RR-MON-DD'));
Insert into CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values ('C9','Vulk�n',' A vulk�nok vagy t�zh�ny�k a F�ld felsz�n�nek olyan hasad�kai, amelyeken a felsz�nre jut a magma, az asztenoszf�ra izz� k�zetolvad�ka. A F�ld vulk�njait kialakul�suk oka szerint k�t csoportba soroljuk: t�bbs�g�k a t�volod� �s k�zeled� k�zetlemezek hat�rain (az akt�v lemezhat�rokon) alakul ki, kisebb r�sz�k az akt�v peremszeg�lyekt�l t�vol, a k�penyh�oszlopok (k�penycs�v�k) f�l�tti forr�pontokon j�n l�tre.','Lektor�lva','Magyar','U9','Informatika','L7',to_date('18-SZEPT.-19','RR-MON-DD'));
REM INSERTING into FELHASZNALO
SET DEFINE OFF;
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U20','ifj. Tetszt Elek','jelszo','IElek@gmail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U15','Kuruc Elek','jelsz1','kurucelek@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U16','Kuruc Elek','jelsz1','kurucelek@mail.hu');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U6','Kov�cs Ny�k','jelszo','kovacsnyek@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U1','Mark� Orb�n','jelszo','markoorban@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U2','Fazakas Borsala','jelszo','fazakasborsala@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U3','Solt�sz Kaplony','jelszo','solteszkaplony@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U4','Sallai Mara','jelszo','sallaimara@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U5','Danka Kemenes','jelszo','dankakemenes@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U7','J�sa Szerv�c','jelszo','josaszervac@rhyta.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U8','Gergely Blanka','jelszo','gergelyblanka@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U9','Sallai Edina','jelszo','sallaiedina@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U10','Horv�th Jolan','jelszo','horvathjolan@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U11','Szarka Ompoly','jelszaw','szarkaompoly@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U12','Hal�sz Zizi','jelszooo','halaszzizi@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U13','M�th� Dzsenifer','jelsz2','mathedzsenifer@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U14','Jo� Keled','jelsz1','jookeled@mail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U18','Teszt Elek','jelszava','Elek@gmail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U001','Kov�cs �kos','jelszavam','kova@random.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U19','Tesztn� Margit','jelszavcsi','Margo@gmail.com');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U003','P�s Lacika','12345','valami@random.szar');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U17','�lmos Ferenc','12345','ugyanolyan@random.szar');
Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values ('U002','Fekete Feh�r','54321','�smilyen@random.h�lyes�g');
REM INSERTING into HIBA
SET DEFINE OFF;
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H2','Jel�l�s lehetne a cikkben','0','U1','C3');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H1','Nem csak hangy�k hanem csot�nyokkal is.','0','U5','C1');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H3','A r�gies n�v kiejt�se hi�nyzik','0','U4','C5');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H4','A successsful sz� elvan �rva helyesen: successful','0','U6','C7');
Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values ('H5','A k�penyh�oszlopok sz� elvan �rva helyesen: k�penyh�oszlopok','0','U3','C9');
REM INSERTING into JAVITAS
SET DEFINE OFF;
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A6969','H1',to_date('20-JAN.  -20','RR-MON-DD'),'Jav�tva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A7777','H3',to_date('20-M�RC. -22','RR-MON-DD'),'Jav�tva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A00001','H4',to_date('20-�PR.  -23','RR-MON-DD'),'Jav�tva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A6969','H5',to_date('20-M�J.  -24','RR-MON-DD'),'Jav�tva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H2',to_date('20-FEBR. -20','RR-MON-DD'),'Jav�tva');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A7777','H2',to_date('20-FEBR. -11','RR-MON-DD'),'Jav�t�s megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A6969','H3',to_date('20-M�RC. -12','RR-MON-DD'),'Jav�t�s megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H4',to_date('20-�PR.  -13','RR-MON-DD'),'Jav�t�s megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H5',to_date('20-M�J.  -14','RR-MON-DD'),'Jav�t�s megkezdve');
Insert into JAVITAS (ADMINID,HIBAID,"Date",JEGYZET) values ('A55555','H1',to_date('20-JAN.  -19','RR-MON-DD'),'Jav�t�s megkezdve');
REM INSERTING into KATEGORIA
SET DEFINE OFF;
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Sport','Olimpia, fut�s, �j�szat, v�v�s');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Biol�gia','�llatok, n�v�nyek');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('K�mia','Vegy�szet, vegytan, �ltal�nos k�mia, kvantum k�mia');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Matematika','Aritmetika, algebra, geometria, trigonometria');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('F�ldrajz','Geogr�fia, f�ldtudom�nyok');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Informatika',null);
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Tech','Aut�, Pc');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Zene','Egy�ttesek, hangszerek');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Fizika','Electron, gravit�ci�');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('Vil�g�r','Bolyg�k, csillagok');
Insert into KATEGORIA (NEV,BOVEBBEN) values ('T�rt�nelem','H�bor�');
REM INSERTING into KULCSSZO
SET DEFINE OFF;
Insert into KULCSSZO (CIKKID,SZO) values ('C10','Kend�');
Insert into KULCSSZO (CIKKID,SZO) values ('C2','Denev�r');
Insert into KULCSSZO (CIKKID,SZO) values ('C3','�rint�');
Insert into KULCSSZO (CIKKID,SZO) values ('C4','GPU');
Insert into KULCSSZO (CIKKID,SZO) values ('C5','Ion');
Insert into KULCSSZO (CIKKID,SZO) values ('C7','Biochemistry');
Insert into KULCSSZO (CIKKID,SZO) values ('C8','CPU');
Insert into KULCSSZO (CIKKID,SZO) values ('C9','T�zh�ny�');
REM INSERTING into LEKTOR
SET DEFINE OFF;
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L2','Kiss B�la','jelszo','kissbela@gmail.com','Biol�gia','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L1','Kiss Istv�n','jelszo','kissistvan@gmail.com','Jogtudom�ny','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L3','Kiss Anna','jelszo','kissanna@gmail.com','Matematika','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L4','Kov�cs J�zsef','jelszo','kovacsjozsef@gmail.com','K�mia','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L5','Kov�cs M�ria','jelszo','kovacsmaria@gmail.com','Informatika','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L6','Kov�cs Erzs�bet','jelszo','kovacserzsebet@gmail.com','Matematika','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L7','Kov�cs Ilona','jelszo','kovacsilona@gmail.com','F�ldrajz','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L8','Lakatos M�rton','jelszo','lakatosmarton@gmail.com','     K�zigazgat�situdom�nyok','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L9','Engi J�lia','jelszo','engijulia@gmail.com','Biol�gia','SZTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L10','Szab� Tam�s','jelszo','szabotamas@gmail.com','Matematika','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L11','Szab� Antal','jelszo','szaboantal@gmail.com','M�dia','BGE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L12','Szab� M�ria','jelszo','szabomaria@gmail.com','Filoz�fia','BGE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L13','Szab� Alad�r','jelszo','szaboaladar@gmail.com','Geol�gia','BGE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L14','G�bor D�nes','jelszo','gabordenes@gmail.com','Informatika','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L15','G�bor �ron','jelszo','gaboraron@gmail.com','P�nz�gy','SZTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L16','G�bor Anik�','jelszo','gaboraniko@gmail.com','B�lcs�sztudom�ny','ELTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L17','G�bor L�szl�','jelszo','gaborlaszlo@gmail.com','Teol�gia','ELTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L18','Lakatos Ferenc','jelszo','lakatosferenc@gmail.com','Marketing','ELTE','PhD');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L19','Lakatos Zsigmond','jelszo','lakatoszsigmond@gmail.com','Geol�gia','ELTE','Dr');
Insert into LEKTOR (ID,NEV,JELSZO,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values ('L20','Lakatos Magdolna','jelszo','lakatosmagdolna@gmail.com','T�rt�nelem','ELTE','Dr');
REM INSERTING into MODOSITAS
SET DEFINE OFF;
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Helyes�r�si hib�k jav�t�sa.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Hangyakutat�s kezdete �vsz�m m�dos�t�sa.',to_date('20-M�RC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Nevek ellen�rz�se, jav�t�sa.',to_date('20-�PR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Kisebb kieg�sz�t�sek.',to_date('20-M�J.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C1','Felesleges inform�ci�k t�rl�se.',to_date('21-M�RC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Helyes�r�si hib�k jav�t�sa.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','antechinus sz� kijav�t�sa',to_date('20-M�RC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','�vsz�mok m�dos�t�sa.',to_date('20-�PR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Nevek ellen�rz�se, kisbet�k jav�t�sa.',to_date('20-M�J.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C2','Kisebb kieg�sz�t�sek.',to_date('21-M�RC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Helyes�r�si hib�k jav�t�sa.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Defin�ci�k pontos�t�sa.',to_date('20-M�RC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Cikk c�m�nek jav�t�sa.',to_date('20-�PR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Nevek ellen�rz�se, jav�t�sa.',to_date('20-M�J.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C3','Kisebb kieg�sz�t�sek.',to_date('21-M�RC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Helyes�r�si hib�k jav�t�sa.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Angol kifejez�sek helyesb�t�se.',to_date('20-M�RC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Kis hibajav�t�sok.',to_date('20-�PR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Nevek ellen�rz�se, jav�t�sa.',to_date('20-M�J.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C4','Kisebb kieg�sz�t�sek.',to_date('21-M�RC. -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Helyes�r�si hib�k jav�t�sa.',to_date('20-JAN.  -03','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Fizikai folyamatok ellen�rz�se.',to_date('20-M�RC. -10','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Jel�l�s hozz�ad�sa.',to_date('20-�PR.  -04','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Nevek ellen�rz�se, jav�t�sa.',to_date('20-M�J.  -01','RR-MON-DD'));
Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values ('C5','Kisebb kieg�sz�t�sek.',to_date('21-M�RC. -03','RR-MON-DD'));
REM INSERTING into NYELVTUDAS
SET DEFINE OFF;
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L2','angol','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L3','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L4','angol','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L5','angol','C2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L6','angol','B2');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L6','n�met','C1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L7','angol','B1');
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L8','portug�l','B1');
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
Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values ('L17','k�nai','B1');
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
RAISE_APPLICATION_ERROR(-20000, 'Ezt az  accountot nem lehets�ges t�r�lni!');
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
RAISE_APPLICATION_ERROR(-20000, 'Nem l�tez� felhaszn�l�ra hivatkozik');
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
