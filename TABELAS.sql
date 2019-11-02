/* Lógico_1: */

CREATE TABLE Cliente (
    Nome_Fantasia VARCHAR,
    CNPJ INT,
    Cod_Cli INT PRIMARY KEY,
    Razao_Social VARCHAR,
    fk_Endereco_Cli_Endereco_Cli_PK VARCHAR,
    Regiao VARCHAR,
    fk_Equipamento_Cod_EQ INT,
    fk_Contrato_Num_Contrato INT
);

CREATE TABLE Equipamento (
    Cod_EQ INT PRIMARY KEY,
    Num_Serie INT,
    Modelo VARCHAR,
    Fabricante VARCHAR,
    Data_Fabr DATE,
    Pais_Origem VARCHAR,
    Cod_Cli INT,
    Num_Contrato INT,
    fk_OS_Numero_OS INT
);

CREATE TABLE OS (
    Numero_OS INT PRIMARY KEY,
    Data_Geracao DATE,
    Cod_CLI INT,
    Cod_EQ INT,
    Desc_Problema VARCHAR,
    Desc_Servico VARCHAR,
    Data_Inicio DATE,
    Data_Termino DATE,
    Tipo_Servico VARCHAR,
    Cod_Tecnico INT,
    Arquivo_Dig VARCHAR,
    Valor_Visita INT
);

CREATE TABLE Tecnico (
    Cod_Tecnico INT PRIMARY KEY,
    Nome_Tec VARCHAR,
    Area_Atuacao VARCHAR,
    RG INT,
    fk_Endereco_Tec_Endereco_Tec_PK VARCHAR,
    fk_OS_Numero_OS INT
);

CREATE TABLE Contrato (
    Num_Contrato INT PRIMARY KEY,
    Cod_Cli INT,
    Data_Inicio_Vigencia DATE,
    fk_Cod_EQ_Cod_EQ_PK INT,
    Data_Fim_Vigencia DATE,
    Valor_Parcela INT,
    Quantidade_Parcelas INT
);

CREATE TABLE Endereco_Cli (
    Endereco_Cli_PK VARCHAR NOT NULL PRIMARY KEY,
    Logradouro VARCHAR,
    Numero INT,
    Complemento VARCHAR,
    Bairro VARCHAR,
    Cidade VARCHAR,
    Pais VARCHAR,
    CEP INT,
    Nome_Responsavel VARCHAR,
    Telefone INT
);

CREATE TABLE Endereco_Tec (
    Endereco_Tec_PK VARCHAR NOT NULL PRIMARY KEY,
    Logradouro VARCHAR,
    Numero INT,
    Complemento VARCHAR,
    Cidade VARCHAR,
    Pais VARCHAR,
    CEP INT,
    Telefone INT,
    Bairro VARCHAR
);

CREATE TABLE Cod_EQ (
    Cod_EQ_PK INT NOT NULL PRIMARY KEY,
    Cod_EQ INT
);

CREATE TABLE Possui_Vinculo (
    fk_Cliente_Cod_Cli INT,
    fk_Cliente_Cod_Cli_ INT
);

CREATE TABLE Pertence (
    fk_Contrato_Num_Contrato INT,
    fk_Equipamento_Cod_EQ INT
);
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_2
    FOREIGN KEY (fk_Endereco_Cli_Endereco_Cli_PK)
    REFERENCES Endereco_Cli (Endereco_Cli_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_3
    FOREIGN KEY (fk_Equipamento_Cod_EQ)
    REFERENCES Equipamento (Cod_EQ)
    ON DELETE CASCADE;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_4
    FOREIGN KEY (fk_Contrato_Num_Contrato)
    REFERENCES Contrato (Num_Contrato)
    ON DELETE CASCADE;
 
ALTER TABLE Equipamento ADD CONSTRAINT FK_Equipamento_2
    FOREIGN KEY (fk_OS_Numero_OS)
    REFERENCES OS (Numero_OS)
    ON DELETE CASCADE;
 
ALTER TABLE Tecnico ADD CONSTRAINT FK_Tecnico_2
    FOREIGN KEY (fk_Endereco_Tec_Endereco_Tec_PK)
    REFERENCES Endereco_Tec (Endereco_Tec_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Tecnico ADD CONSTRAINT FK_Tecnico_3
    FOREIGN KEY (fk_OS_Numero_OS)
    REFERENCES OS (Numero_OS)
    ON DELETE CASCADE;
 
ALTER TABLE Contrato ADD CONSTRAINT FK_Contrato_2
    FOREIGN KEY (fk_Cod_EQ_Cod_EQ_PK)
    REFERENCES Cod_EQ (Cod_EQ_PK)
    ON DELETE NO ACTION;
 
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
    ON DELETE RESTRICT;
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_2
    FOREIGN KEY (fk_Equipamento_Cod_EQ)
    REFERENCES Equipamento (Cod_EQ)
    ON DELETE SET NULL;