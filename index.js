require('dotenv').config();
const express=require('express')
const app=express()
const port=3000
const mysql = require('mysql')

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
})

connection.connect(function(err) {
  if (err) {
    console.error('Error connecting to MySQL database:', err);
    return;
  }
  console.log('Connected to MySQL database');
});

// var sql="SELECT * FROM `list_of_employees`"
// connection.query(sql,function(err,result,fields){
// if(err) throw err;
// console.log(result);
// })


function executeQuery(sqlQuery, res) {
  connection.query(sqlQuery, function(err, result, fields) {
    if (err) {
      console.error('Error executing SQL query:', err);
      res.status(500).json({ error: 'Internal server error' });
      return;
    }
    res.json(result);
  });
}

// GET endpoint to fetch all employees
app.get("/employees", (req, res) => {
  const sql = "SELECT * FROM `list_of_employees`";
  executeQuery(sql, res);
});

app.listen(port,()=>{
console.log(`listening on port ${port}`);
})

process.on('SIGINT', () => {
  connection.end();
  console.log('MySQL connection closed');
  process.exit();
});