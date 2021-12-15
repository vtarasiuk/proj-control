const sequelize = require('sequelize');
const initModels = require('./init-models');
const modelsObj = initModels(sequelize);

module.exports = modelsObj;
