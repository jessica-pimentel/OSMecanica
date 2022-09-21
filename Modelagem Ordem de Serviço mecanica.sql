-- criação de banco de dados oficina mecanica
-- meu primeiro projeto, estou aprendendo ainda

create database if not exists OSMecanica;
use first_example;
CREATE TABLE client(
		idClient int auto_increment primary key,
        Fname varchar(20),
        Mname varchar(20),
        Lname varchar(20),
        Veiculo varchar(20),
        AnoCarro varchar(10),
        Placa varchar(8)
);
CREATE TABLE veiculo(
		cor varchar(15),
        veiculo varchar(20),
        dono varchar(45)
);
CREATE TABLE oficina(
		CNPJ varchar(15) primary key,
        location varchar(20)
);
CREATE TABLE equipe(
		nomeequipe varchar(20),
        especialização varchar(20)
);
CREATE TABLE ordemserviço (
		dataentrega varchar(17),
        concertos varchar(20),
        contact varchar(11),
        dataemissão varchar(10),
        valor varchar(15),
        statusordemserviço enum('aguardando', 'em processo', 'finalizado', 'entregue')
);
CREATE TABLE referenciamaodeobra(
		valorServiços varchar(20),
        maodeobra varchar(20),
        valor varchar(30)
);
CREATE TABLE valorServiço(
		valorServiço varchar(20),
        valorTotal varchar(20)
);
