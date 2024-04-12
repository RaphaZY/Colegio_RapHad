SELECT `a`.`idalunos`,`a`.`nome`,`m`.`mensalidade`,`m`.`desconto`, `m`.`mensalidade` - `m`.`desconto` AS `vlr_liquido`
FROM `alunos` AS `a`
INNER JOIN `matriculas` AS `m`
	ON `a`.`idalunos` = `m`.`alunos_idalunos`
ORDER BY `nome`;