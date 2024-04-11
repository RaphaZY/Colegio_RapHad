SELECT `p`.`idprofessores`,`p`.`nome`, `m`.`materia`
FROM `professores` AS `p`
INNER JOIN `materias` AS `m`
	ON `p`.`materias_idmaterias` = `m`.`idmaterias`
INNER JOIN `grade` AS `g`
	ON `g`.`materias_idmaterias` = `m`.`idmaterias`
INNER JOIN `turmas` AS `t`
	ON `t`.`idturmas` = `g`.`turmas_idturmas`
WHERE `t`.`idturmas` = 4
ORDER BY `nome`;