DROP TABLE IF EXISTS CARGO;

CREATE TABLE CARGO (
    ID               INT NOT NULL AUTO_INCREMENT    COMMENT "ID do cargo",
    CARGO            VARCHAR(30)                    COMMENT "Nome do cargo",
    DATA_INICIO      DATE NOT NULL	                COMMENT "Data início",
    DATA_FIM         DATE                           COMMENT "Data fim",
    KEY(ID),
    PRIMARY KEY(ID, CARGO, DATA_INICIO),
    FOREIGN KEY(ID) REFERENCES FUNCIONARIO(ID) ON DELETE CASCADE
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável por salvar os cargos";
