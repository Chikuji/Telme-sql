-- Databricks notebook source
-- leia-se: filtre os dados somente da situação delivered

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'delivered'
--LIMIT 100

-- COMMAND ----------

SELECT descSituacao, count(idPedido) as qtSituacao
FROM silver_olist.pedido
GROUP BY descSituacaoembalou
ORDER BY qtSituacao
--LIMIT 100




-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'
--LIMIT 100

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018' 
--LIMIT 100

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao in ('shipped' ,'canceled')
AND year(dtPedido) = '2018'

--LIMIT 100

-- COMMAND ----------

SELECT *,
        datediff(dtEstimativaEntrega,dtAprovado)

FROM silver_olist.pedido
WHERE descSituacao  IN ('shipped' ,'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega,dtAprovado) > 30
--LIMIT 100
