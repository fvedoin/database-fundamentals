drop database if exists servidores;
create database servidores;
use servidores;

create table dados(
matricula int,
nome varchar(255),
formacao varchar(255),
cargo varchar(255),
categoria varchar(255),
classe_funcional varchar(255),
 jornada_trabalho varchar(255),
    regime_juridico varchar(255),
    situacao_funcional varchar(255),
    referencia_nivel_padrao int,
    unidade_lotacao_codigo_siapecad int,
    unidade_lotacao_nome varchar(255),
    unidade_lotacao_sigla varchar(10),
    data_admissao date,
    PRIMARY KEY (matricula)
);

create table cargo(
    nome varchar(255),
    categoria varchar(255),
    primary key(nome)
);

create table lotacao(
    codSiapecadLotacao int,
    nome varchar(255),
    sigla varchar(10),
    primary key(codSiapecadLotacao)    
);

create table pessoa(
    matricula int,
    nome varchar(255),
    formacao varchar(255),
    classe_funcional varchar(255),
    jornada_trabalho varchar(255),
    regime_juridico varchar(255),
    situacao_funcional varchar(255),
    referencia_nivel_padrao int,
    data_admissao date,
    codLotacao int,
    cargo varchar(255),
    primary key (matricula)
);

ALTER TABLE pessoa
ADD CONSTRAINT FK_Lotacao
FOREIGN KEY (codLotacao) REFERENCES lotacao(codSiapecadLotacao);

ALTER TABLE pessoa
ADD CONSTRAINT FK_Cargo
FOREIGN KEY (cargo) REFERENCES cargo(nome);