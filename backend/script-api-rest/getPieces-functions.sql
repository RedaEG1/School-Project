---------------------ACCES AUX DIFFERENTES PIECES---------------------
CREATE PROCEDURE getPieces()
BEGIN
 SELECT LIST('<p>' || nomPiece || '</p>',  '')
 FROM pieces
END; 
