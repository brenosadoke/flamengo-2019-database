-- PERGUNTA 1: Quem foi o artilheiro da temporada?
SELECT j.nome, SUM(p.gols) AS total_gols
FROM participacoes p
JOIN jogador j ON j.id_jogador = p.id_jogador
GROUP BY j.nome
HAVING SUM(p.gols) > 0
ORDER BY total_gols DESC;

-- PERGUNTA 2: Quem foi o garçom (recordista de assistências) da temporada?
SELECT j.nome, SUM(p.assistencias) AS total_assistencias
FROM participacoes p
JOIN jogador j ON j.id_jogador = p.id_jogador
GROUP BY j.nome
HAVING SUM(p.assistencias) > 0
ORDER BY total_assistencias DESC;

-- PERGUNTA 3: Como os gols evoluíram mês a mês na temporada?
SELECT DATE_FORMAT(pa.data_partida, '%Y-%m') AS mes, SUM(pa.gols_flamengo) AS gols_no_mes
FROM partidas pa
GROUP BY mes
ORDER BY mes;


-- PERGUNTA 4: Qual posição mais contribuiu com gols?
SELECT j.posicao, SUM(p.gols) AS total_gols
FROM participacoes p
JOIN jogador j ON j.id_jogador = p.id_jogador
GROUP BY j.posicao
HAVING SUM(p.gols) > 0
ORDER BY total_gols DESC;
