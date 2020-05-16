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


INSERT INTO categories
(idCat, nomCat)
VALUES 
('chais', 'chaises'),
('armo', 'armoires'),
('tabl', 'tables'),
('lits', 'lits'),
('bure', 'bureaux')
;

INSERT INTO produits 
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



INSERT INTO produitsCategories
(prodId, catId)
VALUES
('p01','chai'),
('p02','chai'),
('p03','chai'),
('p04','chai'),
('p05','chai'),
('p06','armo'),
('p07','armo'),
('p08','armo'),
('p09','armo'),
('p10','armo'),
('p11','tabl'),
('p12','tabl'),
('p13','tabl'),
('p14','tabl'),
('p15','tabl'),
('p16','lits'),
('p17','lits'),
('p18','lits'),
('p19','lits'),
('p20','lits'),
('p21','bure'),
('p22','bure'),
('p23','bure'),
('p24','bure'),
('p25','bure')
;

INSERT INTO categoriesPieces
(catId, pieceId)
VALUES
('chai', 'livi'),
('chai', 'sall'),
('chai', 'cuis'),
('chai', 'terr'),
('chai', 'chen'),
('chai', 'chad'),
('armo', 'livi'),
('armo', 'cuis'),
('armo', 'chen'),
('armo', 'chad'),
('tabl', 'livi'),
('tabl', 'sall'),
('tabl', 'terr'),
('lits', 'chen'),
('lits', 'chad'),
('bure', 'chen'),
('bure', 'chad')
;

