SELECT `mat`.`materia`, `t`.`turmas`, `a`.*
	FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `m`
	ON `m`.`alunos_idalunos` = `a`.`idalunos`
INNER JOIN `grade` AS `g`
	ON `g`.`turmas_idturmas` = `t`.`idturmas` AND `g`.`materias_idmaterias` = `m`
INNER JOIN `turmas` AS `t`
	ON `m`.`turmas_idturmas` = `t`.`idturmas`