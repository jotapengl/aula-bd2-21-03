-- acessando o mysql pelo terminal do xampp
mysql -u root

-- visualizando os bancos de dados instalados

show databases;

-- criando um novo banco de dados

create database exemplodb;

-- acessando o banco de dados

use exemplodb;

-- excluir um banco de dados

drop database exemplodb;

-- criar o bancoDB

create database bancoDB;

-- acessar bancoDB

use bancoDB;

--criando a tabela bancos

create table bancos(
    numero int not null,
    nome varchar(100) not null,
    constraint bancos_pk primary key(numero)
);

-- criar uma tabela de agências

create table agencias(
    numero varchar(100) not null,
    nome varchar(100) not null,
    telefone int,
    banco int not null,
    constraint agencias_pk primary key (numero)
);

-- criar uma tabela de clientes

create table clientes(
    id int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint clientes_pk primary key(id)
);

-- listar conteudo da tabela clientes

select * from clientes;

-- criar a coluna uf do tipo char com tamanho 2 e valor padrão 'RJ' na tabela cilentes

alter table clientes
add uf char(2) default 'RJ';

alter table clientes
add dia int(2) not null,
add mes int(2) not null;

-- revisão do slide: alterando o tipo de dado de uma coluna
-- alter table <nomeTabela>
--  modify <nomeColuna> <novoTipo>;

alter table produtos
modify unidades char(50) default 'unidades';







-- realizar o bkp do banco fora do mysql
exit
mysqldump bancodb -u root > d:\jp\bkp_bancodb_1403.sql

-- github
--definindo o usuario
git init
git config --global user.name "jotapengl"
git config --global user.email "joaosilvanogal@gmail.com"
git add .
git commit -m ""
git remote add origin https://github.com/jotapengl/BD2_licomp_20241.git
git push -u origin master