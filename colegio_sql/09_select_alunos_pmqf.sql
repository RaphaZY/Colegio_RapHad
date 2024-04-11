SELECT `m`.*, `t`.`turma`,`a`.*
FROM `alunos`AS `a`
INNER JOIN `matriculas` AS `mat`
	ON `a`.`idalunos` = `mat`.`alunos_idalunos`
INNER JOIN `turmas` AS `t`
	ON `mat`.`turmas_idturmas` = `t`.`idturmas`
INNER JOIN `grade` AS `g`
	ON `t`.`idturmas` = `g`.`turmas_idturmas`
INNER JOIN `materias` AS `m`
	ON `g`.`materias_idmaterias` = `m`.`idmaterias`
WHERE `m`.`idmaterias` = 1 
	OR `m`.`idmaterias` = 2 
	OR `m`.`idmaterias` = 5 
	OR `m`.`idmaterias` = 6
ORDER BY `materia`, `nome`;