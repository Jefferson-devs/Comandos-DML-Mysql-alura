USE vendas_sucos;

SELECT * FROM clientes;

/* INSERIR DADOS NA SUCOS VENDAS SELECIONANDO A TABELA QUE SERÁ UTILIZADA PELO PONTO "."*/
SELECT * FROM sucos_vendas.tabela_de_clientes;
/*sucos_vendas.tabela_de_clientes; TABELA ORIGEM*/

/* ALTERANDO NOME DE TABELAS COM O "AS" NOME ANTES, NOME ATUAL ( VOLUME DE COMPRA ORIGEM, VOLUME_COMPRA DESTINO*/

SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP,
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO,
VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes WHERE CPF
NOT IN (SELECT CPF FROM CLIENTES);

INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP,
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO,
VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes WHERE CPF
NOT IN (SELECT CPF FROM CLIENTES);

SELECT * FROM CLIENTES;


