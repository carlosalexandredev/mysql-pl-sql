DROP TABLE IF EXISTS SALARIO;

CREATE TABLE SALARIO (
    ID               INT NOT NULL AUTO_INCREMENT    COMMENT "ID do salário",
    SALARIO          INT                            COMMENT "Valor do salário",
    DATA_INICIO      DATE NOT NULL	                COMMENT "Data início",
    DATA_FIM         DATE                           COMMENT "Data fim",
    KEY(ID),
    PRIMARY KEY(ID, DATA_INICIO),
    FOREIGN KEY(ID) REFERENCES FUNCIONARIO(ID) ON DELETE CASCADE
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável por salvar os salários";
