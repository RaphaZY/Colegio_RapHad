SELECT `p`.`idprofessores`,`p`.`nome`,`m`.`materia`
FROM `professores` AS `p`

INNER JOIN `materias` AS `m`
	ON `p`.`materias_idmaterias` = `m`.`idmaterias`  
INNER JOIN `grade` AS `g`
	ON `m`.`idmaterias` = `g`.`materias_idmaterias`
INNER JOIN `turmas` AS `t`
	ON `g`.`turmas_idturmas` = `t`.`idturmas`

WHERE `idturmas` = 3 AND `idmaterias` = 1 OR `idmaterias` = 2
GROUP BY `idprofessores`