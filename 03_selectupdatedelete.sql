----Consulta+ Console+vendedor+cliente

Select
    c.id_consulta,
    c.data AS data_consulta,
    con.nome AS nome_console,
    con.modelo,
    con.garantia,
    cli.nome AS nome_cliente,
    cli.telefone AS telefone_cliente,
    v.nome AS nome_vededor
FROM consulta c                    --tabela principal
JOIN console con
    ON con.id_console = c.id_console        --join:consulta + console
JOIN cliente cli
    ON cli.id_cliente = con.id_cliente        --join:pet + cliente
JOIN vendedor v
    ON v.id_vendedor = c.id_vendedor
    

--Filtrar modelo--
Select
    con.nome AS nome_console,
    con.modelo,
    c.data AS data_consulta
FROM consulta c
JOIN console con
    ON con.id_console = c.id_console
Where con.modelo = 'PRO';

Select
UPPER(nome) AS nome_console,
LOWER(modelo) AS mode_console
FROM console;

--Delete + Update

Select DISTINCT nome
From vendedor;

delete From vendedor
where id_vendedor = 4;

delete From vendedor
where id_vendedor = 5;

Update vendedor
set nome = 'funcionario Coutinho'
where id_vendedor = 1;

Update vendedor
set nome = 'funcionario Noha'
where id_vendedor = 3;

--ordernar

Select * From console
Order BY nome;

Select * From consulta
Order BY data ASC;

Select * From consulta
Order BY data DESC;

--Quantas vendas o vendedor fez

Select 
    v.nome AS Vendedor,
    COUNT(c.id_consulta) AS total_vedas
FROM consulta c
JOIN vendedor v ON v.id_vendedor = c.id_vendedor
Order BY v.nome;

--

Select 
    v.nome AS Vendedor,
    COUNT(c.id_consulta) AS total_vedas
FROM consulta c
JOIN vendedor v ON v.id_vendedor = c.id_vendedor
GROUP BY v.nome
HAVING COUNT(c.id_consulta) <3
ORDER BY v.nome;
