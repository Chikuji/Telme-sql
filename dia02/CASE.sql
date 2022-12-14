-- Databricks notebook source
SELECT * 
FROM silver_olist.cliente
LIMIT 5

-- COMMAND ----------

SELECT *,

        CASE 
          WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminence'
          WHEN descUF = 'PR' THEN 'paranaence'
          ELSE 'outros'
        END as descNacionalidade
        
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,

        -- coluna nova
        CASE 
          WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminence'
          WHEN descUF = 'PR' THEN 'paranaence'
          ELSE 'outros'
        END as descNacionalidade,
        
        -- outra coluna nova
        CASE 
          WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
          ELSE 'Não tem são no nome'
        END as descCidadeSao
        
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *
FROM silver_olist.vendedor

-- COMMAND ----------

SELECT *,
        
        CASE 
          WHEN descUF in ('SP','RJ','MG','ES') THEN 'sudeste'
          ELSE 'outros'
        END as descRegiao
        
FROM silver_olist.vendedor
