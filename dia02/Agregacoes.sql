-- Databricks notebook source
SELECT *
FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*) as nrLihasNNulas-- linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

    count(*) as nrLihasNNulas, 
    count(idCliente) as nrIdClientes
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

    count(*) AS nrLihasNNulas, 
    count(codCep) AS nrCep,
    count(DISTINCT codCep) AS nrCepDistintos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

    count(*) as nrLihasNNulas, 
    count(idCliente) as nrIdClientes,
    count(DISTINCT idCliente) as nrIdClientesDistintos,
    count(DISTINCT idClienteUnico) as nrIdClientesUDistintos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*)
FROM silver_olist.cliente
WHERE descCidade = 'presidente prudente'

-- COMMAND ----------

SELECT count(*)
FROM silver_olist.cliente
WHERE descCidade in ( 'presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
    count(*) AS qtLinhas,
    count(DISTINCT idCliente) AS qtCliente,
    count(DISTINCT idClienteUnico) AS qtClienteUnico
FROM silver_olist.cliente
WHERE descCidade in ( 'presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT *
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 
      ROUND(AVG(vlPreco),2) AS avgPreco, -- media da coluna vlProduto
      
      MAX(vlPreco) AS maxPreco,
      PERCENTILE(vlPreco, 0.5) AS medianPreco, 
      MIN(vlPreco) AS minPreco,
      
      AVG(vlFrete) AS avgFrete,
      MAX(vlFrete) AS maxFrete,
      MIN(vlFrete) AS minFrete
    
      
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 
      descUF AS UF, 
      count(*) AS qtCliente
FROM silver_olist.cliente
GROUP BY descUF

-- COMMAND ----------

SELECT 
      descUF AS UF, 
      count(*) AS qtCliente,
      count(DISTINCT idClienteUnico) AS qtClienteDistinto,
      count(*) - count(DISTINCT idClienteUnico) AS qtDiferenca
FROM silver_olist.cliente
GROUP BY descUF
