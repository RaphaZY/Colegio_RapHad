SELECT `p`.`nome`, `mat`.`materia`,`t`.`turma`,`a`.`idalunos`,`a`.`nome`
FROM `alunos` AS `a`

INNER JOIN `matriculas` AS `m`
	ON `a`.`idalunos` = `m`.`alunos_idalunos`
    
INNER JOIN `turmas` AS `t`
	ON `m`.`turmas_idturmas` = `t`.`idturmas`

INNER JOIN `grade` AS `g`
	ON `t`.`idturmas` = `g`.`turmas_idturmas`
    
INNER JOIN `materias` AS `mat`
	ON `g`.`materias_idmaterias` = `mat`.`idmaterias`

INNER JOIN `professores` AS `p`
	ON `mat`.`idmaterias` = `p`.`materias_idmaterias`

ORDER BY `p`.`nome`, `a`.`nome`