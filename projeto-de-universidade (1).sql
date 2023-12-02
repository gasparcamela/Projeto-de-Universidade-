CREATE TABLE `Aluno` (
	`id_Aluno` int NOT NULL AUTO_INCREMENT,
	`id_professor` int NOT NULL,
	`Professor_departamento` int NOT NULL,
	`id_Curso` int NOT NULL,
	PRIMARY KEY (`id_Aluno`)
);

CREATE TABLE `Departamento` (
	`id_departamento` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(45) NOT NULL,
	`campus` varchar(45) NOT NULL,
	PRIMARY KEY (`id_departamento`)
);

CREATE TABLE `Professor` (
	`id_professor` int NOT NULL AUTO_INCREMENT,
	`id_departamento` int NOT NULL,
	`id_Aluno` int NOT NULL,
	PRIMARY KEY (`id_professor`)
);

CREATE TABLE `Matricula` (
	`id_Aluno` int NOT NULL AUTO_INCREMENT,
	`id_Disciplina` int NOT NULL
);

CREATE TABLE `Curso` (
	`id_Curso` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(45) NOT NULL,
	`id_disciplina` int NOT NULL,
	`id_prerequisito` int NOT NULL,
	PRIMARY KEY (`id_Curso`)
);

CREATE TABLE `Disciplina` (
	`id_disciplina` int NOT NULL AUTO_INCREMENT,
	`id_curso` INT NOT NULL,
	`id_prerequisito` int NOT NULL,
	PRIMARY KEY (`id_disciplina`)
);

CREATE TABLE `Pré-Requisito` (
	`id_prerequisito` int NOT NULL AUTO_INCREMENT,
	`id_disciplina` int NOT NULL,
	`id_Curso` int NOT NULL,
	PRIMARY KEY (`id_prerequisito`)
);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk0` FOREIGN KEY (`id_professor`) REFERENCES `Professor`(`id_professor`);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk1` FOREIGN KEY (`id_Curso`) REFERENCES `Curso`(`id_Curso`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk0` FOREIGN KEY (`id_departamento`) REFERENCES `Departamento`(`id_departamento`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk1` FOREIGN KEY (`id_Aluno`) REFERENCES `Aluno`(`id_Aluno`);

ALTER TABLE `Matricula` ADD CONSTRAINT `Matricula_fk0` FOREIGN KEY (`id_Aluno`) REFERENCES `Aluno`(`id_Aluno`);

ALTER TABLE `Disciplina` ADD CONSTRAINT `Disciplina_fk0` FOREIGN KEY (`id_curso`) REFERENCES `Curso`(`id_Curso`);

ALTER TABLE `Pré-Requisito` ADD CONSTRAINT `Pré-Requisito_fk0` FOREIGN KEY (`id_disciplina`) REFERENCES `Disciplina`(`id_disciplina`);

ALTER TABLE `Pré-Requisito` ADD CONSTRAINT `Pré-Requisito_fk1` FOREIGN KEY (`id_Curso`) REFERENCES `Curso`(`id_Curso`);








