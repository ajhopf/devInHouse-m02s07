--EXERC�CIO 1

CREATE TABLE ENDERECOS (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    LOGRADOURO VARCHAR2(128) NOT NULL,
    NUMERO VARCHAR2(32) NOT NULL,
    COMPLEMENTO VARCHAR2(64),
    BAIRRO VARCHAR2(64) NOT NULL,
    CIDADE VARCHAR2(64) NOT NULL,
    CEP NUMBER(8) NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE PROFESSORES (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    NOME VARCHAR2(128) NOT NULL,
    SOBRENOME VARCHAR2(128) NOT NULL,
    GENERO VARCHAR2(32) NOT NULL,
    ENDERECO_ID NUMBER NOT NULL,
    TELEFONE NUMBER(13) NOT NULL,
    EMAIL VARCHAR2(64),
    DATA_NASCIMENTO DATE NOT NULL,
    NACIONALIDADE VARCHAR2(64) NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ENDERECO_ID) REFERENCES ENDERECOS(ID)
);

CREATE TABLE ESTUDANTES (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    NOME VARCHAR2(128) NOT NULL,
    SOBRENOME VARCHAR2(128) NOT NULL,
    GENERO VARCHAR2(32) NOT NULL,
    ENDERECO_ID NUMBER NOT NULL,
    TELEFONE NUMBER(13) NOT NULL,
    EMAIL VARCHAR2(64),
    DATA_NASCIMENTO DATE NOT NULL,
    NACIONALIDADE VARCHAR2(64) NOT NULL,
    MEDIA_GERAL NUMBER(3,1) NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(ENDERECO_ID) REFERENCES ENDERECOS(ID)
);

CREATE TABLE CURSOS(
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
    CODIGO VARCHAR2(10) NOT NULL,
    NOME VARCHAR2(64) NOT NULL,
    MODALIDADE VARCHAR2(64) NOT NULL,
    PROFESSOR_ID NUMBER NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(PROFESSOR_ID) REFERENCES PROFESSORES(ID)
);