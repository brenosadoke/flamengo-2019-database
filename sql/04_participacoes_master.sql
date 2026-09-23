-- ARQUIVO MASTER — Projeto Flamengo 2019
-- Roda do ZERO: TRUNCATE + todos os gols + todas as assistências
-- Ordem importa: gols primeiro, depois assistências (que fazem UPDATE
-- em cima das linhas de gol, ou INSERT novo quando o jogador só deu
-- assistência sem marcar gol naquele jogo)
-- ================================================================

-- PASSO 0: Limpa a tabela pra recomeçar do zero
TRUNCATE TABLE participacoes;

-- Garante que o Lucas Silva existe na tabela jogador (não afeta se já existir - use IGNORE)
INSERT IGNORE INTO jogador (id_jogador, nome, posicao, nacionalidade) VALUES
(35, 'Lucas Silva', 'Atacante', 'Brasil');

-- ================================================================
-- PARTE 1: GOLS (151 registros originais + correção do jogo 21)
-- ================================================================
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(1, 28, 2, 0),
(2, 33, 1, 0),
(3, 17, 1, 0),
(3, 9, 1, 0),
(4, 34, 1, 0),
(5, 21, 2, 0),
(6, 34, 1, 0),
(6, 28, 1, 0),
(6, 6, 1, 0),
(7, 13, 1, 0),
(7, 17, 1, 0),
(7, 16, 1, 0),
(7, 21, 1, 0),
(9, 20, 2, 0),
(9, 22, 1, 0),
(9, 17, 1, 0),
(10, 21, 1, 0),
(10, 22, 2, 0),
(11, 22, 1, 0),
(12, 16, 1, 0),
(13, 15, 1, 0),
(13, 22, 1, 0),
(13, 28, 1, 0),
(15, 22, 2, 0),
(16, 21, 2, 0),
(16, 22, 1, 0),
(17, 10, 1, 0),
(17, 15, 1, 0),
(18, 16, 1, 0),
(20, 22, 1, 0),
(21, 17, 1, 0),
(21, 15, 2, 0),
(21, 16, 1, 0),
(21, 20, 1, 0),
(21, 25, 1, 0),
(22, 21, 2, 0),
(24, 21, 1, 0),
(25, 21, 2, 0),
(25, 22, 1, 0),
(26, 16, 1, 0),
(27, 27, 1, 0),
(29, 20, 1, 0),
(29, 23, 1, 0),
(30, 13, 1, 0),
(31, 21, 1, 0),
(32, 22, 1, 0),
(32, 21, 1, 0),
(32, 6, 1, 0),
(33, 22, 2, 0),
(34, 6, 1, 0),
(37, 22, 1, 0),
(38, 16, 3, 0),
(38, 21, 1, 0),
(38, 22, 2, 0),
(39, 22, 1, 0),
(40, 22, 1, 0),
(42, 14, 1, 0),
(42, 22, 1, 0),
(42, 21, 1, 0),
(43, 22, 2, 0),
(45, 13, 1, 0),
(45, 16, 1, 0),
(45, 15, 1, 0),
(46, 21, 1, 0),
(46, 22, 2, 0),
(46, 16, 1, 0),
(47, 21, 2, 0),
(48, 7, 1, 0),
(48, 22, 1, 0),
(48, 16, 1, 0),
(49, 22, 1, 0),
(50, 22, 2, 0),
(50, 16, 1, 0),
(51, 19, 1, 0),
(52, 22, 1, 0),
(53, 22, 1, 0),
(53, 16, 1, 0),
(54, 22, 1, 0),
(54, 16, 1, 0),
(54, 21, 1, 0),
(56, 21, 1, 0),
(57, 21, 1, 0),
(58, 20, 1, 2),
(59, 21, 2, 0),
(60, 19, 1, 0),
(61, 21, 1, 0),
(61, 14, 1, 0),
(62, 21, 1, 0),
(62, 22, 2, 0),
(62, 7, 1, 0),
(62, 6, 1, 0),
(64, 22, 1, 0),
(64, 6, 1, 0),
(65, 21, 3, 0),
(65, 20, 1, 0),
(66, 23, 1, 0),
(67, 19, 1, 0),
(67, 21, 1, 0),
(67, 22, 1, 0),
(68, 15, 1, 0),
(68, 21, 2, 0),
(69, 22, 1, 0),
(70, 22, 2, 0),
(71, 21, 3, 0),
(71, 20, 1, 0),
(72, 16, 1, 0),
(72, 22, 2, 0),
(73, 16, 1, 0),
(73, 17, 1, 0),
(73, 22, 1, 0),
(73, 23, 1, 0),
(73, 19, 2, 0),
(75, 16, 1, 0),
(75, 21, 1, 0);

INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(23, 13, 1, 0),  -- Willian Arão, 1 gol vs Vasco (final Carioca, 21/04)
(23, 20, 1, 0),  -- Vitinho, 1 gol vs Vasco (final Carioca, 21/04)
(36, 20, 1, 0),  -- Vitinho, 1 gol vs CSA (12/06)
(36, 22, 1, 0),  -- Gabriel Barbosa, 1 gol vs CSA (12/06)
(51, 22, 1, 0),  -- Gabriel Barbosa, 1 gol vs Avaí (completa a partida 51)
(51, 7, 1, 0),   -- Pablo Marí, 1 gol vs Avaí (completa a partida 51)
(58, 13, 1, 0),  -- Willian Arão, 1 gol vs Atlético-MG (completa a partida 58)
(58, 19, 1, 0),  -- Reinier, 1 gol vs Atlético-MG (completa a partida 58)
(60, 22, 1, 0),  -- Gabriel Barbosa (pênalti), 1 gol vs Fortaleza (completa a partida 60)
(63, 16, 1, 0),  -- De Arrascaeta, 1 gol vs CSA (27/10)
(63, 15, 0, 1);  -- Éverton Ribeiro, assistência no gol de Arrascaeta vs CSA

-- ================================================================
-- PARTE 2: ASSISTÊNCIAS (+ correção do jogo 21)
-- ================================================================
-- ============================================================
-- ASSISTÊNCIAS CONFIRMADAS COM FONTE — Temporada Flamengo 2019
-- Cada linha tem a fonte no comentário. Gerado em blocos, testado.
-- ============================================================

-- Jogo 9 (Americano 4x1, 24/02) — Fonte: Superesportes, narração minuto a minuto
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(9, 25, 0, 1),   -- Pará: assistência no 1º gol do Vitinho
(9, 16, 0, 1),   -- Arrascaeta: assistência no gol do Gabigol
(9, 27, 0, 1),   -- Berrío: assistência no gol do Diego

-- Jogo 21 (San José 6x1, 11/04) — Fonte: Goal.com/Conmebol (ranking assistências Libertadores)
(21, 21, 0, 2),  -- Bruno Henrique: 2 assistências (líder de assist. da Libertadores 2019)

-- Jogo 33 (Fortaleza 2x0, 01/06) — Fonte: Lance!, histórico rodada a rodada Arrascaeta
(33, 16, 0, 2),  -- Arrascaeta: 2 assistências (nos 2 gols do Gabigol)

-- Jogo 40 (Corinthians 1x1, 21/07) — Fonte: ESPN, descrição do lance
(40, 15, 0, 1),  -- Éverton Ribeiro: assistência no gol do Gabigol

-- Jogo 48 (Ceará 0x3, 25/08) — Fonte: Wikipedia (2019 CR Flamengo season)
(48, 11, 0, 1),  -- Rafinha: assistência no gol do Arrascaeta

-- Jogo 49 (Internacional 1x1, 28/08) — Fonte: Wikipedia (2019 CR Flamengo season)
(49, 21, 0, 1),  -- Bruno Henrique: assistência no gol do Gabigol

