
--
-- TABLE: Os
-- 
--  

CREATE TABLE Os (
  idOS integer NOT NULL ,
  idPreOS integer NOT NULL ,
  Aprovado bool NOT NULL  DEFAULT false,
  dataentrada date NOT NULL ,
  datasaida date NOT NULL ,
  descrição_dos_problemas text(450) NOT NULL ,
  descrição_dos_serviços_realizados text(450) NOT NULL ,
  valor_do_serviço decimal(9) NOT NULL 
);

CREATE INDEX Os_idOS_index  ON Os(idOS);
ALTER TABLE Os CHANGE idOS idOS integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE Os ADD CONSTRAINT new_unique_constraint PRIMARY KEY (idOS);

CREATE INDEX Os_idPreOS_index  ON Os(idPreOS);

CREATE INDEX Os_valor_do_serviço_descrição_dos_problemas_index  ON Os(valor_do_serviço,descrição_dos_problemas);

-- 
ALTER TABLE Os ADD CONSTRAINT new_fkey_constraint FOREIGN KEY (idPreOS) REFERENCES Preos(idPREOS) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE Os ADD CONSTRAINT new_fkey_constraint_1 FOREIGN KEY (valor_do_serviço,descrição_dos_problemas) REFERENCES Preos(valor_do_serviço,descrição_dos_problemas) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX Os_idOS_index  ON Os(idOS);
