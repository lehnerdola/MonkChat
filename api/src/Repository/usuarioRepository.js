import { con } from "./connection.js";

export async function loginUsuario(email,senha){
    const comando = 
    `
    select 
    id_usuario id,
    nm_usuario nome,
    ds_email email
    from tb_usuario
    where ds_email = ?
    and ds_senha = ?
    `

    const [linhas] = await con.query(comando, [email,senha]);
    return linhas [0];
} 

export async function cadastroUsuario(usuario){

    const comando = 
    `
    INSERT INTO tb_usuario(nm_usuario, ds_email, ds_senha)
	VALUES(?,?,?)
    `;

    const [resposta] = await con.query(comando, [usuario.nome, usuario.email, usuario.senha]);

    usuario.id = resposta.insertId;

    return usuario;
}
