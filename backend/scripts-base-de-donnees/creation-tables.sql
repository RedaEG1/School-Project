----------------------Premiere table--------------------------------
CREATE TABLE types
(
idType INTEGER NOT NULL DEFAULT AUTOINCREMENT,
nomType CHAR(20) NOT NULL,
CONSTRAINT pkTypes PRIMARY KEY (idType)
);

---------------------Deuxieme table----------------------------------
CREATE TABLE categories
(
idCat INTEGER NOT NULL DEFAULT AUTOINCREMENT,
nomCat CHAR(20) NOT NULL,
catType INTEGER NOT NULL DEFAULT AUTOINCREMENT,
CONSTRAINT pkCateg PRIMARY KEY (idCat),
CONSTRAINT fkCategType FOREIGN KEY (catType) REFERENCES types
);

------------------Troisieme table-------------------------------------
CREATE TABLE produits
(
idProd CHAR(3),
nomProd CHAR(40) NOT NULL,
prodType INTEGER NOT NULL DEFAULT AUTOINCREMENT,
prodCat INTEGER NOT NULL DEFAULT AUTOINCREMENT,
CONSTRAINT pkProduit PRIMARY KEY (idProd),
CONSTRAINT fkProduitType FOREIGN KEY (prodType) REFERENCES types,
CONSTRAINT fkProduitCat FOREIGN KEY (prodCat) REFERENCES categories
);







