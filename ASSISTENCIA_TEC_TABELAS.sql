/* TABELAS_ASSISTENCIA_TECNICA: */

CREATE TABLE Cliente (
    Nome_Fantasia VARCHAR2(100),
    CNPJ INTEGER,
    Cod_Cli INTEGER PRIMARY KEY,
    Razao_Social VARCHAR2(100),
    Regiao VARCHAR2(100),
    fk_Contrato_Num_Contrato INTEGER,
    fk_Endereco_ID_END_CLI INTEGER
);

CREATE TABLE Equipamento (
    Cod_EQ INTEGER PRIMARY KEY,
    Num_Serie VARCHAR2(20),
    Modelo VARCHAR2(50),
    Fabricante VARCHAR2(50),
    Data_Fabr DATE,
    Pais_Origem VARCHAR2(20),
    fk_Cliente_Cod_Cli INTEGER
);

CREATE TABLE OS (
    Numero_OS INTEGER PRIMARY KEY,
    Data_Geracao DATE,
    Desc_Problema VARCHAR2(100),
    Desc_Servico VARCHAR2(500),
    Data_Inicio DATE,
    Data_Termino DATE,
    Tipo_Servico VARCHAR2(50),
    Arquivo_Dig VARCHAR2(50),
    Valor_Visita FLOAT,
    fk_Equipamento_Cod_EQ INTEGER,
    fk_Cod_Tecnico INTEGER
);

CREATE TABLE Tecnico_Endereco_tec (
    Cod_Tecnico INTEGER,
    Nome_Tec VARCHAR2(100),
    Area_Atuacao VARCHAR(50),
    RG VARCHAR2(20),
    Logradouro VARCHAR2(50),
    Complemento VARCHAR2(10),
    Numero INTEGER,
    Bairro VARCHAR2(50),
    Cidade VARCHAR2(50),
    Pais VARCHAR2(50),
    CEP INTEGER,
    Telefone INTEGER,
    PRIMARY KEY (Cod_Tecnico)
);

CREATE TABLE Contrato (
    Num_Contrato INTEGER PRIMARY KEY,
    Data_Inicio_Vigencia DATE,
    Data_Fim_Vigencia DATE,
    Valor_Parcela FLOAT,
    Quantidade_Parcelas INTEGER
);

CREATE TABLE Endereco (
    ID_END_CLI INTEGER PRIMARY KEY,
    Logradouro VARCHAR2(50),
    Numero INTEGER,
    Complemento VARCHAR2(10),
    Bairro VARCHAR2(50),
    Cidade VARCHAR2(50),
    Pais VARCHAR2(50),
    Nome_Responsavel VARCHAR2(100),
    fk_Telefone_cli_ID_TEL INTEGER
);

CREATE TABLE Telefone_cli (
    ID_TEL INTEGER PRIMARY KEY,
    Numero_tel INTEGER
);

CREATE TABLE Possui_Vinculo (
    fk_Cliente_Cod_Cli INTEGER,
    fk_Cliente_Cod_Cli_ INTEGER
);

CREATE TABLE Pertence (
    fk_Contrato_Num_Contrato INTEGER,
    fk_Equipamento_Cod_EQ INTEGER
);
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_3
    FOREIGN KEY (fk_Contrato_Num_Contrato)
    REFERENCES Contrato (Num_Contrato)
    ON DELETE CASCADE;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_4
    FOREIGN KEY (fk_Endereco_ID_END_CLI)
    REFERENCES Endereco (ID_END_CLI)
;
    /* MANTER ASSIM SE USAR ORACLE: ON DELETE RESTRICT */
 
ALTER TABLE Equipamento ADD CONSTRAINT FK_Equipamento_3
    FOREIGN KEY (fk_Cliente_Cod_Cli)
    REFERENCES Cliente (Cod_CLI)
    ON DELETE CASCADE;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_Telefone_cli_ID_TEL)
    REFERENCES Telefone_cli (ID_TEL)
;
    /* MANTER ASSIM SE USAR ORACLE: ON DELETE RESTRICT */

ALTER TABLE OS ADD CONSTRAINT FK_OS_1
    FOREIGN KEY (fk_Equipamento_Cod_EQ)
    REFERENCES Equipamento (Cod_EQ)
    ON DELETE CASCADE;

ALTER TABLE OS ADD CONSTRAINT FK_OS_2
    FOREIGN KEY (fk_Cod_Tecnico)
    REFERENCES Tecnico_Endereco_tec (Cod_Tecnico)
    ON DELETE CASCADE;
 
ALTER TABLE Possui_Vinculo ADD CONSTRAINT FK_Possui_Vinculo_1
    FOREIGN KEY (fk_Cliente_Cod_Cli)
    REFERENCES Cliente (Cod_Cli)
    ON DELETE CASCADE;
 
ALTER TABLE Possui_Vinculo ADD CONSTRAINT FK_Possui_Vinculo_2
    FOREIGN KEY (fk_Cliente_Cod_Cli_)
    REFERENCES Cliente (Cod_Cli)
    ON DELETE CASCADE;
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_1
    FOREIGN KEY (fk_Contrato_Num_Contrato)
    REFERENCES Contrato (Num_Contrato)
;
    /* MANTER ASSIM SE USAR ORACLE: ON DELETE RESTRICT */
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_2
    FOREIGN KEY (fk_Equipamento_Cod_EQ)
    REFERENCES Equipamento (Cod_EQ)
    ON DELETE SET NULL;