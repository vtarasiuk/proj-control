const taskExecutor = require('../executors/taskExecutor');

const taskController = {
    async insert(req, res) {
        const id = req.body.id;
        const title = req.body.title;
        const description = req.body.decription;
        const deadline = req.body.deadline;
        const owner = req.body.owner;

        return {
            id,
            title,
            description,
            deadline,
            owner
        };
    },

    async getById(req, res) {
        const id = req.params.id;
        const task = await taskExecutor.getById(id);
        res.json(task)
    },

    async update(req, res) {
        throw new Error('Not implemented.');
    },

    async deleteById(id) {
        await repo.destroy({
            where: { id }
        });
    }
}

module.exports = taskController;
