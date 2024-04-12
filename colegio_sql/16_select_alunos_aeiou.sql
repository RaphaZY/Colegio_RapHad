SELECT `a`.* FROM `alunos` AS `a`
	WHERE `a`.`nome` LIKE '%A%' AND `a`.`nome` LIKE '%E%' AND `a`.`nome` LIKE '%I%' AND `a`.`nome` LIKE '%O%' AND `a`.`nome` LIKE '%U%'
	ORDER BY `nome`