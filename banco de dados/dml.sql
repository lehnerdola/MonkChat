USE monkchat;

-- cadastro novo usuario
INSERT INTO tb_usuario(nm_usuario, ds_email, ds_senha)
	VALUES('vivi', 'vivi@gmail.com','1234');

-- efetuar login
select 
id_usuario id,
nm_usuario nome,
ds_email email
from tb_usuario
where ds_email = 'vivi@gmail.com'
and ds_senha = '1234';

-- alterar dados da conta
UPDATE tb_usuario
SET nm_usuario = 'kekel',
	ds_email = 'kekel@gmail.com',
	ds_senha = 'namodalele'
WHERE id_usuario = 1;  

-- criar uma sala 
INSERT INTO tb_sala (nm_sala)
VALUES( 'as');   

-- entrar na sala(n sei se tá certo)
INSERT INTO tb_participante(id_usuario, id_sala)
VALUES(2, 2);

-- buscar mensagens de uma sala
SELECT id_mensagem id,
	   ds_mensagem mensagem
FROM tb_mensagem
WHERE ds_mensagem like '%o%';       

-- enviar mensagem 
INSERT INTO tb_mensagem(id_usuario, id_usuario_para, id_sala, ds_mensagem, dt_mensagem)
VALUES(1, 2, 2, 'ooi', (now()));

-- alterar mensagem
UPDATE tb_mensagem
SET ds_mensagem = 'blzz'
WHERE id_usuario = 1;  

-- deletar mensagem
DELETE FROM tb_mensagem
WHERE id_mensagem = 1;

select * from tb_mensagem
