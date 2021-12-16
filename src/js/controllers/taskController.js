const taskExecutor = require('../executors/taskExecutor');

const taskController = {
    async insert(req, res) {
        throw new Error('Not implemented.');
    },

    async getById(req, res) {
        const id = req.params.id;
        const task = await taskExecutor.getById(id);
        res.json(task)
    },

    async update(req, res) {
        // await repo.update({
        //     where: { id }
        // });
    },

    async deleteById(id) {
        await repo.destroy({
            where: { id }
        });
    }
}

module.exports = taskController;
