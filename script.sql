-- Criando a tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INTEGER NOT NULL
);

-- Criando a tabela de pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo produtos
INSERT INTO produtos (id, nome, preco, estoque) VALUES (1, 'Livro UFMS', 39.90, 10);
INSERT INTO produtos (id, nome, preco, estoque) VALUES (2, 'Livro Ambiental', 49.90, 5);
INSERT INTO produtos (id, nome, preco, estoque) VALUES (3, 'Livro Economia', 29.90, 8);

-- Inserindo pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (1, 1, 2, '2025-05-06');
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (2, 2, 1, '2025-05-06');
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (3, 3, 3, '2025-05-06');
