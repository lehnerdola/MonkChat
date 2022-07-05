CREATE DATABASE monkchat;
USE monkchat;

drop table tb_mensagem;

CREATE TABLE tb_usuario(
 id_usuario int primary key auto_increment ,
 nm_usuario varchar (200),
 ds_email varchar (200),
 ds_senha varchar(20),
 DT_CRIACAO datetime
);

CREATE TABLE tb_mensagem(
	id_mensagem int primary key auto_increment,
    id_sala int,
    id_usuario int,
    id_usuario_para int,
    ds_mensagem varchar(200),
    dt_mensagem datetime,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario),
    FOREIGN KEY (id_sala) REFERENCES tb_sala(id_sala)
    );

CREATE TABLE tb_sala(
	id_sala int primary key auto_increment,
    id_usuario int,
    nm_sala varchar(100), 
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario)
);

CREATE TABLE tb_participante(
	id_participante int primary key auto_increment,
    id_usuario int,
    id_sala int,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario),
    FOREIGN KEY (id_sala) REFERENCES tb_sala(id_sala)
);