const { Pool } = require("pg")


modeule.exports = new Pool({
    user: 'vini',
    password: "",
    host: "localhost",
    port: 5432,
    database: "lifooddb"
})