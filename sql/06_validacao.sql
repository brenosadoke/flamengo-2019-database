-- Projeto Flamengo 2019
-- Consultas de validação dos dados

-- Total de jogadores
SELECT COUNT(*) AS total_jogadores
FROM jogador;

-- Total de gols na tabela de partidas vs. participações
SELECT
    (SELECT SUM(gols_flamengo) FROM partidas) AS gols_nas_partidas,
    (SELECT SUM(gols) FROM participacoes) AS gols_nas_participacoes,
    CASE
        WHEN (SELECT SUM(gols_flamengo) FROM partidas) = (SELECT SUM(gols) FROM participacoes)
        THEN 'OK: Dados validados'
        ELSE 'ATENÇÃO: Soma de gols divergente'
    END AS status_validacao;

-- Total de assistências registradas
SELECT SUM(assistencias) AS total_assistencias
FROM participacoes;

-- Total de registros de participação
SELECT COUNT(*) AS total_participacoes
FROM participacoes;
