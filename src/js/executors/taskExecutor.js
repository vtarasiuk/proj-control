const { modelsObj } = require('../api/modelsObj');

const taskRepo = modelsObj.taskRepo;
const taskExecutor = {
    async insert() {
        const newTask = taskRepo.create(/* ??? */);
        return newTask;
    },

    async getById(id) {
        const task = await taskRepo.findByPk(id);
        return task;
    },

    async update() {
        await taskRepo.update({ /* ??? */ }, {
            where: {
              lastName: null
            }
          });
    },

    async deleteById(id) {
        await taskRepo.destroy({
            where: { id }
        });
    }
}

module.exports = taskExecutor;
