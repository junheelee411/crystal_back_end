var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'password',
  database : 'crysral.sql'
});

connection.connect();

connection.query('select * from', function (error, results, fields) {
  if (error) throw error;
  console.log('crystal_db', results);
});

connection.end();