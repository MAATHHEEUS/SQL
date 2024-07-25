create database Matheus_02_09_2022; -- CRIAR UM BANCO DE DADOS COM SEU NOME: NOME_02_09_2022

use Matheus_02_09_2022; -- Usa o database

create table FUNC_CADASTRO(-- CRIADO A SEGUINTE TABELA: FUNC_CADASTRO
COD_FUNC int primary key auto_increment,
NOME_FUNC varchar(40) not null,
DEPARTAMENTO varchar(40) not null,
FUNCAO varchar(40),
SALARIO decimal(10,2) not null default 1200.00
);

-- Inserir o dados
insert into FUNC_CADASTRO values (default, 'EDUARDO', 'CONTABILIDADE', 'CONTADOR', 5000),
(default, 'GISLENE', 'COMPRAS', 'ASSISTENTE DE COMPRAS', 1500),
(default, 'FÁTIMA', 'COMPRAS', 'COMPRADORA', 3000),
(default, 'FERNANDA', 'CONTABILIDADE', 'ASSISTENTE CONTABIL', 2000),
(default, 'MAYARA', 'CONTABILIDADE', 'ASSISTENTE CONTABIL', 2000),
(default, 'GERALDO', 'FISCAL', 'COORDENADOR FISCAL', 5000),
(default, 'JESSICA', 'FISCAL', 'ASSISTENTE FISCAL', 2000),
(default, 'ERIKA', 'RH', 'COORDENADOR RH', 5000),
(default, 'LUNARA', 'RH', 'ASSISTENTE DE RH', 2000),
(default, 'DOUGLAS', 'CONTAS A RECEBER', 'COORDENADOR CTNS RECEBER', 5000),
(default, 'CARLOS', 'CONTAS A RECEBER', 'ASSISTENTE CTNS RECEBER', 2000),
(default, 'ANDRÉ', 'CONTAS A PAGAR', 'COORDENADOR CTNS PAGAR', 5000),
(default, 'CAMILA', 'CONTAS A PAGAR', 'ASSISTENTE CTNS PAGAR', 2000),
(default, 'HEITOR', 'TI', '', 4500),
(default, 'MONICA', 'TI', '', 4500);

desc FUNC_CADASTRO; -- Estrutura da tabela

select * from FUNC_CADASTRO ORDER BY NOME_FUNC; -- Seleciona todas ordenando por nome

select avg(SALARIO) as MEDIA_SAL from FUNC_CADASTRO; -- Selecionando Média dos salários

select count(COD_FUNC) as QTND_FUNC from FUNC_CADASTRO; -- Seleciona Quantidade de funcionários

select sum(SALARIO) as SOMA_SAL, DEPARTAMENTO from FUNC_CADASTRO group by DEPARTAMENTO; -- Seleciona a soma de salários por departamento

select NOME_FUNC, FUNCAO, SALARIO from FUNC_CADASTRO where SALARIO between 1000 and 2500 order by NOME_FUNC; -- Seleciona funcionários com salário entre 1000 e 2500 ordenando pelo nome

select NOME_FUNC, max(SALARIO) as MAIOR_SAL from FUNC_CADASTRO; -- Seleciona o maior salário

select NOME_FUNC, min(SALARIO) as MENOR_SAL from FUNC_CADASTRO; -- Seleciona o menor salário

select distinct DEPARTAMENTO from FUNC_CADASTRO; -- Seleciona os departamentos mas sem repetir

select NOME_FUNC from FUNC_CADASTRO where FUNCAO = ''; -- Seleciona os funcionários que não tem função

select NOME_FUNC from FUNC_CADASTRO where DEPARTAMENTO in ('RH', 'COMPRAS'); -- Seleciona os funcionários que trabalham nos departamentos de compras e RH

select NOME_FUNC from FUNC_CADASTRO where NOME_FUNC like '%A'; -- Seleciona os funcionários que o nome termina com a letra 'a'

update FUNC_CADASTRO set SALARIO = 2500 where NOME_FUNC = 'GISLENE' limit 1; -- Atualiza o salário da Gislene

update FUNC_CADASTRO set SALARIO = (SALARIO*1.1) where SALARIO <= 2000; -- Aplica um ajuste de 10% no salário dos funcionários que ganham menos o 2000

alter table FUNC_CADASTRO add column DT_ADMISSAO date; -- Adiona a coluna Data de Admissão do tipo date

update FUNC_CADASTRO set DT_ADMISSAO = '2019-04-02' where NOME_FUNC = 'EDUARDO' limit 1; -- Atualiza a data de admissão do Eduardo

update FUNC_CADASTRO set DT_ADMISSAO = '2019-04-02' where NOME_FUNC = 'FERNANDA' limit 1;-- Atualiza a data de admissão da Fernanda

update FUNC_CADASTRO set DT_ADMISSAO = '2019-04-02' where NOME_FUNC = 'MAYARA' limit 1;-- Atualiza a data de admissão da Mayara

update FUNC_CADASTRO set DT_ADMISSAO = '2018-04-02' where NOME_FUNC = 'DOUGLAS' limit 1;-- Atualiza a data de admissão do Douglas

update FUNC_CADASTRO set DT_ADMISSAO = '2018-04-02' where NOME_FUNC = 'CARLOS' limit 1;-- Atualiza a data de admissão do Carlos

update FUNC_CADASTRO set DT_ADMISSAO = '2022-09-02' where NOME_FUNC = 'HEITOR' limit 1;-- Atualiza a data de admissão do Heitor

update FUNC_CADASTRO set DT_ADMISSAO = '2022-09-02' where NOME_FUNC = 'MONICA' limit 1;-- Atualiza a data de admissão da Monica
