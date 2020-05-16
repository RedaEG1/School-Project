PAR : SIMON PERIQUET

INSERT INTO pieces
(idPiece, nomPiece)
VALUES 
('livi', 'Living'),
('sall', 'Salle à manger'),
('cuis', 'Cuisine'),
('terr', 'Terrasse'),
('chen', 'Chambres enfant'),
('chad', 'Chambres adulte')
;


INSERT INTO DBA.categories
(idCat, nomCat)
VALUES 
('A', 'chaises'),
('B', 'armoires'),
('C', 'tables'),
('D', 'lits'),
('E', 'bureaux')
;

INSERT INTO DBA.produits 
(idProd, nomProd)
VALUES 
('p01','aman'),
('p02','senem'),
('p03','ribuk'),
('p04','cjitul'),
('p05','ajax'),
('p06','leval'),
('p07','arbot'),
('p08','catux'),
('p09','vidor'),
('p10','suckle'),
('p11','tubon'),
('p12','mayi'),
('p13','lidhx'),
('p14','qutu'),
('p15','chodol'),
('p16','luxs'),
('p17','timlbr'),
('p18','shyc'),
('p19','bonrr'),
('p20','tvbosl'),
('p21','buduc'),
('p22','dafurofk'),
('p23','amklid'),
('p24','gjup'),
('p25','redld')
;

INSERT INTO DBA.produitsPieces
(prodId, pieceId)
VALUES
('p01', 10),
('p01', 11),
('p01', 14),
('p01', 15),
('p02', 10),
('p02', 11),
('p02', 14),
('p02', 15),
('p03', 10),
('p03', 11),
('p03', 14),
('p03', 15),
('p04', 10),
('p04', 11),
('p04', 14),
('p04', 15),
('p05', 10),
('p05', 11),
('p05', 14),
('p05', 15),
('p06', 10),
('p06', 11),
('p06', 12),
('p06', 14),
('p06', 15),
('p07', 10),
('p07', 11),
('p07', 12),
('p07', 14),
('p07', 15),
('p08', 10),
('p08', 11),
('p08', 12),
('p08', 14),
('p08', 15),
('p09', 10),
('p09', 11),
('p09', 12),
('p09', 14),
('p09', 15),
('p10', 10),
('p10', 11),
('p10', 12),
('p10', 14),
('p10', 15),
('p11',10),
('p11',11),
('p11',12),
('p11',13),
('p12',10),
('p12',11),
('p12',12),
('p12',13),
('p13',10),
('p13',11),
('p13',12),
('p13',13),
('p14',10),
('p14',11),
('p14',12),
('p14',13),
('p15',10),
('p15',11),
('p15',12),
('p15',13),
('p16', 14),
('p16', 15),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
('p17', 14),
('p17', 15), 
('p18', 14),
('p18', 15), 
('p19', 14),
('p19', 15), 
('p20', 14),
('p20', 15), 
('p21', 14),
('p21', 15),
('p22', 14),
('p22', 15),
('p23', 14),
('p23', 15),
('p24', 14),
('p24', 15),
('p25', 14),
('p25', 15)
;

INSERT INTO DBA.produitsCategories
(prodId, catId)
VALUES
('p01','A'),
('p02','A'),
('p03','A'),
('p04','A'),
('p05','A'),
('p06','B'),
('p07','B'),
('p08','B'),
('p09','B'),
('p10','B'),
('p11','C'),
('p12','C'),
('p13','C'),
('p14','C'),
('p15','C'),
('p16','D'),
('p17','D'),
('p18','D'),
('p19','D'),
('p20','D'),
('p21','E'),
('p22','E'),
('p23','E'),
('p24','E'),
('p25','E')
;

INSERT INTO DBA.categoriesPieces
(catId, pieceId)
VALUES
('A', 10),
('A', 11),
('A', 12),
('A', 13),
('A', 14),
('A', 15),
('B', 10),
('B', 12),
('B', 14),
('B', 15),
('C', 10),
('C', 11),
('C', 13),
('D', 14),
('D', 15),
('E', 14),
('E', 15)
;


