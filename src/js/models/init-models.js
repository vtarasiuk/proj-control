const DataTypes = require("sequelize").DataTypes;
const actions = require("./actions");
const artifacts = require("./artifacts");
const assignees = require("./assignees");
const attachments = require("./attachments");
const collaborations = require("./collaborations");
const projects = require("./projects");
const roles = require("./roles");
const states = require("./states");
const tasks = require("./tasks");
const users = require("./users");

function initModels(sequelize) {
  const actionsRepo = actions(sequelize, DataTypes);
  const artifactsRepo = artifacts(sequelize, DataTypes);
  const assigneesRepo = assignees(sequelize, DataTypes);
  const attachmentsRepo = attachments(sequelize, DataTypes);
  const collaborationsRepo = collaborations(sequelize, DataTypes);
  const projectsRepo = projects(sequelize, DataTypes);
  const rolesRepo = roles(sequelize, DataTypes);
  const statesRepo = states(sequelize, DataTypes);
  const tasksRepo = tasks(sequelize, DataTypes);
  const usersRepo = users(sequelize, DataTypes);


  // projects relations
  projectsRepo.hasMany(collaborationsRepo, { as: "collaborations", foreignKey: "project" });

  // colaborations relations
  collaborationsRepo.belongsTo(projectsRepo, { as: "project_project", foreignKey: "project" });
  collaborationsRepo.belongsTo(rolesRepo, { as: "role_role", foreignKey: "role" });
  collaborationsRepo.belongsTo(usersRepo, { as: "user_user", foreignKey: "user" });

  // roles relations
  rolesRepo.hasMany(collaborationsRepo, { as: "collaborations", foreignKey: "role" });

  // users relations
  usersRepo.hasMany(actionsRepo, { as: "actions", foreignKey: "actor" });
  usersRepo.hasMany(assigneesRepo, { as: "assignees", foreignKey: "user" });
  usersRepo.hasMany(collaborationsRepo, { as: "collaborations", foreignKey: "user" });
  usersRepo.hasMany(tasksRepo, { as: "tasks", foreignKey: "owner" });

  // tasks relations
  tasksRepo.hasMany(actionsRepo, { as: "actions", foreignKey: "subject_task" });
  tasksRepo.hasMany(assigneesRepo, { as: "assignees", foreignKey: "task" });
  tasksRepo.hasMany(attachmentsRepo, { as: "attachments", foreignKey: "task" });
  tasksRepo.belongsTo(usersRepo, { as: "owner_user", foreignKey: "owner" });

  // assignees relations
  assigneesRepo.belongsTo(tasksRepo, { as: "task_task", foreignKey: "task" });
  assigneesRepo.belongsTo(usersRepo, { as: "user_user", foreignKey: "user" });

  // actions relations
  actionsRepo.belongsTo(artifactsRepo, { as: "subject_artifact_artifact", foreignKey: "subject_artifact" });
  actionsRepo.belongsTo(statesRepo, { as: "state_state", foreignKey: "state" });
  actionsRepo.belongsTo(tasksRepo, { as: "subject_task_task", foreignKey: "subject_task" });
  actionsRepo.belongsTo(usersRepo, { as: "actor_user", foreignKey: "actor" });

  // states relations
  statesRepo.hasMany(actionsRepo, { as: "actions", foreignKey: "state" });

  // artifacts relations
  artifactsRepo.hasMany(actionsRepo, { as: "actions", foreignKey: "subject_artifact" });
  artifactsRepo.hasMany(attachmentsRepo, { as: "attachments", foreignKey: "artifact" });

  // attachments relations
  attachmentsRepo.belongsTo(artifactsRepo, { as: "artifact_artifact", foreignKey: "artifact" });
  attachmentsRepo.belongsTo(tasksRepo, { as: "task_task", foreignKey: "task" });

  return {
    actionsRepo,
    artifactsRepo,
    assigneesRepo,
    attachmentsRepo,
    collaborationsRepo,
    projectsRepo,
    rolesRepo,
    statesRepo,
    tasksRepo,
    usersRepo,
  };
}

module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
