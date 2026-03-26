USE bancosenac;

#liste todas as vendas da tabela
SELECT * FROM vendas;

#mostre apenas os produtos da categoria informática
SELECT * FROM vendas
WHERE categoria = "informatica";

#liste todas as vendas realizadas no estado do RJ
SELECT * FROM vendas
WHERE cidade = "Rio de Janeiro";

#mostre as vendas com valor_unitario maior que 500
SELECT produto, valor_unitario FROM vendas
HAVING valor_unitario > 500;

#liste as vendas do cliente Ana Souza
SELECT * FROM vendas
WHERE cliente = "Ana Souza";

#mostre apenas as vendas da categoria vestuário no estado PR
SELECT * FROM vendas
WHERE estado = "PR";


#Liste produto, categoria e valor_unitario das vendas do estado SP.
SELECT produto, categoria, valor_unitario FROM vendas
WHERE cidade = "São Paulo";

#Para cada venda, mostre o valor total da venda (valor_unitario * quantidade).
SELECT produto, SUM(valor_unitario * quantidade) AS Valor_Vendido
FROM vendas
GROUP BY produto
ORDER BY Valor_Vendido
DESC;

#Liste produto, cliente e valor total apenas das vendas com quantidade maior que 1
SELECT produto, valor_unitario, quantidade, (valor_unitario * quantidade) AS Valor_Venda
from vendas
WHERE quantidade > 1;

#Mostre todas as vendas cujo valor total seja maior que 1000
SELECT data, produto, categoria, (valor_unitario * quantidade) AS Valor_Total, cliente, cidade, estado
from vendas
HAVING Valor_Total > 1000;

#Liste as vendas da categoria Eletrônicos mostrando o valor total
SELECT data, produto, categoria, (valor_unitario * quantidade) AS Valor_Total, cliente, cidade, estado
from vendas
WHERE categoria = "Eletrônicos";

#Mostre apenas as vendas em que o valor total é maior que 2000
SELECT data, produto, categoria,(valor_unitario * quantidade) AS Valor_Total, cliente, cidade, estado
from vendas
HAVING Valor_Total > 2000;

#Mostre o total vendido (valor total) por categoria
SELECT categoria, SUM(valor_unitario * quantidade) AS Valor_Total
from vendas
GROUP BY categoria;

















