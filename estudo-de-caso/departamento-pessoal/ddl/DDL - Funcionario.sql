DROP TABLE IF EXISTS FUNCIONARIO;

CREATE TABLE FUNCIONARIO (
    ID               INT NOT NULL AUTO_INCREMENT    COMMENT "ID do funcionário",
    PRIMEIRO_NOME    VARCHAR(15)                    COMMENT "Primeiro nome do funcionário",
    SOBRENOME        VARCHAR(30)                    COMMENT "Sobrenome do funcionário",
    NASCIMENTO       DATE                           COMMENT "Data de nascimento do funcionário",
    SEXO             ENUM('M', 'F', 'N/A')          COMMENT "Sexo do funcionário",
    DATA_CONTRATACAO DATE                           COMMENT "Data de contratação do funcionário",
    TIPO_CONTRATACAO ENUM('CLT', 'PJ')              COMMENT "Tipo de contratação do funcionário",
    PRIMARY KEY(ID)
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável por salvar os dados dos funcionários.";
