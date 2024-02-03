"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const app = (0, express_1.default)();
const port = process.env.PORT || 3000;
app.get('/', (req, res) => {
    res.send('<h1 style="text-align:center; font-weight:bold;">prembly</h1>');
});
app.get('/login', (req, res) => {
    res.send('<h1 style="text-align:center; font-weight:bold;">Welcome to login page</h1>');
});
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
