SELECT SUM(`m`.`mensalidade`) AS `vlr_bruto`, SUM(`m`.`desconto`) AS `vlr_descontos`, SUM(`m`.`mensalidade`) - SUM(`m`.`desconto`) AS `vlr_liquido`
FROM `matriculas` AS `m`