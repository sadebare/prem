import express from 'express';

const app = express();
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
