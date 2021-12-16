const taskController = require("../controllers/taskController");

const routes = [
  { path: "/tasks/:id", method: "get", func: taskController.getById },
//   { path: "/tasks/:id", method: "update", func: users.addUser },
//   { path: "/tasks", method: "post", func: users.addUser },
];

module.exports = routes;
