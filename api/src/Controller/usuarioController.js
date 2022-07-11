
import { loginUsuario, cadastroUsuario } from "../Repository/usuarioRepository.js";

import { Router } from "express";
const server = Router();

server.post('/usuario/login' , async (req,resp) => {
    try {
        const {email,senha} = req.body;

        const resposta = await loginUsuario(email,senha);

        if(!resposta)
        {
            throw new Error('Dados inválidos!!')
        }

        resp.send(resposta)
    } catch (err) {
        resp.status(401).send({
            erro: err.message
        });
    }
})

server.post('/usuario/cadastro' , async (req,resp) => {
    try {
        const usuario = req.body;

        const novoCadastro = await cadastroUsuario(usuario);

        if(!usuario.nome){
            throw new Error('Nome é obrigatório!')
        }

        if(!usuario.email){
            throw new Error('Insira um email válido!')
        }

        if(!usuario.senha){
            throw new Error('Insira uma senha válida!')
        }

        resp.send(novoCadastro)
    } catch (err) {
        resp.status(400).send({
            erro: err.message
        });
    }
})

export default server;