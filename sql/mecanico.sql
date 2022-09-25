
--
-- TABLE: mecanico
-- 
--  

CREATE TABLE mecanico (
  idMecanico integer NOT NULL ,
  nome varchar(30) NOT NULL ,
  cpf varchar(15) NOT NULL ,
  contato varchar(25) NOT NULL ,
  idCliente int NOT NULL ,
  idOS int NOT NULL 
);

CREATE INDEX mecanico_idMecanico_index  ON mecanico(idMecanico);
ALTER TABLE mecanico CHANGE idMecanico idMecanico integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE mecanico ADD CONSTRAINT new_unique_constraint PRIMARY KEY (idMecanico);

CREATE INDEX mecanico_idOS_index  ON mecanico(idOS);

CREATE INDEX mecanico_idCliente_index  ON mecanico(idCliente);

-- 
ALTER TABLE mecanico ADD CONSTRAINT new_fkey_constraint FOREIGN KEY (idOS) REFERENCES Os(idOS) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE mecanico ADD CONSTRAINT new_fkey_constraint_1 FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX mecanico_idMecanico_index  ON mecanico(idMecanico);
