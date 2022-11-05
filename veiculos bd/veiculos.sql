CREATE TABLE cores (id_cor int PRIMARY KEY,

		    ds_cor char(30)
);

CREATE TABLE veiculos (
id_renavam int PRIMARY KEY,

		       ano_modelo int,
    
		       val_veiculo float(10,2),
    
		       id_cor int,
    
 		       id_marca int
);



CREATE TABLE marcas (
id_marca int PRIMARY KEY,
    
		     ds_marca char(30)
);
 


ALTER TABLE veiculos ADD CONSTRAINT FK_veiculos_2
 FOREIGN KEY(id_cor) REFERENCES cores (id_cor)
    ON DELETE RESTRICT;
 
ALTER TABLE veiculos ADD CONSTRAINT FK_veiculos_3
    FOREIGN KEY (id_marca)
    REFERENCES marcas (id_marca)
    ON DELETE RESTRICT;