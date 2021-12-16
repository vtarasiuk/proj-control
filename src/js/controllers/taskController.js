class TaskController {
    constructor(repo) {
        this.repo = repo;
    }

    async insert() {
        throw new Error('Not implemented.');
    }

    async getById(id) {
        const task = await this.repo.findByPk(id);
        return task;
    }

    async update() {
        throw new Error('Not implemented.');
        // await repo.update({
        //     where: { id }
        // });
    }

    async deleteById(id) {
        await repo.destroy({
            where: { id }
        });
    }
}

module.exports = TaskController;
