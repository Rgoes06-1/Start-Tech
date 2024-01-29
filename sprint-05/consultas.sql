-- Consulta de número 03
SELECT categoria.id AS id_categoria,
categoria.nome AS categoria,
produto.id AS id_produto,
produto.nome AS produto,
produto.preco AS preco
FROM categoria
INNER JOIN 
produto ON categoria.id = produto.categoria_id ORDER BY categoria.nome, 
produto.nome;


-- Consulta de número 04
SELECT
    cliente.nome AS cliente,
    categoria.nome AS categoria,
    produto.nome AS produto,
    produto.preco AS preco_unitario,
    item_pedido.quantidade AS quantidade,
    pedido.DATA AS datas
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.cliente_id
INNER JOIN item_pedido ON pedido.id = item_pedido.pedido_id
INNER JOIN produto ON item_pedido.produto_id = produto.id
INNER JOIN categoria ON categoria.id = produto.categoria_id
ORDER BY cliente.nome, categoria.nome;


-- Consulta de número 05
SELECT 
    categoria.nome,
    sum(item_pedido.preco_unitario * item_pedido.quantidade) AS total
from categoria 
INNER JOIN produto ON categoria.id = produto.categoria_id
INNER JOIN item_pedido ON item_pedido.produto_id = produto.id
GROUP BY categoria.nome
ORDER BY sum(item_pedido.preco_unitario * item_pedido.quantidade) DESC;

--  Consulta de número 06
SELECT 
    count(item_pedido.id) AS pedidos_realizados,
    sum(item_pedido.quantidade) AS produtos_vendidos,
    min(item_pedido.preco_unitario) AS pedido_mais_barato,
    max(item_pedido.preco_unitario) AS pedido_mais_caro,
    sum(item_pedido.preco_unitario * item_pedido.quantidade) AS montante_vendido
FROM item_pedido;