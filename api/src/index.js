import 'dotenv/config'

import usuarioController from './Controller/usuarioController.js'

import { con } from './Repository/connection.js'

import express from 'express'
import cors from 'cors'

const server = express();
server.use(cors());
server.use(express.json());

server.use(usuarioController);

server.listen(process.env.PORT, () => console.log(`API conectada na porta ${process.env.PORT}`));