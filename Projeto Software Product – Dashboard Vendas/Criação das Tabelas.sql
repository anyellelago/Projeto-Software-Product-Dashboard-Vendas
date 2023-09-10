-- Criação do banco:
create database powerquey;

-- Criando tabela de Clientes
create table clientes(
	ID_CLINETE varchar(32) unique not null,
    NM_CLIENTE varchar(32) unique not null,
    SEGMENTO varchar(32),
    CIDADE varchar(32),
    ESTADO varchar(32),
    PAIS varchar(32),
    MERCADO varchar(32),
    REGIAO varchar(32)
);

-- Criando tabela de Pedidos
create table pedidos(
	ID_PEDIDO varchar(32) unique not null,
    DT_PEDIDO date,
    DT_ENVIO date,
    MODO_ENVIO varchar(32),
    PRIORIDADE_PEDIDO varchar(32)
);

-- Criando tabela de Produtos
create table produtos(
	ID_PRODUTO varchar(32) unique not null,
    CATEGORIA varchar(32),
    SUB_CATEGORIA varchar(32),
    NM_PRODUTO varchar(100)
);
-- Criando tabela de Vendas
create table vendas(
	PEDIDO varchar(32),
    CLINETE varchar(32),
    PRODUTO varchar(32),
    VALOR_VENDA varchar(32),
    QUANTIDADE integer,
    VALOR_ENVIO varchar(32)
);

select * from clientes;
select * from pedidos;
select * from produtos;
select * from vendas;