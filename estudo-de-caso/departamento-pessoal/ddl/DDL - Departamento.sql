DROP TABLE IF EXISTS DEPARTAMENTO;

CREATE TABLE DEPARTAMENTO (
    ID      INT 		NOT NULL AUTO_INCREMENT    COMMENT "ID do departamento",
    NOME    VARCHAR(15) NOT NULL                   COMMENT "Nome do departamento",
    PRIMARY KEY(ID)
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável por salvar os departamentos.";
