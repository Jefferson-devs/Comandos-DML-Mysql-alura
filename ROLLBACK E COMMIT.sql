/* Inicia a transação */
START TRANSACTION;

SELECT * FROM VENDEDORES;

/* Aumenta em 15% a comissão de todos da lista ( sem o where que é a condição, engloba TODOS )*/
UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

/* Finaliza a transação e volta tudo como estava antes*/
ROLLBACK;

/* Confirma a alteração feita */
COMMIT;

START TRANSACTION;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99999',
'JOAO DA SILVA',
'Icaraí',
0.08,
'2012-01-15',
0);

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99998',
'JOAO DA SILVA2',
'Icaraí',
0.08,
'2012-01-15',
0);

ROLLBACK;

COMMIT;

