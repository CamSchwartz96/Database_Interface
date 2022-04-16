const {createPool} = require('mysql')

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "Metrojet#8",
    connectLmit: 10
})

pool.query('select * from carstore.car;', (err, res)=>{
    return console.log(res)
})