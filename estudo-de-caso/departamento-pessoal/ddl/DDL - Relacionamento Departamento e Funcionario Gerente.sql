DROP TABLE IF EXISTS DEPARTAMENTO_GERENTE;

CREATE TABLE DEPARTAMENTO_GERENTE (
    ID_FUNCIONARIO     INT  NOT NULL    COMMENT "ID do funcionário",
    ID_DEPARTAMENTO    INT  NOT NULL    COMMENT "ID do departamento",
    DATA_INICIO        DATE	NOT NULL	COMMENT "Data início",
    DATA_FIM           DATE NOT NULL    COMMENT "Data fim",
    KEY(ID_FUNCIONARIO),
    KEY(ID_DEPARTAMENTO),
    PRIMARY KEY(ID_FUNCIONARIO, ID_DEPARTAMENTO),
    FOREIGN KEY(ID_FUNCIONARIO)  REFERENCES FUNCIONARIO(ID)  ON DELETE CASCADE,
    FOREIGN KEY(ID_DEPARTAMENTO) REFERENCES DEPARTAMENTO(ID) ON DELETE CASCADE
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável pelo relacionamento entre departamento e funcionário gerente.";