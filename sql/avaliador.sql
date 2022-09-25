
--
-- TABLE: Avaliador
-- 
--  

CREATE TABLE Avaliador (
  idAvaliador integer NOT NULL ,
  idCliente integer NOT NULL ,
  placa varchar(10) NOT NULL ,
  idOficina integer NOT NULL 
);

-- 
ALTER TABLE Avaliador ADD CONSTRAINT new_unique_constraint PRIMARY KEY (idAvaliador);

CREATE INDEX Avaliador_placa_index  ON Avaliador(placa);

CREATE INDEX Avaliador_idCliente_index  ON Avaliador(idCliente);

CREATE INDEX Avaliador_idOficina_index  ON Avaliador(idOficina);

-- 
ALTER TABLE Avaliador ADD CONSTRAINT new_fkey_constraint_1 FOREIGN KEY (placa) REFERENCES Veiculo(placa) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE Avaliador ADD CONSTRAINT new_fkey_constraint FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE Avaliador ADD CONSTRAINT new_fkey_constraint_2 FOREIGN KEY (idOficina) REFERENCES Oficina(idOficina) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX Avaliador_idAvaliador_index  ON Avaliador(idAvaliador);

CREATE INDEX Avaliador_idCliente_index  ON Avaliador(idCliente);

CREATE INDEX Avaliador_placa_index  ON Avaliador(placa);
