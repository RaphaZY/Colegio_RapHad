SELECT `t`.`turma`,`a`.*
FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `m`
	ON `a`.`idalunos` = `m`.`alunos_idalunos`
INNER JOIN `turmas` AS `t`
	ON `m`.`turmas_idturmas` = `t`.`idturmas`
ORDER BY `turma`, `nome`