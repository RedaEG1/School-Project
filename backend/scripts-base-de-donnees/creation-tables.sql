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
idCat CHAR(1) NOT NULL,
nomCat CHAR(20) NOT NULL,
CONSTRAINT pkCateg PRIMARY KEY (idCat)

);

------------------Troisieme table-------------------------------------
CREATE TABLE produits
(
idProd CHAR(3) NOT NULL,
nomProd CHAR(40) NOT NULL,
CONSTRAINT pkProduit PRIMARY KEY (idProd)

);

--------------Quatrieme table------------------------------------------

CREATE TABLE produitsPieces
(
prodId CHAR(3) NOT NULL,
pieceId INTEGER NOT NULL  DEFAULT AUTOINCREMENT,
CONSTRAINT fkProdLiaison FOREIGN KEY (prodId) REFERENCES produits,
CONSTRAINT fkPieceLiaison FOREIGN KEY (pieceId) REFERENCES pieces
); 

--------------Cinquieme table---------------------------------------------

CREATE TABLE produitsCategories
(
prodId CHAR(3) NOT NULL,
catId CHAR(1) NOT NULL,
CONSTRAINT fkprodProd FOREIGN KEY (prodId) REFERENCES produits,
CONSTRAINT fkprodCate FOREIGN KEY (catId) REFERENCES categories
);

------------Sixieme table---------------------------------------------------

CREATE TABLE categoriesPieces
(
catId CHAR(1) NOT NULL,
pieceId INTEGER NOT NULL DEFAULT AUTOINCREMENT,
CONSTRAINT fkcatLaison FOREIGN KEY (catId) REFERENCES categories,
CONSTRAINT fkpieceLiaison FOREIGN KEY (pieceId) REFERENCES pieces
);





