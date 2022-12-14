-- Databricks notebook source
-- leia-se: seleciona TUDO da tabela pedido

SELECT * FROM silver_olist.pedido


-- COMMAND ----------

-- leia-se: Conta a quantidade de ids

SELECT count(idPedido) FROM silver_olist.pedido

-- COMMAND ----------

-- leia-se: seleciona a coluna idPedido e descPedido

SELECT  idPedido, 
        descSituacao 

FROM silver_olist.pedido

-- COMMAND ----------

--leia-se: agrupa os diferentes tipos de descSituação

SELECT descSituacao 
FROM silver_olist.pedido
GROUP BY descSituacao

-- COMMAND ----------

-- leia-se: seleciona as colunas idPedido, descPedido e dtPedido ordenado ascendente pela data e as 5 primeiras linhas
SELECT  idPedido,
        descSituacao,
        dtPedido
FROM silver_olist.pedido
ORDER BY dtPedido asc
LIMIT 5

-- COMMAND ----------

-- leia-se: seleciona as colunas idPedido, descPedido e dtPedido ordenado descendente pela data e as 5 primeiras linhas.

SELECT  idPedido,
        descSituacao,
        dtPedido
FROM silver_olist.pedido
ORDER BY dtPedido desc
LIMIT 5

-- COMMAND ----------

-- leia-se: use a função datediff para calcula a diferença entre datas.

SELECT  idPedido,
        dtPedido,
        dtEnvio,
        dtEntregue,
        dtEstimativaEntrega,
        datediff(dtEstimativaEntrega,dtEntregue) as qtDias
        
FROM silver_olist.pedido
ORDER BY dtPedido asc
LIMIT 100

-- COMMAND ----------


