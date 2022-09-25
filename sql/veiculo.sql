
--
-- TABLE: Veiculo
-- 
--  

CREATE TABLE Veiculo (
  placa varchar(9) NOT NULL ,
  tipo varchar(15) NOT NULL ,
  descrição_de_problemas text(500) NOT NULL 
);

-- 
ALTER TABLE Veiculo ADD CONSTRAINT new_unique_constraint PRIMARY KEY (placa);

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX Veiculo_placa_index  ON Veiculo(placa);

CREATE INDEX Veiculo_tipo_index  ON Veiculo(tipo);
