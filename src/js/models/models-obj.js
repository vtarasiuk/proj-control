const sequelize = require('../dbconf');
const initModels = require('./init-models');
const modelsObj = initModels(sequelize);

module.exports = modelsObj;
