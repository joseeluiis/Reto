import express, { Request, Response } from 'express';
import mysql from 'mysql2/promise';
import dotenv from 'dotenv';

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

interface ITransformacion {
    id: number;
    nombre: string;
    multiplicador_ki: number;
    fecha_aparicion: Date;
    es_divina: boolean;
}

const dbConfig = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
};

app.get('/', (req: Request, res: Response) => {
    res.send(`
        <div style="background:#1a1a1a; color:orange; padding:50px; text-align:center; font-family:sans-serif;">
            <h1>Biblioteca Friki</h1>
            <p style="color:white;">Cargando el KI.....</p>
            
            <a href="/api/datos" style="background:orange; color:black; padding:10px; text-decoration:none; border-radius:5px; font-weight:bold;">
                VER REGISTRO DE TRANSFORMACIONES
            </a>
        </div>
    `);
});

app.get('/api/datos', async (req: Request, res: Response) => {
    console.log("📡 Detectando Ki en /api/datos...");
    try {
        const connection = await mysql.createConnection(dbConfig);

        const [rows] = await connection.execute('SELECT * FROM transformaciones_goku');

        const transformaciones = rows as ITransformacion[];

        await connection.end();

        res.json(transformaciones);

    } catch (error) {
        console.error("❌ ERROR EN LA DB:", error);
        res.status(500).json({
            error: "Fallo en la conexión subespacial",
            mensaje: "Asegúrate de que MySQL esté encendido y el .env sea correcto."
        });
    }
});

app.listen(PORT, () => {
    console.log(`🚀 Servidor detectado en http://localhost:${PORT}`);
});