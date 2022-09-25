
--
-- TABLE: Cliente
-- 
--  

CREATE TABLE Cliente (
  idCliente integer NOT NULL ,
  nome varchar(30) NOT NULL ,
  cpf_cnpj varchar(15) NOT NULL  DEFAULT 000.000.000-00,
  contato varchar(25) NOT NULL ,
  endereço text(60) NOT NULL 
);

CREATE INDEX Cliente_idCliente_index  ON Cliente(idCliente);
ALTER TABLE Cliente CHANGE idCliente idCliente integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE Cliente ADD CONSTRAINT new_unique_constraint PRIMARY KEY (idCliente);

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX Cliente_idCliente_index  ON Cliente(idCliente);
