-- Projeto Flamengo 2019
-- Importação dos dados de partidas
-- Coloque o arquivo em: dados/partidas.csv

LOAD DATA LOCAL INFILE 'dados/partidas.csv'
INTO TABLE partidas
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
    id_partida,
    data_partida,
    adversario,
    competicao,
    mando,
    gols_flamengo,
    gols_adversario
);
