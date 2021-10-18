
/* timestamp data com hora/minuto/segundo */
CREATE TABLE TAB_PADRAO
(ID INT AUTO_INCREMENT, /* Sequencia numerica */
DESCRITOR VARCHAR(20), /* Esse campo não tem um padrão para o seu valor, logo ele será obrigatorio ser preenchido */
ENDERECO VARCHAR(100) NULL, /* Se não por nada, ele será nulo */
CIDADE VARCHAR(50) DEFAULT 'Rio de Janeiro', /* Se não por nada no insert, o valor dele sempre será Rio ... */
DATA_CRIACAO TIMESTAMP DEFAULT CURRENT_TIMESTAMP(), /* Essa função fornece a hora e data do computador */
PRIMARY KEY (ID));

/* Se não especificar os outros campos, ele segue as regras da criação da tabela */
INSERT INTO TAB_PADRAO (DESCRITOR, ENDERECO, CIDADE, DATA_CRIACAO)
VALUES ('CLIENTE X', 'RUA PROJETADA A', 'SÃO PAULO', '2019/01-01');

SELECT * FROM TAB_PADRAO;

INSERT INTO TAB_PADRAO (DESCRITOR) VALUES ('CLIENTE Y');