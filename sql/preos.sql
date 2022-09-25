
--
-- TABLE: Preos
-- 
--  

CREATE TABLE Preos (
  idPREOS integer NOT NULL ,
  dataEntrada date NOT NULL ,
  dataSaida date NOT NULL ,
  idCliente integer NOT NULL ,
  idAvaliador integer NOT NULL ,
  placa varchar NOT NULL ,
  descrição_dos_problemas text(450) NOT NULL ,
  valor_do_serviço decimal(8) NOT NULL 
);

CREATE INDEX Preos_idPREOS_index  ON Preos(idPREOS);
ALTER TABLE Preos CHANGE idPREOS idPREOS integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE Preos ADD CONSTRAINT new_unique_constraint PRIMARY KEY (idPREOS);

CREATE INDEX Preos_idCliente_index  ON Preos(idCliente);

CREATE INDEX Preos_placa_index  ON Preos(placa);

CREATE INDEX Preos_idAvaliador_index  ON Preos(idAvaliador);

CREATE INDEX Preos_index  ON Preos();

-- 
ALTER TABLE Preos ADD CONSTRAINT new_fkey_constraint FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE Preos ADD CONSTRAINT new_fkey_constraint_1 FOREIGN KEY (placa) REFERENCES Veiculo(placa) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE Preos ADD CONSTRAINT new_fkey_constraint_2 FOREIGN KEY (idAvaliador) REFERENCES Avaliador(idAvaliador) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE Preos ADD CONSTRAINT new_fkey_constraint_3 FOREIGN KEY () REFERENCES Veiculo() ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX Preos_dataEntrada_index  ON Preos(dataEntrada);
