/*CARGA INICIAL DE DADOS PARA O SISTEMA NA SEQUENCIA CONFORME A RELACAOO ENTRE AS TABELAS*/

/*TELEFONES DOS CLIENTES*/
INSERT INTO Telefone_cli VALUES (1,111111111);
INSERT INTO Telefone_cli VALUES (2,22222222);
INSERT INTO Telefone_cli VALUES (3,33333333);
INSERT INTO Telefone_cli VALUES (4,44444444);
INSERT INTO Telefone_cli VALUES (5,55555555);
INSERT INTO Telefone_cli VALUES (6,66666666);

/*ENDERECOS DOS CLIENTES*/
INSERT INTO Endereco VALUES (1,'rua A',100,'não','bairro A','cidade A','pais A','nome A',1);
INSERT INTO Endereco VALUES (2,'rua B',200,'não','bairro B','cidade B','pais B','nome B',2);
INSERT INTO Endereco VALUES (3,'rua C',300,'não','bairro C','cidade C','pais C','nome C',3);
INSERT INTO Endereco VALUES (4,'rua D',400,'não','bairro D','cidade D','pais D','nome D',4);
INSERT INTO Endereco VALUES (5,'rua E',500,'não','bairro E','cidade E','pais E','nome E',5);
INSERT INTO Endereco VALUES (6,'rua F',600,'não','bairro F','cidade F','pais F','nome F',6);

/*CONTRATOS*/
INSERT INTO Contrato VALUES (0,TO_DATE('01/01/2001','DD,MM,YYYY'),TO_DATE('31/12/9999','DD,MM,YYYY'),0.0,1);
INSERT INTO Contrato VALUES (1,TO_DATE('02/02/2002','DD,MM,YYYY'),TO_DATE('31/12/2003','DD,MM,YYYY'),200.0,12);
INSERT INTO Contrato VALUES (2,TO_DATE('03/03/2003','DD,MM,YYYY'),TO_DATE('31/12/2004','DD,MM,YYYY'),300.0,12);
INSERT INTO Contrato VALUES (3,TO_DATE('04/04/2004','DD,MM,YYYY'),TO_DATE('31/12/2005','DD,MM,YYYY'),400.0,12);
INSERT INTO Contrato VALUES (4,TO_DATE('05/05/2005','DD,MM,YYYY'),TO_DATE('31/12/2006','DD,MM,YYYY'),500.0,12);
INSERT INTO Contrato VALUES (5,TO_DATE('06/06/2006','DD,MM,YYYY'),TO_DATE('31/12/2007','DD,MM,YYYY'),600.0,12);

/*CLIENTES*/
INSERT INTO Cliente VALUES ('NomeEmpresa1',11111111111111,1,'RazaoSocial1','Nordeste',0,1);
INSERT INTO Cliente VALUES ('NomeEmpresa2',22222222222222,2,'RazaoSocial2','Sudeste',0,2);
INSERT INTO Cliente VALUES ('NomeEmpresa3',33333333333333,3,'RazaoSocial3','Centro-Oeste',0,3);
INSERT INTO Cliente VALUES ('NomeEmpresa4',44444444444444,4,'RazaoSocial4','Sul',0,4);
INSERT INTO Cliente VALUES ('NomeEmpresa5',55555555555555,5,'RazaoSocial5','Norte',0,5);
INSERT INTO Cliente VALUES ('NomeEmpresa6',66666666666666,6,'RazaoSocial6','Nordeste',0,6);

/*EQUIPAMENTOS*/
INSERT INTO Equipamento VALUES (1,'123456','LP1500','Fujifilm',TO_DATE('15/02/2002','DD,MM,YYYY'),'Japão',1);
INSERT INTO Equipamento VALUES (2,'444555','LP2000','Fujifilm',TO_DATE('03/04/2004','DD,MM,YYYY'),'Japão',2);
INSERT INTO Equipamento VALUES (3,'0055','SLP800','Fujifilm',TO_DATE('17/08/2005','DD,MM,YYYY'),'Japão',3);
INSERT INTO Equipamento VALUES (4,'9999','QSS3501','Noritsu',TO_DATE('11/07/2010','DD,MM,YYYY'),'Japão',4);
INSERT INTO Equipamento VALUES (5,'666666','Bizhub','KonicaMinolta',TO_DATE('03/03/2018','DD,MM,YYYY'),'Japão',5);

/*TECNICOS*/
INSERT INTO Tecnico_Endereco_tec
VALUES (001,'Jose','área1',0000000,'rua a','não',11,'Bairro A','Cidade A','Pais A',00000000,000000000);
INSERT INTO Tecnico_Endereco_tec
VALUES (002,'Joao','área2',1111111,'rua b','não',22,'Bairro B','Cidade B','Pais B',11111111,111111111);
INSERT INTO Tecnico_Endereco_tec
VALUES (003,'Jorge','área3',2222222,'rua c','não',33,'Bairro C','Cidade C','Pais C',22222222,222222222);
INSERT INTO Tecnico_Endereco_tec
VALUES (004,'Jessica','área4',3333333,'rua d','não',44,'Bairro D','Cidade D','Pais D',33333333,333333333);
INSERT INTO Tecnico_Endereco_tec
VALUES (005,'Joana','área5',4444444,'rua e','não',55,'Bairro E','Cidade E','Pais E',44444444,444444444);
INSERT INTO Tecnico_Endereco_tec
VALUES (006,'Maria','área6',5555555,'rua f','não',66,'Bairro F','Cidade F','Pais F',55555555,555555555);

