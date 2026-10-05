"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const palestranteRouter_1 = __importDefault(require("../src/routes/palestranteRouter"));
const eventosRouter_1 = __importDefault(require("../src/routes/eventosRouter"));
const cors_1 = __importDefault(require("cors"));
const app = (0, express_1.default)();
app.use((0, cors_1.default)());
app.use(express_1.default.json());
app.use("/api/palestrantes", palestranteRouter_1.default);
app.use("/api/eventos", eventosRouter_1.default);
app.listen(3000, () => {
    console.log('Servidor está rodando na porta 3000');
});
