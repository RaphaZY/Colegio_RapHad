SELECT `mat`.`materia`, `t`.`turma`, `a`.*
FROM `alunos` AS `a`
    
INNER JOIN `matriculas` AS `m`
	ON `a`.`idalunos` = `m`.`alunos_idalunos`
    
INNER JOIN `turmas` AS `t`
	ON `m`.`turmas_idturmas` = `t`.`idturmas` 
    
INNER JOIN `grade` AS `g`
	ON `t`.`idturmas` = `g`.`turmas_idturmas` 
    
INNER JOIN `materias` AS `mat`
	ON `mat`.`idmaterias` = `g`.`materias_idmaterias`
    
WHERE `mat`.`idmaterias` = 1 
	OR `mat`.`idmaterias` = 2 
	OR `mat`.`idmaterias` = 3 
ORDER BY `materia`,`nome`