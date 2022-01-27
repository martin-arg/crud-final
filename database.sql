DROP database IF EXISTS `banco`;
create database `banco`;
use `banco`;

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `apellido` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `usuarios` (`nombre`,`apellido`,`phone`,`email`,`password`)
VALUES
  ("Chelsea","Best","1-657-851-8384","mus.proin@yahoo.net","GTT57ABJ2KD"),
  ("Patricia","Zamora","363-5752","quam.elementum@icloud.com","LXA66WYY4UU"),
  ("Scarlet","Pacheco","517-7418","curae@outlook.ca","MIM20LVZ0VU"),
  ("Minerva","Hutchinson","880-8704","nulla.integer@aol.org","GKL82GIC7DV"),
  ("Melinda","Ball","1-132-319-6013","dui.cum@yahoo.com","XBG58HWF3TF");

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `apellido` varchar(255) default NULL,
  `telefono` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `compania` varchar(255),
  `usuario` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `clientes` (`nombre`,`apellido`,`telefono`,`email`,`compania`,`usuario`)
VALUES
  ("Chelsea","Best","1-657-851-8384","mus.proin@yahoo.net","Feugiat Sed Nec Company",3),
  ("Patricia","Zamora","363-5752","quam.elementum@icloud.com","Non Enim Commodo Associates",3),
  ("Scarlet","Pacheco","517-7418","curae@outlook.ca","Ac Urna Inc.",1),
  ("Minerva","Hutchinson","880-8704","nulla.integer@aol.org","Mauris Non Industries",4),
  ("Melinda","Ball","1-132-319-6013","dui.cum@yahoo.com","Lacinia Associates",3);