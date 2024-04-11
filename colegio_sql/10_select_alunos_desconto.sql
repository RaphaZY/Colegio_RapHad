SELECT `m`.`idmatriculas`,`t`.`turma`,`a`.`idalunos`,`a`.`nome`,`m`.`mensalidade`,`m`.`desconto`
FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `m`
	ON `a`.`idalunos` = `m`.`alunos_idalunos`
INNER JOIN `turmas` AS `t`
	ON `m`.`turmas_idturmas` = `t`.`idturmas`
WHERE `m`.`desconto` < 25.00
ORDER BY `nome`;