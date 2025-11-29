BEGIN TRANSACTION;


Create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT(15) NOT NULL,
    email TEXT,
    cpf TEXT(11) NOT NULL
);

-------tabela console-------
create table console (
    id_console INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(50) NOT NULL,
    modelo TEXT(50) NOT NULL,
    garantia TEXT(100),
    id_cliente INTERGER,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-------Vendedor-------
create table vendedor (
    id_vendedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    crmv TEXT(10) NOT NULL
);

-------Consulta-------
create table consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT,
    garantia TEXT(100),
    estoque INTEGER,
    modelo TEXT(50),
    id_console INTEGER,
    id_vendedor INTEGER,
    FOREIGN KEY (id_console) REFERENCES console(id_console),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

-------Garantia-------
create table garantia (
    id_garantia INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT,
    estoque INTEGER,
    FOREIGN KEY (id_garantia) REFERENCES consulta(id_consulta)
);

-------Estoque-------
create table estoque (
    id_estoque INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(50),
    modelo TEXT(50),
    quatidade INTEGER,
    FOREIGN KEY (id_estoque) REFERENCES consulta(id_consulta)
);

-------Modelo-------
create table modelo (
    id_modelo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(50),
    estoque INTEGER,
    FOREIGN KEY (id_modelo) REFERENCES consulta(id_consulta) 
);
