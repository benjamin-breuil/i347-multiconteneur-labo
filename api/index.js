const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 3000;

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'user',
    password: 'password',
    database: 'database'
});

connection.connect((err) => {
    if (err) {
        console.error('Erreur de connexion à la base de données :', err);
    } else {
        console.log('Connexion à la base de données établie');
    }
});


process.on('SIGINT', () => {
    connection.end();
    process.exit();
});

app.listen(port, () => {
    console.log(`Serveur Express écoutant sur le port ${port}`);
});
