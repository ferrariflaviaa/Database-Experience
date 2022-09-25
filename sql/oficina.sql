
--
-- TABLE: Oficina
-- 
--  

CREATE TABLE Oficina (
  idOficina integer NOT NULL ,
  nome varchar(30) NOT NULL ,
  cnpj varchar(15) NOT NULL ,
  endereço text(60) NOT NULL ,
  contato varchar(30) NOT NULL 
);

CREATE INDEX Oficina_idOficina_index  ON Oficina(idOficina);
ALTER TABLE Oficina CHANGE idOficina idOficina integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE Oficina ADD CONSTRAINT new_unique_constraint PRIMARY KEY (idOficina);

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX Oficina_idOficina_index  ON Oficina(idOficina);

CREATE INDEX Oficina_cnpj_index  ON Oficina(cnpj);
