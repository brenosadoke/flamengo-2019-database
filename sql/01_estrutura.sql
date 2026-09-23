-- Projeto Flamengo 2019
-- Estrutura do banco

CREATE TABLE partidas (
    id_partida INT PRIMARY KEY,
    data_partida DATE,
    adversario VARCHAR(100),
    competicao VARCHAR(100),
    mando VARCHAR(10),
    gols_flamengo INT,
    gols_adversario INT
);

CREATE TABLE jogador (
    id_jogador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(50),
    nacionalidade VARCHAR(50)
);

CREATE TABLE participacoes (
    id_participacao INT PRIMARY KEY AUTO_INCREMENT,
    id_jogador INT NOT NULL,
    id_partida INT NOT NULL,
    gols INT DEFAULT 0,
    assistencias INT DEFAULT 0,
    FOREIGN KEY (id_jogador) REFERENCES jogador(id_jogador),
    FOREIGN KEY (id_partida) REFERENCES partidas(id_partida)
);
