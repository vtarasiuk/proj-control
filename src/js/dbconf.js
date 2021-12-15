const { Sequelize } = require('sequelize');

const MYSQL_HOST = process.env.MYSQL_HOST || "localhost";
const MYSQL_PORT = process.env.MYSQL_PORT || 3306;
const MYSQL_USER = process.env.MYSQL_USER || "root";
const MYSQL_PASS = process.env.MYSQL_PASS || "qwerty123";
const MYSQL_DB = process.env.MYSQL_DB || "proj-control";

module.exports = new Sequelize(MYSQL_DB, MYSQL_USER, MYSQL_PASS, {
  host: MYSQL_HOST,
  port: MYSQL_PORT,
  dialect: "mysql",
  logging: false,
});
