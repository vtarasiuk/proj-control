const { modelsObj } = require('../api/modelsObj');

const taskRepo = modelsObj.taskRepo;
const taskExecutor = {
    async insert(task) {
        const newTask = await taskRepo.create(task);
        return newTask.dataValues.id;
    },

    async getById(id) {
        const task = await taskRepo.findByPk(id);
        return task;
    },

    async update(task) {
        await taskRepo.update({ /* ??? */ }, {
            where: {
              id: task.id
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
