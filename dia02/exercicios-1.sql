-- Databricks notebook source
SELECT *
FROM silver_olist.cliente

-- COMMAND ----------

-- 01 selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade ='sao paulo'

-- COMMAND ----------

SELECT count(idCliente)
FROM silver_olist.cliente
WHERE descCidade ='sao paulo'

-- COMMAND ----------

-- 02 selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF ='SP'

-- COMMAND ----------

SELECT descCidade, count(idCliente)
FROM silver_olist.cliente
WHERE descUF ='SP'
GROUP BY descCidade

-- COMMAND ----------

-- 03 selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- 04 selecione todos os produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto
WHERE descCategoria in ('perfumaria', 'bebes')
AND vlAlturaCm > 5
