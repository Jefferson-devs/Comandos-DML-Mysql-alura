
SELECT * FROM produtos;

/* where é a 'condição', em que campo será modificado a informação */
/* = 5 Preço do novo valor a ser atualizado*/
UPDATE produtos SET PRECO_LISTA = 5 WHERE CODIGO = '1000889';

/*Alterando ao mesmo tempo diversos campos*/
UPDATE produtos SET EMBALAGEM = 'PET', TAMANHO = '1 Litro', DESCRITOR = 'Sabor da Montanha - 1 Litro - Uva' 
WHERE CODIGO = '1000889';

/*Selecionar todos os itens do mesmo sabor*/
SELECT * FROM produtos WHERE SABOR = 'Maracujá';

/*Pegando o valor atual e aumentando 10% com o * */
/* Aplica a condição WHERE a todos que tiverem o mesmo sabor, neste caso o maracuja*/

UPDATE produtos SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'Maracujá';