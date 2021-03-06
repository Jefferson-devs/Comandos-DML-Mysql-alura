
USE vendas_sucos;

SELECT * FROM sucos_vendas.tabela_de_produtos;

SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,
EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);
/* NAO PEGA ITENS DUPLICADOS*/

INSERT INTO produtos
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,
SABOR,TAMANHO, EMBALAGEM, PRECO_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);
/* TEM QUE ESTAR NA MESMA ORDEM QUE A TABELA A ESQUERDA*/

SELECT * FROM produtos;
