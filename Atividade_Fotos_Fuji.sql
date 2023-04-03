BEGIN TRANSACTION;
CREATE TABLE PessoaFisica(
        CPF                 CHAR(11)            NOT NULL,
        RG                  VARCHAR(9),
        DATA_NASCIMENTO     DATE,
        SEXO                CHAR,
        NOME                VARCHAR(50)         NOT NULL,
        CODIGO              INT                 NOT NULL
)

CREATE TABLE Pessoa_Juridica(
        CNPJ                CHAR(14)            NOT NULL,
        INSCRICAO_ESTADUAL  CHAR(9),       
        NOME_RESPONSAVEL    VARCHAR(50),
        NOME                VARCHAR(50)         NOT NULL,
        CODIGO              INT                 NOT NULL
)  

CREATE TABLE Funcionario(
    CODIGO                  INT                 NOT NULL,
    DEPARTAMENTO            VARCHAR(30),
    NOME                    VARCHAR(50)         NOT NULL, 
    FUNCAO                  VARCHAR(30)         NOT NULL       
)

CREATE TABLE Produto(
    CODIGO                  INT                 NOT NULL,
    TIPO                    VARCHAR(20)         NOT NULL,
    DESCRICAO               VARCHAR(100)        NOT NULL,
    PRECO_CUSTO             DECIMAL             NOT NULL,
    PRECO_VENDA             DECIMAL             NOT NULL,
    QUANTIDADE_MINIMA       INT                 NOT NULL,
    QUANTIDADE_ESTOQUE      INT                 NOT NULL      
)

CREATE TABLE Venda(
    ID                      INT                 NOT NULL,
    [DATA]                  DATETIME            NOT NULL,
    FORMA_PAGAMENTO         VARCHAR(10)         NOT NULL,
    VALOR_VENDA             DECIMAL             NOT NULL
)

CREATE TABLE Endereco(
    LOGRADOURO              VARCHAR(50)         NOT NULL,
    NUMERO                  INT,
    COMPLEMENTO             VARCHAR(50),
    BAIRRO                  VARCHAR(35)         NOT NULL,
    CEP                     CHAR(8)             NOT NULL,
    CIDADE                  VARCHAR(30)         NOT NULL,
    ESTADO                  CHAR(2)             NOT NULL,
    PAIS                    CHAR(2)             NOT NULL
)

CREATE TABLE Telefone(
    TIPO                    VARCHAR(10)         NOT NULL,
    NUMERO                  VARCHAR(11)         NOT NULL


) -- COM O ; OU A PALAVRA GO EXECUTA-SE TODO O SCRIPT
COMMIT

ALTER TABLE Telefone
ADD
CONSTRAINT PK_Telefone PRIMARY KEY (TIPO)

ALTER TABLE Funcionario
ADD
    TIPO_TELEFONE           VARCHAR(10)         NOT NULL

    CONSTRAINT FK_Funcionario_Telefone FOREIGN KEY (TIPO_TELEFONE)
    REFERENCES Telefone (TIPO)