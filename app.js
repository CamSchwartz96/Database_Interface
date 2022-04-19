const express = require("express");
const path = require("path");
const ejs = require("ejs");
const morgan = require('morgan');
const bodyParser = require("body-parser");
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

app.get("/", (req, res) => {
    res.render("home")
});

app.get("/home", (req, res) => {
    res.render("home")
});

app.get("/cars", (req, res) => {
    res.render("cars")
});

app.get("/tools", (req, res) => {
    res.render("tools")
});

app.get("/client", (req, res) => {
    res.render("client")
});

var mysql = require('mysql');
var conn = mysql.createConnection({
  host: 'localhost', 
  user: 'root',      
  password: '',      
  database: 'carsdb'
}); 

conn.connect(function(err) {
  if (err) throw err;
  console.log('Database is connected successfully!');
});

var urlencodedParser = bodyParser.urlencoded({ extended: false })

app.post("/client", urlencodedParser, (req, res) => {
    console.log(req.body);
    res.render("client-success", {data: req.body});
});

module.exports = conn;

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => console.log(`Server running on ${PORT}`));