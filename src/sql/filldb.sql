-- -----------------------------------------------------
-- Data for table `proj-control`.`projects`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`projects` (`id`, `name`) VALUES (DEFAULT, 'Progbase');
INSERT INTO `proj-control`.`projects` (`id`, `name`) VALUES (DEFAULT, 'Acme');

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`roles`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`roles` (`id`, `name`) VALUES (DEFAULT, 'manager');
INSERT INTO `proj-control`.`roles` (`id`, `name`) VALUES (DEFAULT, 'teamlead');
INSERT INTO `proj-control`.`roles` (`id`, `name`) VALUES (DEFAULT, 'developer');

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`users`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'marcus', 'appleWALLmart9', '2021-12-06 10:42:11');
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'hitman1', 'visaFruiT_123', '2020-03-30 19:28:34');
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'bountyfirst', 'Xboxtable132978', '2021-12-03 09:20:22');
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'knownAim', 'coffee2buyEGG', '2020-08-14 11:46:17');
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'don_baton', 'parkjack31', '2020-10-27 22:10:54');
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'ilove2code', 'ZIPlock0828', '2021-10-22 04:50:19');
INSERT INTO `proj-control`.`users` (`id`, `login`, `password`, `createdAt`) VALUES (DEFAULT, 'fict_student', 'FReshflowers33?', '2020-10-07 17:28:20');

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`collaborations`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 2, 1);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 3, 2);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 1, 3);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 2, 4);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 3, 5);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 3, 6);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 1, 3, 7);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 2, 1);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 2, 2);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 3, 3);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 3, 4);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 1, 5);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 3, 6);
INSERT INTO `proj-control`.`collaborations` (`id`, `project`, `role`, `user`) VALUES (DEFAULT, 2, 3, 7);

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`tasks`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Give developers new tasks', 'Describe how to do some lorem ipsum tasks to developers', '2021-09-01 11:15:25', 3);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Review artifacts', 'Hello! You must reveiew developers work with artifacts. There we have some forks onto it so you\'ll do. Cheers!', '2021-07-30 06:34:23', 5);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Make report', 'Good day, Matthew. I am glad to write you again! We have a mini-problem. Our boss wants to see the work report about the project Progbase. So have to write it. Good luck!', '2021-01-06 05:28:23', 3);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Implement \'Course\' class', 'Hi there! Dude see you will implement the main entity about course as the needs produce. I\'ve send more detailed info about it in our Slack chat.', '2021-05-14 12:55:19', 1);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Fix rectangle', 'The QA team found a bug with the rectangular form that sends feedback from user. So you have to fix some problems with its displaying.', '2021-05-19 21:11:01', 4);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Memory leak', 'Users have found a new interesting issue with uploading performance. Reviewing your code I have found a memory leak with pointers attached to POST query. So you have resolve these conflicts and do it properly. ', '2021-08-09 17:57:43', 4);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Cube entity', 'Working with your implementation of Cube shape I have found an interesting issue. The object of Cube class uses much more memory than it could actually. Rewrite these lines in more effective way.', '2021-10-02 00:43:44', 1);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Tel number', 'The server\'s caller cannot actually call on customers phones. Because the form that user fills adds an extra country code to \'tel\' field. So the whole phones have incorrect format. Fix this issue as soon as possible.', '2021-02-21 12:45:46', 1);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Add scenarios', 'There are new customer needs that we need to attach into docs. Please add some new use-cases about these needs. I\'ve sent details in your PM.', '2021-05-12 17:06:45', 2);
INSERT INTO `proj-control`.`tasks` (`id`, `title`, `description`, `deadline`, `owner`) VALUES (DEFAULT, 'Incorrect deletion', 'Hi. Mate there is an issue with user deletion account. If the user deletes account, the handler deletes it just from user\'s page. But it still exist in DB. Hurry up and solve it as soon as you can.', '2021-04-24 02:12:59', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`assignees`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 4, 1);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 2, 2);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 1, 3);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 2, 4);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 5, 5);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 6, 5);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 7, 5);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 2, 6);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 5, 6);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 2, 7);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 6, 7);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 3, 8);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 6, 8);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 7, 8);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 3, 9);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 7, 9);
INSERT INTO `proj-control`.`assignees` (`id`, `user`, `task`) VALUES (DEFAULT, 3, 10);

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`states`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`states` (`id`, `name`) VALUES (DEFAULT, 'TODO');
INSERT INTO `proj-control`.`states` (`id`, `name`) VALUES (DEFAULT, 'PROGRESS');
INSERT INTO `proj-control`.`states` (`id`, `name`) VALUES (DEFAULT, 'REVIEW');
INSERT INTO `proj-control`.`states` (`id`, `name`) VALUES (DEFAULT, 'DONE');

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`artifacts`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/blob/master/src/sql/README.md');
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/blob/master/test/Readme.md');
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/blob/master/guidelines/guidelines.md');
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/blob/master/guidelines/themes.md');
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/tree/master/docs/conclusion');
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/tree/master/docs/software');
INSERT INTO `proj-control`.`artifacts` (`id`, `url`) VALUES (DEFAULT, 'https://github.com/gurug-prog/proj-control/blob/master/LICENSE');

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`actions`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Add a task', '2021-06-15 02:01:45', 3, 1, NULL, 1);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Create developer task', '2021-08-27 16:06:29', 1, 1, NULL, 4);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Task to review artifacts', '2021-08-29 21:22:19', 5, 1, NULL, 2);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Report task', '2021-11-26 08:00:02', 3, 1, NULL, 3);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Create bug fix task', '2021-03-19 23:35:20', 4, 1, NULL, 5);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Memory leak', '2021-06-22 15:49:02', 4, 1, NULL, 6);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Add task about cube', '2021-07-21 10:27:35', 1, 1, NULL, 7);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'New task lorem ipsum', '2021-01-31 14:59:40', 1, 1, NULL, 8);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Telephone issue', '2021-02-15 11:08:01', 2, 1, NULL, 9);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Scenarios task', '2021-03-31 19:44:57', 2, 1, NULL, 10);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Attach readme to task', '2021-06-22 19:25:27', 3, 2, 1, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Add artifact to task', '2021-09-02 00:53:52', 5, 2, 2, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Pin artifact1', '2021-03-29 20:41:29', 4, 1, 6, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Pin artifact2', '2021-11-13 17:29:45', 2, 2, 3, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Fill sql to task', '2021-12-11 20:01:23', 2, 2, 4, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Pinned src code art', '2021-07-16 02:02:26', 3, 1, 7, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Task taken', '2021-11-27 04:31:25', 1, 2, NULL, 3);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Working on task', '2021-04-14 19:16:38', 6, 2, NULL, 5);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'WIP', '2021-07-15 19:20:11', 5, 2, NULL, 6);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Work in progress', '2021-07-23 19:16:28', 2, 2, NULL, 7);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Developing', '2021-06-16 08:11:34', 4, 2, NULL, 1);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Foo bar', '2021-03-02 17:23:26', 3, 2, NULL, 9);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Requested review on cube task', '2021-07-28 22:15:52', 6, 3, NULL, 7);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Review my pull request', '2021-11-29 18:13:02', 1, 3, NULL, 3);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Review request', '2021-03-26 12:11:09', 3, 3, NULL, 9);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Some changes in aftifact', '2021-09-03 18:13:18', 5, 3, 2, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Review refactor artifact', '2021-11-26 08:33:04', 6, 3, 3, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Requested to review an artifact', '2021-07-15 10:21:51', 7, 3, 7, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Reviewed cube task', '2021-07-29 11:32:13', 1, 4, NULL, 7);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Done with task', '2021-11-30 08:33:04', 3, 4, NULL, 3);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Accepted refactor artifact', '2021-07-18 19:48:35', 3, 4, 7, NULL);
INSERT INTO `proj-control`.`actions` (`id`, `comment`, `createdAt`, `actor`, `state`, `subject_artifact`, `subject_task`) VALUES (DEFAULT, 'Declined task', '2021-03-29 20:41:29', 2, 2, NULL, 9);

