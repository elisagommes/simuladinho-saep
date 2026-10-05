import express from 'express';
import palestranteRoutes from '../src/routes/palestranteRouter';
import eventoRoutes from '../src/routes/eventosRouter';
import cors from 'cors';

const app = express()
app.use(cors())

app.use(express.json())
app.use("/api/palestrantes", palestranteRoutes)

app.use("/api/eventos", eventoRoutes)

app.listen(3000, () => {
  console.log('Servidor está rodando na porta 3000')
})