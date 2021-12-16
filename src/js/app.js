const modelsObject = require('./models/modelsObj');
const tasks = require('./models/tasks');

const getData = async () => {
    const tasksRepo = modelsObject.tasksRepo;
    await tasksRepo.sync();
    const data = await tasksRepo.findAll();
    return data;
}

const getTasks = async () => {
    const tasks = [];
    const data = await getData();
    for (const model of data) {
        tasks.push(model.dataValues);
    }
    return tasks;
}

void async function printTasks() {
    const tasks = await getTasks();
    console.log(tasks);
}();
