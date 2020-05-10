----------------------Premiere table--------------------------------
CREATE TABLE pieces
(
idPiece INTEGER NOT NULL DEFAULT AUTOINCREMENT,
nomPiece CHAR(20) NOT NULL,
CONSTRAINT pkPiece PRIMARY KEY (idPiece)
);


---------------------Deuxieme table----------------------------------
CREATE TABLE categories
(
idCat INTEGER NOT NULL DEFAULT AUTOINCREMENT,
nomCat CHAR(20) NOT NULL,
CONSTRAINT pkCateg PRIMARY KEY (idCat)

);

------------------Troisieme table-------------------------------------
CREATE TABLE produits
(
idProd CHAR(3),
nomProd CHAR(40) NOT NULL,
CONSTRAINT pkProduit PRIMARY KEY (idProd)

);

--------------Quatrieme table------------------------------------------

CREATE TABLE produitsPieces
(
prodId CHAR(3) NOT NULL,
pieceId INTEGER NOT NULL AUTOINCREMENT,
CONSTRAINT fkProdLiaison FOREIGN KEY (prodId) REFERENCES produits,
CONSTRAINT fkPieceLiaison FOREGIN KEY (pieceId) REFERENCES pieces
); 

--------------Cinquieme table---------------------------------------------

CREATE TABLE produitsCategories
(
prodId CHAR(3) NOT NULL,
catId CHAR(1),
CONSTRAINT fkprodProd FOREIGN KEY (prodId) REFERENCES produits,
CONSTRAINT fkprodCate FOREIGN KEY (catId) REFERENCES categories
);

------------Sixieme table---------------------------------------------------

CREATE TABLE categoriesPieces
(
catId CHAR(1),
pieceId INTEGER NOT NULL DEFAULT AUTOINCREMENT,
CONSTRAINT fkcatLaison FOREIGN KEY (catId) REFERENCES categories,
CONSTRAINT fkpieceLiaison FOREIGN KEY (pieceId) REFERENCES pieces
);





