SELECT `mat`.`idmatriculas`, `t`.`turma`,`a`.`idalunos`,`a`.`nome`,`a`.`cidade`,`mat`.`mensalidade`,`mat`.`desconto`

FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `mat`
	ON `a`.`idalunos` = `mat`.`alunos_idalunos`
INNER JOIN `turmas` AS `t`
	ON `t`.`idturmas` = `mat`.`turmas_idturmas`

WHERE `a`.`cidade` NOT LIKE '%Sao Joao Nepomuceno%' AND `mat`.`desconto` > 25