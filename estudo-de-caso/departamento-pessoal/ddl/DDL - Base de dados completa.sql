CREATE DATABASE IF NOT EXISTS DEPARTAMENTO_PESSOAL;

USE DEPARTAMENTO_PESSOAL;

DROP TABLE IF EXISTS FUNCIONARIO;

CREATE TABLE FUNCIONARIO (
    ID               INT NOT NULL AUTO_INCREMENT    COMMENT 'ID do funcionário',
    PRIMEIRO_NOME    VARCHAR(15)                    COMMENT 'Primeiro nome do funcionário',
    SOBRENOME        VARCHAR(30)                    COMMENT 'Sobrenome do funcionário',
    NASCIMENTO       DATE                           COMMENT 'Data de nascimento do funcionário',
    SEXO             ENUM('M', 'F', 'N/A')          COMMENT 'Sexo do funcionário',
    DATA_CONTRATACAO DATE                           COMMENT 'Data de contratação do funcionário',
    TIPO_CONTRATACAO ENUM('CLT', 'PJ')              COMMENT 'Tipo de contratação do funcionário',
    PRIMARY KEY(ID)
)DEFAULT CHARSET = utf8 COMMENT 'Tabela responsável por salvar os dados dos funcionários.';

DROP TABLE IF EXISTS DEPARTAMENTO;

CREATE TABLE DEPARTAMENTO (
    ID      INT 		NOT NULL AUTO_INCREMENT    COMMENT 'ID do departamento',
    NOME    VARCHAR(15) NOT NULL                   COMMENT 'Nome do departamento',
    PRIMARY KEY(ID)
)DEFAULT CHARSET = utf8 COMMENT 'Tabela responsável por salvar os departamentos.';

DROP TABLE IF EXISTS DEPARTAMENTO_FUNCIONARIO;

CREATE TABLE DEPARTAMENTO_FUNCIONARIO (
    ID_FUNCIONARIO     INT  NOT NULL    COMMENT "ID do funcionário",
    ID_DEPARTAMENTO    INT  NOT NULL    COMMENT "ID do departamento",
    DATA_INICIO        DATE NOT NULL	COMMENT "Data início",
    DATA_FIM           DATE NOT NULL    COMMENT "Data fim",
    KEY(ID_FUNCIONARIO),
    KEY(ID_DEPARTAMENTO),
    PRIMARY KEY(ID_FUNCIONARIO, ID_DEPARTAMENTO),
    FOREIGN KEY(ID_FUNCIONARIO)  REFERENCES FUNCIONARIO(ID)  ON DELETE CASCADE,
    FOREIGN KEY(ID_DEPARTAMENTO) REFERENCES DEPARTAMENTO(ID) ON DELETE CASCADE
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável pelo relacionamento entre departamento e funcionário.";

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

DROP TABLE IF EXISTS CARGO;

CREATE TABLE CARGO (
    ID               INT NOT NULL AUTO_INCREMENT    COMMENT "ID do cargo",
    CARGO            VARCHAR(15)                    COMMENT "Nome do cargo",
    DATA_INICIO      DATE NOT NULL	                COMMENT "Data início",
    DATA_FIM         DATE                           COMMENT "Data fim",
    KEY(ID),
    PRIMARY KEY(ID, CARGO, DATA_INICIO),
    FOREIGN KEY(ID) REFERENCES FUNCIONARIO(ID) ON DELETE CASCADE
)DEFAULT CHARSET = utf8 COMMENT "Tabela responsável por salvar os cargos";
