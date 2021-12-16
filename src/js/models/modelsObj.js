const sequelize = require('../dbConnection');
const initModels = require('./initModels');
const modelsObj = initModels(sequelize);

module.exports = modelsObj;
