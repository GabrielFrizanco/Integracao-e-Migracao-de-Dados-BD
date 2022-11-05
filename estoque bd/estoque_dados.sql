
-- ENTRADA DE DADOS - UNIDADE_MEDIDA

INSERT INTO unidade_medida(id_unidade_medida, sigla, desc_unidade_medida) VALUES (1, 'PC', 'Peça');
INSERT INTO unidade_medida(id_unidade_medida, sigla, desc_unidade_medida) VALUES (2, 'MT', 'Metro');
INSERT INTO unidade_medida(id_unidade_medida, sigla, desc_unidade_medida) VALUES (3, 'KG', 'Quilo');
INSERT INTO unidade_medida(id_unidade_medida, sigla, desc_unidade_medida) VALUES (4, 'LT', 'Litro');
INSERT INTO unidade_medida(id_unidade_medida, sigla, desc_unidade_medida) VALUES (5, 'TN', 'Tonelada');
INSERT INTO unidade_medida(id_unidade_medida, sigla, desc_unidade_medida) VALUES (6, 'PT', 'Pacote');

-- ENTRADA DE DADOS - FAMILIA
INSERT INTO familia(id_familia, dsc_familia) VALUES (1, 'Material de Escritório');
INSERT INTO familia(id_familia, dsc_familia) VALUES (2, 'Material Elétrico');
INSERT INTO familia(id_familia, dsc_familia) VALUES (3, 'Material de Limpesa');


-- ENTRADA DE DADOS - MATERIAL
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(1, 'Caneta Piloto Azul', 1, 1,100);
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(2, 'Lapis HB20', 1, 1,230);
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(3, 'Parafuso 6', 1, 2,550);
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(4, 'Cabo Elétrico 3', 2, 2,1200);
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(5, 'Mag. Borra 2', 2, 3,800);
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(6, 'Água Sanitária', 4, 3,190);
INSERT INTO material(id_material, dsc_material, id_unidade, id_familia, qt_estoque) VALUES(7, 'Sulfite', 6, 1,290);