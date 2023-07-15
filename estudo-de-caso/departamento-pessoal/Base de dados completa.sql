DROP DATABASE IF EXISTS DEPARTAMENTO_PESSOAL;

CREATE DATABASE DEPARTAMENTO_PESSOAL;

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

INSERT INTO FUNCIONARIO 
  (ID, PRIMEIRO_NOME, SOBRENOME, NASCIMENTO, SEXO,DATA_CONTRATACAO, TIPO_CONTRATACAO) VALUES
  (1, 'Pedro','Queiroz','2000-06-04','M','2022-09-19','CLT'),
  (2, 'Ana','Felix','1990-03-11','F','2023-12-21','CLT'),
  (3, 'Maiara','Brito','1997-03-15','F','2023-05-01','PJ'),
  (4, 'Holmes','Marinho','1995-01-10','M','2023-07-23','CLT'),
  (5, 'Sophia','Guimaraes','1992-03-08','F','2023-08-10','PJ'),
  (6, 'Laura','Pardo','1996-03-15','F','2023-05-01','PJ'),
  (7, 'Lucas','Silva','1995-02-10','M','2023-07-22','CLT'),
  (8, 'Maria','Nunes','1992-03-10','F','2023-08-10','PJ'),
  (9, 'Thainara','Souza','1992-05-11','N/A','2023-08-10','PJ'),
  (10, 'Luana','Aguiar','2000-08-01','F','2023-08-10','PJ');

DROP TABLE IF EXISTS DEPARTAMENTO;

CREATE TABLE DEPARTAMENTO (
    ID      INT 		NOT NULL AUTO_INCREMENT    COMMENT 'ID do departamento',
    NOME    VARCHAR(15) NOT NULL                   COMMENT 'Nome do departamento',
    PRIMARY KEY(ID)
)DEFAULT CHARSET = utf8 COMMENT 'Tabela responsável por salvar os departamentos.';

INSERT INTO DEPARTAMENTO 
  (ID, NOME) VALUES
  (1, 'Administrativo'),
  (2, 'Financeiro'),
  (3, 'Pessoal'),
  (4, 'Comercial'),
  (5, 'Marketing'),
  (6, 'Jurídico');

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

INSERT INTO DEPARTAMENTO_FUNCIONARIO 
  (ID_FUNCIONARIO, ID_DEPARTAMENTO, DATA_INICIO, DATA_FIM) VALUES
  (4, 2, '2000-06-04','2023-09-19'),
  (5, 1, '2000-06-11','2023-05-19'),
  (2, 6, '2000-06-04','2023-09-19'),
  (1, 5, '2000-05-04','2023-05-19'),
  (3, 4, '2000-06-11','2023-05-19'),
  (2, 4, '2000-06-04','2023-11-19'),
  (1, 2, '2000-06-04','2023-09-19');

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

INSERT INTO DEPARTAMENTO_GERENTE
  (ID_FUNCIONARIO, ID_DEPARTAMENTO, DATA_INICIO, DATA_FIM) VALUES
  (9, 2, '2022-03-04', '2023-08-17'),
  (10, 5, '2023-10-19', '2023-05-03'),
  (7, 6, '2022-08-20', '2023-07-23');

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

INSERT INTO CARGO
  (ID, CARGO, DATA_INICIO, DATA_FIM) VALUES
  (1, 'Analista Junior', '2022-03-04', NULL),
  (5, 'Assistente', '2022-03-04', '2024-03-04'),
  (1, 'Analista Pleno', '2022-03-04', NULL),
  (3, 'Assistente Pleno', '2022-03-04', '2024-03-04'),
  (2, 'Estagiária', '2023-04-07', '2024-04-07');

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

INSERT SALARIO
  (ID, SALARIO, DATA_INICIO, DATA_FIM) VALUES
  (1, 2000, '2022-03-04', '2023-08-17'),
  (5, 1300, '2022-03-04', '2024-03-07'),
  (1, 3000, '2023-03-04', '2024-08-04'),
  (3, 1500, '2022-03-04', '2023-03-06'),
  (5, 800, '2023-04-07', '2024-04-07');
