/* Lógico_1: */

CREATE TABLE funcionarios (
    id_funcionario int PRIMARY KEY,
    nm_funcionario char(50),
    dt_nascimento date,
    ds_email char(100),
    ds_site char(100),
    ds_apresentacao varchar(1000),
    id_genero int,
    id_Status int,
    id_cidade int,
    id_cargo int,
    id_departamento int
);

CREATE TABLE genero (
    id_genero int PRIMARY KEY,
    ds_genero char(30)
);

CREATE TABLE status (
    id_Status int PRIMARY KEY,
    ds_status char(40)
);

CREATE TABLE estados (
    id_estado int PRIMARY KEY,
    sg_estado char(2),
    ds_estado char(50)
);

CREATE TABLE cidades (
    id_cidade int PRIMARY KEY,
    nm_cidade char(80),
    id_estado int
);

CREATE TABLE cargos (
    id_cargo int PRIMARY KEY,
    ds_cargo char(100)
);

CREATE TABLE departamentos (
    id_departamento int PRIMARY KEY,
    ds_departamento char(100)
);

CREATE TABLE dependentes (
    id_dependente int PRIMARY KEY,
    nm_dependente char(80),
    dt_nascimento date,
    id_grau int,
    id_estado int,
    id_genero int,
    id_funcionario int
);

CREATE TABLE grau (
    id_grau int PRIMARY KEY,
    ds_grau char(30)
);

CREATE TABLE historico (
    id_historico int PRIMARY KEY,
    dt_historico date,
    ds_observacao varchar(1000),
    id_ocorrencia int,
    id_funcionario int
);

CREATE TABLE tipo_historico (
    id_tipo_historico int PRIMARY KEY,
    ds_tipo_historico char(50)
);

CREATE TABLE ocorrencia (
    id_ocorrencia int PRIMARY KEY,
    ds_ocorrencia char(80),
    id_tipo_historico int
);
 
ALTER TABLE funcionarios ADD CONSTRAINT FK_funcionarios_2
    FOREIGN KEY (id_genero)
    REFERENCES genero (id_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE funcionarios ADD CONSTRAINT FK_funcionarios_3
    FOREIGN KEY (id_Status)
    REFERENCES status (id_Status)
    ON DELETE RESTRICT;
 
ALTER TABLE funcionarios ADD CONSTRAINT FK_funcionarios_4
    FOREIGN KEY (id_cidade)
    REFERENCES cidades (id_cidade)
    ON DELETE CASCADE;
 
ALTER TABLE funcionarios ADD CONSTRAINT FK_funcionarios_5
    FOREIGN KEY (id_cargo)
    REFERENCES cargos (id_cargo)
    ON DELETE RESTRICT;
 
ALTER TABLE funcionarios ADD CONSTRAINT FK_funcionarios_6
    FOREIGN KEY (id_departamento)
    REFERENCES departamentos (id_departamento)
    ON DELETE RESTRICT;
 
ALTER TABLE cidades ADD CONSTRAINT FK_cidades_2
    FOREIGN KEY (id_estado)
    REFERENCES estados (id_estado)
    ON DELETE CASCADE;
 
ALTER TABLE dependentes ADD CONSTRAINT FK_dependentes_2
    FOREIGN KEY (id_grau)
    REFERENCES grau (id_grau)
    ON DELETE RESTRICT;
 
ALTER TABLE dependentes ADD CONSTRAINT FK_dependentes_3
    FOREIGN KEY (id_estado)
    REFERENCES estados (id_estado)
    ON DELETE RESTRICT;
 
ALTER TABLE dependentes ADD CONSTRAINT FK_dependentes_4
    FOREIGN KEY (id_genero)
    REFERENCES genero (id_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE dependentes ADD CONSTRAINT FK_dependentes_5
    FOREIGN KEY (id_funcionario)
    REFERENCES funcionarios (id_funcionario)
    ON DELETE CASCADE;
 
ALTER TABLE historico ADD CONSTRAINT FK_historico_2
    FOREIGN KEY (id_ocorrencia)
    REFERENCES ocorrencia (id_ocorrencia)
    ON DELETE RESTRICT;
 
ALTER TABLE historico ADD CONSTRAINT FK_historico_3
    FOREIGN KEY (id_funcionario)
    REFERENCES funcionarios (id_funcionario)
    ON DELETE CASCADE;
 
ALTER TABLE ocorrencia ADD CONSTRAINT FK_ocorrencia_2
    FOREIGN KEY (id_tipo_historico)
    REFERENCES tipo_historico (id_tipo_historico)
    ON DELETE RESTRICT;