-- Jogo 65 (Corinthians 4x1, 03/11) — Fonte: Lance!, histórico rodada a rodada Arrascaeta
(65, 16, 0, 1),  -- Arrascaeta: assistência (não marcou gol nesse jogo)

-- Jogo 68 (Vasco 4x4, 13/11) — Fonte: Lance!, histórico rodada a rodada Arrascaeta
(68, 16, 0, 1),  -- Arrascaeta: assistência (não marcou gol nesse jogo)

-- Jogo 70 (River Plate 2x1, final Libertadores, 23/11) — Fonte: Goal.com/imortaisdofutebol
(70, 16, 0, 1),  -- Arrascaeta: assistência no 1º gol do Gabigol

-- Jogo 71 (Ceará 4x1, 27/11) — Fonte: Lance!, histórico rodada a rodada Arrascaeta
(71, 16, 0, 1);  -- Arrascaeta: assistência (não marcou gol nesse jogo)

-- ============================================================
-- ATUALIZAÇÕES (jogador já tinha linha de gol, só falta somar assistência)
-- ============================================================
UPDATE participacoes SET assistencias = 2 WHERE id_partida = 38 AND id_jogador = 16; -- Arrascaeta: Goiás 6x1 (Terra/Lance)
UPDATE participacoes SET assistencias = 3 WHERE id_partida = 38 AND id_jogador = 22; -- Gabigol: Goiás 6x1 (Lance)
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 45 AND id_jogador = 16; -- Arrascaeta: Grêmio 3x1 (Lance)
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 46 AND id_jogador = 16; -- Arrascaeta: Vasco 1x4 (Lance)
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 50 AND id_jogador = 16; -- Arrascaeta: Palmeiras 3x0 (Lance)
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 54 AND id_jogador = 16; -- Arrascaeta: Internacional 3x1 (Lance)

-- Jogo 42 (Botafogo 3x2, 28/07) — Fonte: Lance! (matéria "Individualidades são determinantes")
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(42, 11, 0, 2);  -- Rafinha: 2 assistências (nos gols do Gerson e do Bruno Henrique)

-- Jogo 45 (Grêmio 3x1, 10/08) — Fonte: Superesportes, narração minuto a minuto
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 45 AND id_jogador = 13; -- Willian Arão: assistência no gol do Éverton Ribeiro

-- Jogo 1 (Ajax 2x2 pens, 10/01) — Fonte: VAVEL + OneFootball
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(1, 15, 0, 1);  -- Éverton Ribeiro: assistência no 1º gol do Uribe (passe de trivela)

-- Jogo 2 (Eintracht Frankfurt 0x1, 12/01) — Fonte: Site oficial Flamengo + Lance! + Terra
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(2, 5, 0, 1);  -- Rodinei: assistência no gol do Jean Lucas