COMMIT;


-- -----------------------------------------------------
-- Data for table `proj-control`.`attachments`
-- -----------------------------------------------------
START TRANSACTION;
USE `proj-control`;
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Editing', 'Make some changes in this file', 1, 1);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Implementation', 'Implement new functions in this class', 4, 1);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Fixing', 'Fix bug with giving user info', 3, 2);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Separating module', 'This module is very huge - move some code in new modules', 6, 3);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Repairing request', 'Repair to keep things simple and make sure you get the help you need', 1, 3);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Fixing', 'Several chicken processors have reached a $181 million settlement in a class action lawsuit over alleged broiler chicken price-fixing.', 7, 3);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Editing', 'Edit already added documents on my website. The problem I have is that the document gets edited in the table', 1, 4);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Refactor', 'This artifact needs some refactors inside the waste of comments about pull requests', 1, 5);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Improve performance', 'Optimize the performance of an Elastic stack to keep costs and performance in acceptable ranges', 3, 7);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Add new class', 'Add the new classname, like so: document.getElementById(\"MyElement\").', 4, 7);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Lorem ipsum', 'Dolor sit amet, consectetur adipiscing elit. Donec in dolor et nulla posuere scelerisque.', 6, 8);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Docs', 'Delete waste of documentation', 4, 8);
INSERT INTO `proj-control`.`attachments` (`id`, `role`, `comment`, `artifact`, `task`) VALUES (DEFAULT, 'Implement skeleton', 'Implement for a simple skeleton UI, but complicated for more complex skeletons', 7, 10);

COMMIT;
