---Insert---
INSERT INTO cliente(nome, telefone, email, cpf)
VALUES
('John Hebert', '6198277-9900', 'johnhebert@gmail.com', '00055544426'),
('Andressa Andrade', '6199416-5588', 'andressaandrade@gmail.com', '11155522265'),
('Aurora Andrade', '6199438-6955', 'auroraandrade@gmail.com', '22244455526');


INSERT INTO console(nome, modelo, garantia, id_cliente)
VALUES
('PS5', 'PRO', '1 ANO', 1),
('XBOX', 'SLIM', '6 MESES', 2),
('PS5', 'ORIGINAL', '1 ANO', 3);


INSERT INTO vendedor(nome, crmv)
VALUES
('Funcionario Noha', 'GO1548'),
('Funcionario Andrade', 'GO2545'),
('Funcionario Hebert', 'GO7025');


INSERT INTO consulta(data, garantia, estoque, modelo, id_console, id_vendedor)
VALUES
('2025-05-30', '1 ANO', '30', 'PRO',1, 1),
('2025-06-26', '6 meses', '25', 'slim',2, 2),
('2025-04-25', '1 ANO', '10', 'Original',3, 3);


INSERT INTO garantia(data, estoque)
VALUES
('2026-05-30', '30'),
('2025-12-26', '25'),
('2026-04-25', '10');


INSERT INTO estoque(nome, modelo, quatidade)
VALUES
('PS5', 'PRO', '30'),
('XBOX', 'SLIM', '25'),
('PS5', 'ORIGINAL', '10');


INSERT INTO modelo(nome, estoque)
VALUES
('PS5 PRO', '30'),
('XBOX SLIM', '25'),
('PS5 ORIGINAL', '10');
