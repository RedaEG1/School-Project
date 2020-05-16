PAR : SIMON PERIQUET

----------------------Premiere table--------------------------------
CREATE TABLE pieces
(
idPiece char(4) NOT NULL,
nomPiece CHAR(20) NOT NULL,
CONSTRAINT pkPiece PRIMARY KEY (idPiece)
);


---------------------Deuxieme table----------------------------------
CREATE TABLE categories
(
idCat CHAR(4) NOT NULL,
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

CREATE TABLE produitsCategories
(
idPc INTEGER NOT NULL DEFAULT AUTOINCREMENT,
prodId CHAR(3) NOT NULL,
catId CHAR(4) NOT NULL,
CONSTRAINT pk__produitsCategories PRIMARY KEY (idPc), 
CONSTRAINT fkprodProd FOREIGN KEY (prodId) REFERENCES produits,
CONSTRAINT fkprodCate FOREIGN KEY (catId) REFERENCES categories
);

--------------Cinquieme table---------------------------------------------

CREATE TABLE categoriesPieces
(
idCp INTEGER NOT NULL DEFAULT AUTOINCREMENT,
catId CHAR(4) NOT NULL,
pieceId CHAR(4) NOT NULL,
CONSTRAINT pk__categoriesPieces PRIMARY KEY (idCp),
CONSTRAINT fkcatLaison FOREIGN KEY (catId) REFERENCES categories,
CONSTRAINT fkpieceLiaison FOREIGN KEY (pieceId) REFERENCES pieces
);



