CREATE SCHEMA IF NOT EXISTS raw;

CREATE SCHEMA IF NOT EXISTS analytics;

CREATE TABLE IF NOT EXISTS raw.mercado (
    
    invoice_id VARCHAR(20) PRIMARY KEY,
    branch VARCHAR(10),
    city VARCHAR(50),
    customer_type VARCHAR(30),
    gender VARCHAR(30),
    product_line VARCHAR(120),
    unit_price NUMERIC(10, 2),
    quantity INTEGER,
    tax_5_percent NUMERIC(12, 4),
    total NUMERIC(12, 4),
    date DATE,
    time TIME,
    payment VARCHAR(35),
    cogs NUMERIC(15, 6),
    gross_margin_percentage NUMERIC(12, 8),
    gross_income NUMERIC(12, 4),
    rating NUMERIC(5, 2)
);

CREATE TABLE IF NOT EXISTS analytics.mercado(
    id_Venda VARCHAR(50) PRIMARY KEY,
    Filial VARCHAR(10) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Tipo_cliente VARCHAR(50),
    Genero VARCHAR(20),
    Linha_produto VARCHAR(150) NOT NULL,
    Preco_unitario NUMERIC(10, 2) CHECK (Preco_unitario >= 0),
    Quantidade INTEGER CHECK (Quantidade >= 0),
    Imposto NUMERIC(10, 2) CHECK (Imposto >= 0),
    Valor_total NUMERIC(12, 2) CHECK (Valor_total >= 0),
    data_venda DATE,
    hora_venda TIME,
    forma_pagamentos VARCHAR(50),
    custo_mercadoria NUMERIC(12, 2) CHECK (custo_mercadoria >= 0),
    margem_percentual NUMERIC(10, 2),
    receita_bruta NUMERIC(12, 2) CHECK (receita_bruta >= 0),
    avaliacao NUMERIC(4, 2) CHECK (avaliacao BETWEEN 0 AND 10)
);