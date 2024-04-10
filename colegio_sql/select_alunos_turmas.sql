SELECT `t`.`idturmas`,`t`.`turma`, `a`.*
FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `m`
	ON `m`.`alunos_idalunos` = `a`.`idalunos`
INNER JOIN `turmas` AS `t`
	ON `t`.`idturmas` = `m`.`turmas_idturmas`
GROUP BY `nome`
ORDER BY `idturmas`, `idalunos`