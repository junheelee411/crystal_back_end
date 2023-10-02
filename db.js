const mysql = require('mysql2/promise');
require('db.sql').config();

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'crystal',
    waitForConnections:true,
    insecureAuth: true,
    connectionLimit: 50
})

module.exports = {
    db
};