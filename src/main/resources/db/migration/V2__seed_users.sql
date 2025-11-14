-- =====================================================
-- Script de Seed: USERS (50 usuarios)
-- =====================================================
-- Execute este script PRIMEIRO
-- =====================================================

-- Inserir 50 usuarios
INSERT INTO users (name, email, created_at) VALUES
('João Silva', 'joao.silva@email.com', '2024-01-15 10:30:00'),
('Maria Santos', 'maria.santos@email.com', '2024-01-16 11:45:00'),
('Pedro Oliveira', 'pedro.oliveira@email.com', '2024-01-17 09:20:00'),
('Ana Costa', 'ana.costa@email.com', '2024-01-18 14:35:00'),
('Carlos Souza', 'carlos.souza@email.com', '2024-01-19 16:50:00'),
('Juliana Lima', 'juliana.lima@email.com', '2024-01-20 08:15:00'),
('Rafael Pereira', 'rafael.pereira@email.com', '2024-01-21 13:40:00'),
('Fernanda Alves', 'fernanda.alves@email.com', '2024-01-22 10:25:00'),
('Lucas Rodrigues', 'lucas.rodrigues@email.com', '2024-01-23 15:50:00'),
('Camila Ferreira', 'camila.ferreira@email.com', '2024-01-24 12:10:00'),
('Bruno Martins', 'bruno.martins@email.com', '2024-02-01 09:30:00'),
('Patricia Gomes', 'patricia.gomes@email.com', '2024-02-02 11:20:00'),
('Rodrigo Barbosa', 'rodrigo.barbosa@email.com', '2024-02-03 14:45:00'),
('Amanda Ribeiro', 'amanda.ribeiro@email.com', '2024-02-04 16:15:00'),
('Guilherme Dias', 'guilherme.dias@email.com', '2024-02-05 10:40:00'),
('Beatriz Castro', 'beatriz.castro@email.com', '2024-02-06 13:25:00'),
('Thiago Araujo', 'thiago.araujo@email.com', '2024-02-07 15:55:00'),
('Larissa Cardoso', 'larissa.cardoso@email.com', '2024-02-08 09:10:00'),
('Marcos Vieira', 'marcos.vieira@email.com', '2024-02-09 12:30:00'),
('Renata Monteiro', 'renata.monteiro@email.com', '2024-02-10 14:20:00'),
('Felipe Freitas', 'felipe.freitas@email.com', '2024-03-01 08:45:00'),
('Gabriela Cunha', 'gabriela.cunha@email.com', '2024-03-02 11:35:00'),
('Daniel Mendes', 'daniel.mendes@email.com', '2024-03-03 13:50:00'),
('Tatiana Moreira', 'tatiana.moreira@email.com', '2024-03-04 16:25:00'),
('André Campos', 'andre.campos@email.com', '2024-03-05 10:15:00'),
('Vanessa Rocha', 'vanessa.rocha@email.com', '2024-03-06 12:40:00'),
('Leandro Correia', 'leandro.correia@email.com', '2024-03-07 15:10:00'),
('Priscila Teixeira', 'priscila.teixeira@email.com', '2024-03-08 09:35:00'),
('Vinicius Azevedo', 'vinicius.azevedo@email.com', '2024-03-09 11:50:00'),
('Isabela Pinto', 'isabela.pinto@email.com', '2024-03-10 14:05:00'),
('Gustavo Nogueira', 'gustavo.nogueira@email.com', '2024-04-01 08:20:00'),
('Carolina Melo', 'carolina.melo@email.com', '2024-04-02 10:45:00'),
('Ricardo Farias', 'ricardo.farias@email.com', '2024-04-03 13:15:00'),
('Aline Carvalho', 'aline.carvalho@email.com', '2024-04-04 15:40:00'),
('Murilo Soares', 'murilo.soares@email.com', '2024-04-05 09:55:00'),
('Eduarda Lopes', 'eduarda.lopes@email.com', '2024-04-06 12:20:00'),
('Fábio Nascimento', 'fabio.nascimento@email.com', '2024-04-07 14:50:00'),
('Mariana Moraes', 'mariana.moraes@email.com', '2024-04-08 16:30:00'),
('Paulo Castro', 'paulo.castro@email.com', '2024-04-09 10:10:00'),
('Simone Reis', 'simone.reis@email.com', '2024-04-10 11:40:00'),
('Alexandre Santos', 'alexandre.santos@email.com', '2024-05-01 08:30:00'),
('Letícia Pires', 'leticia.pires@email.com', '2024-05-02 10:55:00'),
('Diego Fernandes', 'diego.fernandes@email.com', '2024-05-03 13:25:00'),
('Bruna Ramos', 'bruna.ramos@email.com', '2024-05-04 15:45:00'),
('Henrique Costa', 'henrique.costa@email.com', '2024-05-05 09:15:00'),
('Jéssica Barros', 'jessica.barros@email.com', '2024-05-06 11:30:00'),
('Matheus Duarte', 'matheus.duarte@email.com', '2024-05-07 14:00:00'),
('Raquel Nunes', 'raquel.nunes@email.com', '2024-05-08 16:20:00'),
('Leonardo Macedo', 'leonardo.macedo@email.com', '2024-05-09 10:40:00'),
('Natália Borges', 'natalia.borges@email.com', '2024-05-10 12:50:00');

-- Verificar quantidade inserida
SELECT COUNT(*) as total_usuarios FROM users;
