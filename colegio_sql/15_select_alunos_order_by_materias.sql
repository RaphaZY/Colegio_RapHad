SELECT `ma`.`materia`,`a`.*
FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `m`
	ON `a`.`idalunos` = `m`.`alunos_idalunos`
INNER JOIN `turmas` AS `t`
	ON `m`.`turmas_idturmas` = `t`.`idturmas`
INNER JOIN `grade` AS `g`
	ON `t`.`idturmas` = `g`.`turmas_idturmas`
INNER JOIN `materias` AS `ma`
	ON `g`.`materias_idmaterias` = `ma`.`idmaterias`
ORDER BY `materia`,`nome`