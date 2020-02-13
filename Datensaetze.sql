INSERT ALL
    INTO LESER VALUES('10000', 'Harald Toepfer', 'Diesterweg 25, Leipzig', '12.01.1965', '12345', '27.09.2009')
    INTO LESER VALUES('10001', 'Dolores Schmidt', 'Gefaengnisweg 2, Leipzig', '11.12.1970', '58493', '15.03.2012')
    INTO LESER VALUES('10002', 'Gudrun Wertmann', 'Oststraße 27, Leipzig', '31.08.1943', '09434', '01.04.2015')
    INTO LESER VALUES('10003', 'Bellatrix Henze', 'Grimmauldplatz 9, Schkeuditz', '24.03.1981', '75849', '01.01.2010')
    INTO LESER VALUES('10004', 'Tom Raetsel', 'Am Tor 1, Wurzen', '31.12.1912', '00001', '23.06.1985')
SELECT * FROM dual;

INSERT ALL
    INTO KONTOSTATUS VALUES('12345', '2', '1', '20')
    INTO KONTOSTATUS VALUES('58493', '10', '0', '0')
    INTO KONTOSTATUS VALUES('09434', '0', '0', '0')
    INTO KONTOSTATUS VALUES('75849', '3', '0', '100')
    INTO KONTOSTATUS VALUES('00001', '1', '10', '250')
SELECT * FROM dual;

