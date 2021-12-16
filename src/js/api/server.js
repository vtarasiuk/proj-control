const app = require('../app');
const { modelsObj, sequelize } = require('./modelsObj');
const dotenv = require('dotenv').config();

(async () => {
  modelsObj();
  await sequelize.sync({ force: false });

  app.listen(process.env.EXPRESS_PORT, () => {
    console.log(`Server listening at port ${process.env.EXPRESS_PORT}`);
  });
})();