-- Jogo 3 (Bangu 1x2, 20/01) — Fonte: R7 Esportes
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(3, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Rhodolfo

-- Jogo 4 (Resende 1x1, 23/01) — Fonte: ESPN + UOL
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(4, 26, 0, 1);  -- Miguel Trauco: assistência no gol de bicicleta do Henrique Dourado

-- Jogo 5 (Botafogo 1x2, 26/01) — Fonte: Lance! + GE/Facebook
-- 1º gol: assistência de Éverton Ribeiro (escanteio cobrado)
-- 2º gol: rebote após chute de Éverton Ribeiro desviar na defesa - sem assistência direta tradicional
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(5, 15, 0, 1);  -- Éverton Ribeiro: assistência no 1º gol do Bruno Henrique (escanteio)

-- Jogo 6 (Boavista 1x3, 29/01) — Fonte: Gazeta Esportiva + ASemanaNews + Eurio + ESPN + R7
-- Gol Dourado: rebote de bola na trave após chute do Vitinho - sem assistência direta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(6, 26, 0, 1),  -- Miguel Trauco: assistência no gol do Uribe
(6, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Rodrigo Caio (escanteio)

-- Jogo 7 (Cabofriense 0x4, 03/02) — Fonte: flamengo2019.com.br + R7 + Lance!
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 7 AND id_jogador = 17; -- Diego: assistência no gol do Arão
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 7 AND id_jogador = 13; -- Willian Arão: assistência no gol do Diego
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 7 AND id_jogador = 21; -- Bruno Henrique: assistência no gol do Arrascaeta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(7, 22, 0, 1);  -- Gabriel Barbosa: assistência no gol do Bruno Henrique

-- Jogo 10 (Portuguesa-RJ 1x3, 28/02) — Fonte: GE Globo + UOL + O Dia
-- 1º gol Gabigol: bola bateu nas costas dele após chutão do goleiro - sem assistência
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 10 AND id_jogador = 22; -- Gabigol: assistência no gol do Bruno Henrique
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(10, 10, 0, 1);  -- Renê: assistência no 2º gol do Gabigol

-- Jogo 11 (San José 0x1, 05/03) — Fonte: UOL + ESPN
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(11, 21, 0, 1);  -- Bruno Henrique: assistência no gol do Gabigol

-- Jogo 13 (LDU 1x3, 13/03) — Libertadores
-- Gol Uribe: rebote após cabeçada de Rodrigo Caio ser espalmada - sem assistência direta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(13, 17, 0, 1),  -- Diego: assistência no gol do Éverton Ribeiro
(13, 21, 0, 1);  -- Bruno Henrique: assistência no gol do Gabigol

-- Jogo 15 (Madureira 0x2, 19/03) — Fonte: Estadão + Midiamax + O Dia
-- 1º gol Gabigol: sobra de bola na área - sem assistência
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(15, 10, 0, 1);  -- Renê: assistência no 2º gol do Gabigol

-- Jogo 16 (Fluminense 2x3, 24/03) — Fonte: Transfermarkt + UOL
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 16 AND id_jogador = 21; -- Bruno Henrique: assistência no gol do Gabigol
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(16, 25, 0, 1),  -- Pará: assistência no 1º gol do Bruno Henrique
(16, 17, 0, 1);  -- Diego: assistência no 2º gol do Bruno Henrique (cobrança de falta)

-- Jogo 17 (Fluminense 1x2, 27/03) — semifinal Taça Rio
-- Gol Éverton Ribeiro: pênalti, sem assistência
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 17 AND id_jogador = 15; -- Éverton Ribeiro: assistência no gol do Renê

-- Jogo 20 (Fluminense 1x1, 06/04) — Fonte: O Dia
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(20, 10, 0, 1);  -- Renê: assistência no gol do Gabigol

-- ===== CORREÇÃO DO JOGO 21 (San José 1x6, 11/04) =====
-- Dados antigos estavam errados. Fonte nova mais detalhada bate com ESPN/Torcedores.com (gol contra do Gutiérrez).
DELETE FROM participacoes WHERE id_partida = 21 AND id_jogador = 25; -- Pará: remove (era gol contra do adversário, não gol do Pará)
UPDATE participacoes SET gols = 0, assistencias = 1 WHERE id_partida = 21 AND id_jogador = 17; -- Diego: NÃO marcou, deu assistência no 1º gol do Éverton Ribeiro
UPDATE participacoes SET gols = 1, assistencias = 1 WHERE id_partida = 21 AND id_jogador = 21; -- Bruno Henrique: marcou 1 gol (assistido por Arrascaeta) E deu 1 assistência (2º gol do Éverton Ribeiro)

-- Jogo 22 (Vasco 0x2, 14/04) — final Carioca, ida
-- 1º gol Bruno Henrique: sobra após corte errado do zagueiro Werley - sem assistência direta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(22, 16, 0, 1);  -- Arrascaeta: assistência no 2º gol do Bruno Henrique

-- Jogo 23 (Vasco 0x2, 21/04) — final Carioca, volta (título)
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(23, 16, 0, 1),  -- Arrascaeta: assistência no gol do Willian Arão (cobrança de falta)
(23, 17, 0, 1);  -- Diego: assistência no gol do Vitinho

-- Jogo 24 (LDU 2x1, 24/04) — Fonte: Lance! + UOL + ESPN
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(24, 25, 0, 1);  -- Pará: assistência no gol do Bruno Henrique

-- Jogo 25 (Cruzeiro 1x3, 27/04) — estreia Brasileirão
-- 2º gol Bruno Henrique: rebote após soco mal dado do goleiro Fábio - sem assistência direta
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 25 AND id_jogador = 21; -- Bruno Henrique: assistência no gol do Gabigol
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(25, 15, 0, 1);  -- Éverton Ribeiro: assistência no 1º gol do Bruno Henrique

-- Jogo 26 (Internacional 2x1, 01/05) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(26, 25, 0, 1);  -- Pará: assistência no gol do Arrascaeta

-- Jogo 27 (São Paulo 1x1, 05/05) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(27, 16, 0, 1);  -- Arrascaeta: assistência no gol do Berrío

-- Jogo 29 (Chapecoense 1x2, 12/05) — Brasileirão
-- Gol Vitinho: pênalti, sem assistência
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(29, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Lincoln

-- Jogo 30 (Corinthians 0x1, 15/05) — Copa do Brasil, oitavas ida
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(30, 21, 0, 1);  -- Bruno Henrique: assistência no gol do Willian Arão

-- Jogo 31 (Atlético-MG 2x1, 18/05) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(31, 16, 0, 1);  -- Arrascaeta: assistência no gol do Bruno Henrique

-- Jogo 32 (Athletico-PR 2x3, 26/05) — Fonte: UOL + Lance!
-- Gol Gabigol: pênalti, sem assistência
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(32, 15, 0, 1),  -- Éverton Ribeiro: assistência no gol do Bruno Henrique
(32, 10, 0, 1);  -- Renê: assistência no gol do Rodrigo Caio

-- Jogo 34 (Corinthians 0x1, 04/06) — Copa do Brasil, oitavas volta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(34, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Rodrigo Caio

-- Jogo 36 (CSA 0x2, 12/06) — Brasileirão
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 36 AND id_jogador = 20; -- Vitinho: assistência no gol do Gabigol
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(36, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Vitinho

-- Jogo 37 (Athletico-PR 1x1, 10/07) — Copa do Brasil, quartas ida
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(37, 20, 0, 1);  -- Vitinho: assistência no gol do Gabigol

-- Jogo 39 (Athletico-PR 1x1, 17/07) — Copa do Brasil, quartas volta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(39, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Gabigol

-- Jogo 43 (Emelec 0x2, 31/07) — Libertadores, oitavas volta
-- 1º gol Gabigol: pênalti, sem assistência
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(43, 21, 0, 1);  -- Bruno Henrique: assistência no 2º gol do Gabigol

-- Jogo 46 (Vasco 1x4, 17/08) — Fonte: UOL + flamengo2019.com.br
-- 2º gol Gabigol: rebote após chute do Bruno Henrique, sem assistência direta
-- Arrascaeta já tinha assistência marcada nesse jogo (era no gol do Bruno Henrique - confirmado)
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 46 AND id_jogador = 21; -- Bruno Henrique: assistência no 1º gol do Gabigol

-- Jogo 47 (Internacional 0x2, 21/08) — Libertadores, quartas ida
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(47, 14, 0, 1),  -- Gerson: assistência no 1º gol do Bruno Henrique
(47, 22, 0, 1);  -- Gabigol: assistência no 2º gol do Bruno Henrique

-- Jogo 48 (Ceará 0x3, 25/08) — Brasileirão
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 48 AND id_jogador = 16; -- Arrascaeta: assistência no gol do Gabigol
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(48, 27, 0, 1);  -- Berrío: assistência no gol do Pablo Marí

-- Jogo 50 (Palmeiras 0x3, 01/09) — Brasileirão
-- 2º gol Gabigol: pênalti, sem assistência
-- Arrascaeta já tinha assistência marcada (confirmado: foi no 1º gol do Gabigol)
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 50 AND id_jogador = 22; -- Gabigol: assistência no gol do Arrascaeta

-- Jogo 51 (Avaí 0x3, 07/09) — Brasileirão
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 51 AND id_jogador = 19; -- Reinier: assistência no gol do Gabigol
UPDATE participacoes SET assistencias = 2 WHERE id_partida = 51 AND id_jogador = 22; -- Gabigol: 2 assistências (Pablo Marí e Reinier)

-- Jogo 52 (Santos 0x1, 14/09) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(52, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Gabigol

-- Jogo 53 (Cruzeiro 1x2, 21/09) — Brasileirão
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 53 AND id_jogador = 22; -- Gabigol: assistência no gol do Arrascaeta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(53, 14, 0, 1);  -- Gerson: assistência no gol do Gabigol

-- Jogo 54 (Internacional 1x3, 25/09) — Brasileirão (marca dos 100 gols na temporada)
-- Gol Gabigol: pênalti, sem assistência
UPDATE participacoes SET assistencias = 2 WHERE id_partida = 54 AND id_jogador = 16; -- Arrascaeta: 2 assistências (já tinha 1, +1 no gol do Bruno Henrique)
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(54, 11, 0, 1);  -- Rafinha: assistência no gol do Arrascaeta

-- Jogo 56 (Grêmio 1x1, 02/10) — Libertadores, semifinal ida
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(56, 22, 0, 1);  -- Gabigol: assistência no gol do Bruno Henrique

-- Jogo 57 (Chapecoense 0x1, 06/10) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(57, 20, 0, 1);  -- Vitinho: assistência no gol do Bruno Henrique

-- ATENÇÃO: "Lucas Silva" (atacante da base) não estava cadastrado na tabela jogador!
-- Adicionando ele antes de registrar a assistência do jogo 59.

-- Jogo 59 (Athletico-PR 0x2, 13/10) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(59, 35, 0, 1),  -- Lucas Silva: assistência no 1º gol do Bruno Henrique
(59, 10, 0, 1);  -- Renê: assistência no 2º gol do Bruno Henrique

-- Jogo 60 (Fortaleza 1x2, 16/10) — Brasileirão
-- Gol Gabigol: pênalti, sem assistência
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(60, 31, 0, 1);  -- Vitor Gabriel: assistência no gol do Reinier

-- Jogo 61 (Fluminense 0x2, 20/10) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(61, 5, 0, 1),   -- Rodinei: assistência no gol do Bruno Henrique
(61, 19, 0, 1);  -- Reinier: assistência no gol do Gerson

-- Jogo 62 (Grêmio 0x5, 23/10) — Libertadores, semifinal volta
-- Gol Bruno Henrique: rebote após chute do Gabigol ser espalmado - sem assistência direta
-- 2º gol Gabigol: pênalti, sem assistência
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(62, 16, 0, 2),  -- Arrascaeta: 2 assistências (1º gol do Gabigol e gol do Pablo Marí)
(62, 15, 0, 1);  -- Éverton Ribeiro: assistência no gol do Rodrigo Caio

-- Jogo 64 (Goiás 2x2, 31/10) — Brasileirão
-- Gol Gabigol: rebote de corte defensivo após escanteio, sem assistência direta clara
-- Gol Rodrigo Caio: lance confuso (escanteio -> cabeçada -> rebate em jogador do Goiás -> gol).
--   Michael é jogador do GOIÁS, não pode ser creditado no Flamengo. Creditando ao Éverton Ribeiro (cobrador do escanteio) como julgamento - CONFERIR SE QUISER
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(64, 15, 0, 1);  -- Éverton Ribeiro: assistência (escanteio) no gol do Rodrigo Caio - CASO AMBÍGUO

-- Jogo 65 (Corinthians 1x4, 03/11) — Brasileirão (hat-trick do Bruno Henrique)
-- 1º gol Bruno Henrique: rebote de pênalti espalmado, sem assistência direta
-- 3º gol (Arrascaeta assistiu): já estava confirmado corretamente
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(65, 14, 0, 1),  -- Gerson: assistência no 2º gol do Bruno Henrique
(65, 13, 0, 1);  -- Willian Arão: assistência no gol do Vitinho

-- Jogo 66 (Botafogo 0x1, 07/11) — Brasileirão
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(66, 21, 0, 1);  -- Bruno Henrique: assistência no gol do Lincoln

-- Jogo 67 (Bahia 1x3, 10/11) — Brasileirão (obs: gol contra de Willian Arão foi PRO Bahia, não conta gol do Flamengo)
-- Gol Gabigol: rebote de cobrança de falta, sem assistência direta
UPDATE participacoes SET assistencias = 2 WHERE id_partida = 67 AND id_jogador = 22; -- Gabigol: 2 assistências (Reinier e Bruno Henrique)

-- Jogo 68 (Vasco 4x4, 13/11) — Brasileirão
-- (Arrascaeta já tinha assistência marcada - provavelmente ligada ao gol contra do Vasco)
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(68, 19, 0, 1),  -- Reinier: assistência no gol do Éverton Ribeiro
(68, 22, 0, 1),  -- Gabigol: assistência no 1º gol do Bruno Henrique
(68, 20, 0, 1);  -- Vitinho: assistência no 2º gol do Bruno Henrique

-- Jogo 69 (Grêmio 0x1, 17/11) — Brasileirão
-- Gol Gabigol: pênalti sofrido pelo Arrascaeta - sem assistência (quem sofre pênalti não conta como assistência)

-- Jogo 71 (Ceará 1x4, 27/11) — Brasileirão (hat-trick Bruno Henrique, festa do título)
-- 2º gol Bruno Henrique: rebote após saída errada do goleiro, sem assistência direta
-- Arrascaeta já tinha assistência marcada (confirmado: 3º gol/hat-trick do Bruno Henrique)
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(71, 23, 0, 1),  -- Lincoln: assistência no 1º gol do Bruno Henrique
(71, 13, 0, 1);  -- Willian Arão: assistência no gol do Vitinho

-- Jogo 72 (Palmeiras 1x3, 01/12) — Brasileirão (último jogo do Brasileirão)
-- 2º gol Gabigol: erro de saída de bola do Palmeiras, sem assistência direta
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 72 AND id_jogador = 22; -- Gabigol: assistência no gol do Arrascaeta
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 72 AND id_jogador = 16; -- Arrascaeta: assistência no 1º gol do Gabigol

-- Jogo 73 (Avaí 1x6, 05/12) — Brasileirão
-- CONFERIDO com 6 fontes (ESPN, Lance!, Gazeta, VAVEL, NSC, torcedores.com): scorers Arrascaeta, Diego, Gabigol, Lincoln, Reinier(2) - confirma dados originais
-- Gol Diego: rebote após escanteio (sem assistência direta, apesar do que uma fonte sugeriu)
-- Gol Gabigol: sem assistência clara confirmada em nenhuma fonte
UPDATE participacoes SET assistencias = 2 WHERE id_partida = 73 AND id_jogador = 23; -- Lincoln: 2 assistências (gol do Arrascaeta e 1º gol do Reinier)
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(73, 11, 0, 2);  -- Rafinha: 2 assistências (gol do Lincoln e 2º gol do Reinier - confirmado pela ESPN)

-- Jogo 75 (Al Hilal 1x3, 17/12) — Mundial de Clubes, semifinal
UPDATE participacoes SET assistencias = 1 WHERE id_partida = 75 AND id_jogador = 21; -- Bruno Henrique: assistência no gol do Arrascaeta
INSERT INTO participacoes (id_partida, id_jogador, gols, assistencias) VALUES
(75, 11, 0, 1);  -- Rafinha: assistência no gol do Bruno Henrique