INSERT ALL
    INTO BUCH VALUES('978-3-86760-057-6', 'Tom Sawyers Abenteuer', '2015', 'Muenchen', 'Hase und Igel Verlag', 'Leipziger Stadtbibliothek', '5')
    INTO BUCH VALUES('978-3-608-93981-1', 'Der Herr der Ringe - Die Gefährten', '2017', 'Stuttgart', 'Klett-Cotta', 'Leipziger Stadtbibliothek', '2')
    INTO BUCH VALUES('978-3-608-93982-8', 'Der Herr der Ringe - Die zwei Tuerme', '2017', 'Stuttgart', 'Klett-Cotta', 'Leipziger Stadtbibliothek', '2')
    INTO BUCH VALUES('978-3-608-93983-5', 'Der Herr der Ringe - Die Rueckkehr des Koenigs', '2017', 'Stuttgart', 'Klett-Cotta', 'Leipziger Stadtbibliothek', '2')
    INTO BUCH VALUES('978-3-551-55741-4', 'Harry Potter und der Stein der Weisen', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4') 
    INTO BUCH VALUES('978-3-551-55742-1', 'Harry Potter und die Kammer des Schreckens', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4')
    INTO BUCH VALUES('978-3-551-55743-8', 'Harry Potter und der Gefangene von Askaban', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4')
    INTO BUCH VALUES('978-3-551-55744-5', 'Harry Potter und der Feuerkelch', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4')
    INTO BUCH VALUES('978-3-551-55745-2', 'Harry Potter und der Orden des Phoenix', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4')
    INTO BUCH VALUES('978-3-551-55746-9', 'Harry Potter und der Halbblutprinz', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4')
    INTO BUCH VALUES('978-3-551-55747-6', 'Harry Potter und die Heiligtümer des Todes', '2018', 'Hamburg', 'Carlsen', 'Leipziger Stadtbibliothek', '4')
SELECT * FROM dual;

INSERT ALL
    INTO BUCHSTATUS VALUES('978-3-86760-057-6', '2', '1', '3')
    INTO BUCHSTATUS VALUES('978-3-608-93981-1', '0', '0', '2')
    INTO BUCHSTATUS VALUES('978-3-608-93982-8', '0', '0', '2')
    INTO BUCHSTATUS VALUES('978-3-608-93983-5', '0', '0', '2')
    INTO BUCHSTATUS VALUES('978-3-551-55741-4', '0', '0', '4')
    INTO BUCHSTATUS VALUES('978-3-551-55742-1', '0', '0', '4')
    INTO BUCHSTATUS VALUES('978-3-551-55743-8', '2', '2', '2')
    INTO BUCHSTATUS VALUES('978-3-551-55744-5', '2', '1', '2')
    INTO BUCHSTATUS VALUES('978-3-551-55745-2', '2', '0', '2')
    INTO BUCHSTATUS VALUES('978-3-551-55746-9', '2', '0', '2')
    INTO BUCHSTATUS VALUES('978-3-551-55747-6', '2', '0', '2')
SELECT * FROM dual;
    
INSERT ALL
    INTO RECHERCHE VALUES('10000', '978-3-608-93981-1', '', 'Herr der Ringe', '')
    INTO RECHERCHE VALUES('10000', '978-3-608-93982-8', '', 'Herr der Ringe', '')
    INTO RECHERCHE VALUES('10000', '978-3-608-93983-5', '', 'Herr der Ringe', '')
    INTO RECHERCHE VALUES('10001', '978-3-86760-057-6', '', '', 'Mark Twain')
    INTO RECHERCHE VALUES('10004', '978-3-551-55744-5', 'Feuerkelch', '', '')
SELECT * FROM dual;

INSERT ALL
    INTO MAHNUNG VALUES('12345', 'Leipziger Stadtbibliothek', '1 Buch ueberzogen')
    INTO MAHNUNG VALUES('75849', 'Leipziger Stadtbibliothek', 'Beitrag nicht gezahlt')
    INTO MAHNUNG VALUES('00001', 'Leipziger Stadtbibliothek', 'Beitrag nicht gezahlt und 10 Buecher ueberzogen')
SELECT * FROM dual;

INSERT ALL
    INTO ZAHLEN VALUES('10000', 'Leipziger Stadtbibliothek', '100', 'Beitrag')
    INTO ZAHLEN VALUES('10001', 'Leipziger Stadtbibliothek', '20', '1 Buch ueberzogen')
    INTO ZAHLEN VALUES('10002', 'Leipziger Stadtbibliothek', '100', 'Beitrag')
SELECT * FROM dual;

INSERT ALL
    INTO AKTION VALUES('58493', '978-3-86760-057-6', '1', '0', '0')
    INTO AKTION VALUES('12345', '978-3-86760-057-6', '0', '0', '1')
    INTO AKTION VALUES('75849', '978-3-86760-057-6', '1', '0', '0')
    INTO AKTION VALUES('00001', '978-3-86760-057-6', '0', '1', '0')
    INTO AKTION VALUES('58493', '978-3-608-93981-1', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-608-93981-1', '0', '0', '1')
    INTO AKTION VALUES('58493', '978-3-608-93982-8', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-608-93982-8', '0', '0', '1')
    INTO AKTION VALUES('58493', '978-3-608-93983-5', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-608-93983-5', '0', '0', '1')
    INTO AKTION VALUES('12345', '978-3-551-55741-4', '0', '1', '0')
    INTO AKTION VALUES('58493', '978-3-551-55741-4', '0', '1', '0')
    INTO AKTION VALUES('75849', '978-3-551-55741-4', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-551-55741-4', '0', '0', '1')
    INTO AKTION VALUES('12345', '978-3-551-55742-1', '0', '1', '0')
    INTO AKTION VALUES('58493', '978-3-551-55742-1', '0', '1', '0')
    INTO AKTION VALUES('75849', '978-3-551-55742-1', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-551-55742-1', '0', '0', '1')
    INTO AKTION VALUES('12345', '978-3-551-55743-8', '1', '0', '0')
    INTO AKTION VALUES('58493', '978-3-551-55743-8', '0', '1', '0')
    INTO AKTION VALUES('75849', '978-3-551-55743-8', '1', '0', '0')
    INTO AKTION VALUES('00001', '978-3-551-55743-8', '0', '0', '1')
    INTO AKTION VALUES('58493', '978-3-551-55744-5', '0', '1', '0')
    INTO AKTION VALUES('75849', '978-3-551-55744-5', '1', '0', '0')
    INTO AKTION VALUES('00001', '978-3-551-55744-5', '0', '0', '1')
    INTO AKTION VALUES('58493', '978-3-551-55745-2', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-551-55745-2', '0', '0', '1')
    INTO AKTION VALUES('58493', '978-3-551-55746-9', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-551-55746-9', '0', '0', '1')
    INTO AKTION VALUES('58493', '978-3-551-55747-6', '0', '1', '0')
    INTO AKTION VALUES('00001', '978-3-551-55747-6', '0', '0', '1')
SELECT * FROM dual;