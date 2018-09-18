/* Modelo Logico: */

CREATE TABLE Receita (
    id SERIAL PRIMARY KEY,
    valor REAL NOT NULL,
    data_recebimento DATE NOT NULL,
    fixo BOOLEAN NOT NULL,
    nome VARCHAR(160) NOT NULL,
    fk_pessoa_usuario INTEGER NOT NULL,
    fk_categoria_receita INTEGER NOT NULL
);

CREATE TABLE Pessoa_Usuario (
    data_nasc DATE NOT NULL,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) NOT NULL,
    id SERIAL PRIMARY KEY,
    login VARCHAR(150) NOT NULL,
    senha VARCHAR(128) NOT NULL
);

CREATE TABLE Categoria_Despesa (
    id SERIAL PRIMARY KEY,
    nome_categ VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Cartao (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    limite REAL NOT NULL,
    dia_fechamento DATE NOT NULL,
    dia_vencimento DATE NOT NULL,
    numero BIGINT NOT NULL
);

CREATE TABLE Categoria_Receita (
    nome_categ VARCHAR(50) NOT NULL UNIQUE,
    id SERIAL PRIMARY KEY
);

CREATE TABLE Forma_Pag (
    id SERIAL PRIMARY KEY,
    tipo_pag VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Pessoa_Cartao (
    fk_pessoa_usuario INTEGER NOT NULL,
    fk_cartao INTEGER NOT NULL
);

CREATE TABLE Despesa (
    valor REAL NOT NULL,
    data_compra DATE NOT NULL,
    data_pag DATE NOT NULL,
    fixo BOOLEAN NOT NULL,
    id SERIAL PRIMARY KEY,
    nome VARCHAR(160) NOT NULL,
    fk_pessoa_usuario INTEGER NOT NULL,
    fk_categoria_despesa INTEGER NOT NULL,
    fk_forma_pag INTEGER NOT NULL
);

CREATE TABLE Parcelamento (
    num_parcelas INTEGER NOT NULL,
    fk_despesa INTEGER PRIMARY KEY,
    fk_cartao INTEGER
);
 
ALTER TABLE Receita ADD CONSTRAINT FK_Receita_1
    FOREIGN KEY (fk_pessoa_usuario)
    REFERENCES Pessoa_Usuario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Receita ADD CONSTRAINT FK_Receita_2
    FOREIGN KEY (fk_categoria_receita)
    REFERENCES Categoria_Receita (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Pessoa_Cartao ADD CONSTRAINT FK_Pessoa_Cartao_0
    FOREIGN KEY (fk_pessoa_usuario)
    REFERENCES Pessoa_Usuario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Pessoa_Cartao ADD CONSTRAINT FK_Pessoa_Cartao_1
    FOREIGN KEY (fk_cartao)
    REFERENCES Cartao (id)
    ON UPDATE CASCADE;
 
ALTER TABLE Despesa ADD CONSTRAINT FK_Despesa_1
    FOREIGN KEY (fk_pessoa_usuario)
    REFERENCES Pessoa_Usuario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Despesa ADD CONSTRAINT FK_Despesa_2
    FOREIGN KEY (fk_categoria_despesa)
    REFERENCES Forma_Pag (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Despesa ADD CONSTRAINT FK_Despesa_3
    FOREIGN KEY (fk_forma_pag)
    REFERENCES Categoria_Despesa (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Parcelamento ADD CONSTRAINT FK_Parcelamento_1
    FOREIGN KEY (fk_despesa)
    REFERENCES Despesa (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Parcelamento ADD CONSTRAINT FK_Parcelamento_2
    FOREIGN KEY (fk_cartao)
    REFERENCES Cartao (id)
    ON DELETE SET NULL ON UPDATE CASCADE;