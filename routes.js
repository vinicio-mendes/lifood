const express = require('express')
const routes = express.Router()
const producers = require("./data")

routes.get("/", function (req, res) { 
    return res.render("index.njk")
})

routes.get("/portfolio", function (req, res) { 
    return res.render("portfolio.njk", {items: producers})
})


module.exports = routes
