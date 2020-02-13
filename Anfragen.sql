-------------------------------------------
-- Alle reservierten Bücher mit Titel und Namen des Lesers
SELECT l.Name, b.titel FROM BUCH b, AKTION a, Leser l WHERE l.KNr = a.KNr AND a.Reservieren = 1 AND a.ISBN = b.ISBN ORDER BY l.Name;

-------------------------------------------
-- Alle verfügbaren Exemplare der Recherchen
SELECT l.Name, b.titel, bs.verfuegbaranzahl FROM Recherche r, Leser l, Buch b, Buchstatus bs WHERE l.LNr = r.LNr AND b.ISBN = r.ISBN AND b.ISBN = bs.ISBN;

-------------------------------------------
-- Errechnet Gewinn bzw. Verlust aus den Einnahmen und den ausstehenden Zahlungen
SELECT SUM(DISTINCT z.Hoehe) AS Positiv, SUM (DISTINCT ks.gebuehrennichtbezahlthoehe) AS negativ, SUM(DISTINCT z.Hoehe) -SUM(DISTINCT ks.gebuehrennichtbezahlthoehe) as Dividende FROM KontoStatus ks, ZAHLEN z, Leser l;

-------------------------------------------
-- Leser, die ein überfälliges Buch haben, aber noch nie für ein solches Gebühren zahlten.
SELECT DISTINCT l.name, ks.buecherueberzogen FROM Leser l, KontoStatus ks, Zahlen z WHERE NOT (z.Grund = '%Buch ueberzogen%' AND z.LNr = l.LNr) AND l.KNr = ks.KNr And ks.buecherueberzogen > 0;

-------------------------------------------
-- Leser, die entweder mindestens ein Buch überziehen oder ihren Beitrag nicht bezahlt haben

SELECT DISTINCT l.name, m.grund, ks.buecherueberzogen FROM Mahnung m, Leser l, KontoStatus ks WHERE m.KNr = L.KNr AND (m.grund LIKE '%Beitrag nicht%' OR ks.buecherueberzogen > 0) AND ks.KNr = l.KNr;