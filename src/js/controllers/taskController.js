const taskExecutor = require('../executors/taskExecutor');

const taskController = {
    async insert(req, res) {
        const title = req.body.title;
        const description = req.body.decription;
        const deadline = req.body.deadline;
        const owner = req.body.owner;

        const newId = await taskExecutor.insert({
            title,
            description,
            deadline,
            owner
        });

        res.json(`Succesfully added a new task with id = ${newId}`);
    },

    async getById(req, res) {
        const id = req.params.id;
        const task = await taskExecutor.getById(id);
        res.json(task)
    },

    async update(req, res) {
        const id = req.body.id;
        const title = req.body.title;
        const description = req.body.decription;
        const deadline = req.body.deadline;
        const owner = req.body.owner;

        const task = await taskExecutor.update({
            id,
            title,
            description,
            deadline,
            owner
        });

        res.json('Succesfully added a new task');
    },

    async deleteById(id) {
        await repo.destroy({
            where: { id }
        });
    }
}

module.exports = taskController;
