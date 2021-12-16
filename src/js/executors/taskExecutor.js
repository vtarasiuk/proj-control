const { modelsObj } = require('../api/modelsObj');

const taskRepo = modelsObj.taskRepo;
const taskExecutor = {
    async insert(id) {
        throw new Error('Not implemented.');
    },

    async getById(id) {
        const task = await taskRepo.findByPk(id);
        return task;
    },

    async update() {
        await taskRepo.update({
            where: { id }
        });
    },

    async deleteById(id) {
        await repo.destroy({
            where: { id }
        });
    }
}

module.exports = taskExecutor;
