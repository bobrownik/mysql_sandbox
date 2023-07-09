CREATE TABLE IF NOT EXISTS `departments` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `departments` WRITE;

INSERT INTO `departments` (`id`, `name`)
VALUES
	(1,'Development'),
	(2,'Design'),
	(3,'Marketing'),
	(4,'Accounting');

UNLOCK TABLES;

CREATE TABLE `projects` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;

INSERT INTO `projects` (`id`, `name`)
VALUES
	(1,'Kaiser Dome'),
	(2,'Unitrust Corpo'),
	(3,'Unitrust'),
	(4,'Rubber44'),
	(5,'Sanitary Engineering'),
	(6,'Autodigit'),
	(7,'Hall of Fame'),
	(8,'Gardener'),
	(9,'Trucker LLC'),
	(10,'Comfort World');

UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `salaries` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`worker_id` int(11) DEFAULT NULL,
	`salary` int(11) DEFAULT NULL,
	`date` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `salaries` WRITE;

INSERT INTO `salaries` (`id`, `worker_id`, `salary`, `date`)
VALUES
	(1,1,300,'2020-01-10 17:00:00'),
	(2,2,500,'2020-01-10 17:01:00'),
	(3,3,400,'2020-01-10 17:02:00'),
	(4,1,300,'2020-02-10 16:00:00'),
	(5,4,500,'2020-02-10 17:00:00'),
	(6,6,700,'2020-02-10 18:00:00'),
	(7,4,200,'2020-03-10 16:00:00'),
	(8,6,200,'2020-03-10 16:00:00'),
	(9,1,400,'2020-03-10 16:01:00'),
	(10,4,200,'2020-03-10 16:02:00'),
	(11,7,200,'2020-01-10 17:03:00'),
	(12,8,1000,'2020-01-10 16:03:00'),
	(13,9,300,'2020-03-05 16:00:00'),
	(14,12,1200,'2020-03-05 16:20:00'),
	(15,11,1000,'2020-03-03 16:20:00'),
	(16,7,200,'2020-03-10 12:01:00');

UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `tags` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags` WRITE;

INSERT INTO `tags` (`id`, `name`)
VALUES
	(1, 'remake'),
	(2, 'unloading'),
	(3, 'development'),
	(4, 'do'),
	(5, 'support'),
	(6, 'fix'),
	(7, 'marketing'),
	(8, 'budget'),
	(9, 'buttons'),
	(10, 'layout'),
	(11, 'adaptability'),
	(12, 'design'),
	(13, 'trash'),
	(14, 'rates'),
	(15, 'clean up'),
	(16, 'campaigns'),
	(17, 'internal'),
	(18, 'tz'),
	(19, 'estimate'),
	(20, 'agreement');

UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `tags_tasks` (
	`tag_id` int(11) unsigned NOT NULL,
	`task_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags_tasks` WRITE;

INSERT INTO `tags_tasks` (`tag_id`, `task_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,2),
	(3,2),
	(5,2),
	(10,2),
	(6,3),
	(3,3),
	(7,4),
	(8,4),
	(6,5),
	(9,5),
	(10,5),
	(3,5),
	(6,6),
	(2,6),
	(3,6),
	(6,7),
	(3,7),
	(6,8),
	(10,8),
	(3,8),
	(4,9),
	(10,9),
	(5,9),
	(3,9),
	(4,10),
	(10,10),
	(3,10),
	(4,11),
	(11,11),
	(6,12),
	(10,12),
	(11,12),
	(4,13),
	(10,13),
	(3,13),
	(11,13),
	(6,14),
	(10,14),
	(5,14),
	(3,14),
	(6,15),
	(10,15),
	(3,15),
	(4,16),
	(3,16),
	(4,17),
	(10,17),
	(3,17),
	(11,17),
	(4,18),
	(10,18),
	(3,18),
	(11,18),
	(4,19),
	(12,19),
	(4,20),
	(12,20),
	(6,21),
	(12,21),
	(6,22),
	(12,22),
	(13,22),
	(7,23),
	(8,23),
	(7,24),
	(14,24),
	(7,25),
	(15,25),
	(7,26),
	(15,26),
	(7,27),
	(16,27),
	(7,28),
	(14,28),
	(17,29),
	(18,29),
	(17,30),
	(5,30),
	(19,30),
	(20,30),
	(17,31),
	(12,31),
	(20,31);

UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `tasks` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`project_id` int(10) unsigned NOT NULL,
	`creator_id` int(10) unsigned NOT NULL,
	`worker_id` int(11) unsigned NOT NULL,
	`description` varchar(255) DEFAULT NULL,
	`done` tinyint(4) NOT NULL DEFAULT '0',
	`created_at` datetime NOT NULL DEFAULT '2020-01-13 00:00:00',
	`started_at` datetime DEFAULT NULL,
	`end_at` datetime DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tasks` WRITE;

INSERT INTO `tasks` (`id`, `project_id`, `creator_id`, `worker_id`, `description`, `done`, `created_at`, `started_at`, `end_at`)
VALUES
	(1,5,12,2, 'Overwrite unloading', 0, '2020-01-13 10:00:00', NULL, NULL),
	(2,2,12,1, 'Make up a feedback form', 0, '2020-02-10 09:00:00', NULL, NULL),
	(3,4,12,3, 'Repair service page', 1, '2020-01-20 15:00:00', '2020-01-20 16:00:00', '2020-01-20 20:00:00'),
	(4,6,11,9, 'Calculate budget for January', 0, '2020-02-01 18:00:00', '2020-02-02 15:00:00', NULL),
	(5,3,12,1, 'Fix buttons leaving', 1, '2020-01-15 08:00:00', '2020-01-15 12:00:00', '2020-01-16 09:00:00'),
	(6,10,12,4, 'Correct unloading', 1, '2020-01-17 05:00:00', '2020-01-17 09:00:00', '2020-01-17 12:00:00'),
	(7,7,5,3, 'Change data on the contacts page', 0, '2020-01-11 20:00:00', NULL, NULL),
	(8,8,12,2, 'Fix footer', 0, '2020-01-04 17:00:00', '2020-01-04 19:00:00', NULL),
	(9,3,11,1, 'Flip the main block on the main one', 0, '2020-01-09 16:00:00', NULL, NULL),
	(10,1,12,4, 'Change menu', 1, '2020-02-01 15:00:00', '2020-02-01 17:00:00', '2020-02-01 19:00:00'),
	(11,9,11,3, 'Change the width of the mobile', 0, '2020-02-23 13:00:00', '2020-02-23 19:00:00', NULL),
	(12,10,12,4, 'Move this block down', 1, '2020-01-18 12:00:00', '2020-01-18 13:00:00', '2020-01-18 13:30:00'),
	(13,7,11,2, 'We are retyping this absolutely - it needs to be vertically', 0, '2020-01-05 12:00:00', NULL, NULL),
	(14,4,6,3, 'Add another button by layout', 1, '2020-01-25 01:00:00', '2020-01-26 08:00:00', '2020-01-26 10:00:00'),
	(15,2,7,1, 'Remove unnecessary links nowhere', 0, '2020-02-20 11:00:00', NULL, NULL),
	(16,7,5,4, 'SEO - optimization', 1, '2020-02-03 13:00:00', '2020-02-03 13:00:00', '2020-02-03 13:20:00'),
	(17,8,6,1, 'Add phone to header', 0, '2020-01-19 14:00:00', '2020-01-20 21:00:00', NULL),
	(18,5,12,2, 'Change the login window to your personal account', 1, '2020-01-22 16:00:00', '2020-01-22 18:00:00', '2020-01-22 18:10:00'),
	(19,2,12,7, 'Redraw certificate block', 0, '2020-01-29 17:00:00', NULL, NULL),
	(20,10,11,6, 'Render gallery page', 1, '2020-02-21 07:00:00', '2020-02-21 09:00:00', '2020-02-21 10:00:00'),
	(21,8,11,7, 'Change background to darker', 1, '2020-02-04 10:00:00', '2020-02-04 13:00:00', '2020-02-04 17:00:00'),
	(22,8,12,6, 'Play with fonts', 0, '2020-02-14 11:00:00', NULL, NULL),
	(23,5,12,10, 'Calculate google budget for February', 1, '2020-01-30 18:00:00', '2020-02-03 09:00:00', '2020-02-03 12:00:00'),
	(24,7,11,8, 'Raise bids on old campaigns!', 0, '2020-02-16 19:00:00', '2020-02-17 10:00:00', NULL),
	(25,7,11,8, 'Clean up campaigns', 1,'2020-01-01 20:00:00','2020-01-05 08:00:00 ','2020-01-07 12:00:00'),
	(26,2,12,9, 'Check rates', 0, '2020-01-12 14:00:00', NULL, NULL),
	(27,3,12,8, 'Design a new campaign', 1, '2020-01-19 11:00:00', '2020-01-19 11:00:00', '2020-01-19 19:00:00'),
	(28,6,11,9, 'Reduce bids for new campaigns - eat a lot', 0, '2020-01-27 10:00:00', NULL, NULL),
	(29,3,12,12, 'Prepare TK for a new page', 1, '2020-02-23 18:00:00', '2020-02-23 20:00:00', '2020-02-24 20:00:00'),
	(30,4,11,11, 'Call the client and approve the estimate for the support', 1, '2020-02-02 10:00:00', '2020-02-05 08:00:00', '2020-02-05 09:00:00'),
	(31,1,12,12, 'Match layouts', 0, '2020-01-13 12:00:00', '2020-01-17 11:00:00', NULL);

UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `workers` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`department_id` int(10) unsigned NOT NULL,
	`name` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `workers` WRITE;

INSERT INTO `workers` (`id`, `department_id`, `name`)
VALUES
	(1,1,'Zach Johnson'),
	(2,1,'Justin Johnson'),
	(3,1,'Burt Kramer'),
	(4,1,'Carl Warren'),
	(5,1,'Dale Palmer'),
	(6,2,'Nate Peterson'),
	(7,2,'Heidi Carlos'),
	(8,3,'Peter Novak'),
	(9,3,'Martin Young'),
	(10,3,'James Chang'),
	(11,4,'Kate Hewlett'),
	(12,4,'Erin Zimmerman');

UNLOCK TABLES;
