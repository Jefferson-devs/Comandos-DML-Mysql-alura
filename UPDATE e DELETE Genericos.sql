CREATE TABLE `produtos2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRITOR` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANHO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(50) DEFAULT NULL,
  `PRECO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
);

SELECT * FROM produtos2;

/*Transfere tudo que tem em produtos, para produtos 2*/
INSERT INTO produtos2
SELECT * FROM produtos;

/*Altera o valor de todos os itens da lista para o valor de 8$*/
UPDATE produtos2 SET preco_lista = 8;

/*Deleta a tabela*/
DELETE FROM produtos2;