# ⚽ Flamengo 2019 — Banco de Dados e Análise da Temporada Histórica

Projeto de banco de dados relacional (MySQL) construído do zero para analisar, jogo a jogo, a temporada histórica do Flamengo em 2019 (Campeonato Carioca, Copa do Brasil, Libertadores, Brasileirão e Mundial de Clubes) — o ano do título brasileiro e da Libertadores.

## 🎯 Objetivo

Sair de uma ideia simples ("quero analisar os gols do Flamengo em 2019") para um banco de dados estruturado, validado e consultável, respondendo perguntas como:
- Quem foi o artilheiro e o garçom da temporada?
- Como os gols evoluíram ao longo do ano?
- Qual posição mais contribuiu com gols?

## 🛠️ Ferramentas usadas

- **MySQL** (via Laragon) — banco de dados
- **HeidiSQL** — administração do banco
- **Google Planilhas** — carga de dados via CSV
- **Google Looker Studio / Planilhas** — visualização

## 🗂️ Estrutura do banco

O banco tem 3 tabelas:

| Tabela | Descrição |
|---|---|
| `partidas` | Os 76 jogos da temporada 2019 (data, adversário, gols do Flamengo) |
| `jogador` | 35 jogadores que atuaram na temporada (nome, posição, nacionalidade) |
| `participacoes` | Tabela relacional: quem marcou gol e/ou deu assistência em qual jogo (`id_jogador`, `id_partida`, `gols`, `assistencias`) |

A tabela `participacoes` tem uma constraint `UNIQUE (id_jogador, id_partida)` para impedir que um jogador seja lançado duas vezes no mesmo jogo por erro.

## 📊 Metodologia — como os dados foram validados

Esse é o ponto que mais diferencia esse projeto: **cada gol e cada assistência foi verificado, jogo a jogo, contra pelo menos uma fonte jornalística confiável** (ESPN, Lance!, UOL, Globo Esporte, Gazeta Esportiva, Transfermarkt, Wikipedia, entre outras), em vez de confiar cegamente em uma única fonte agregada.

Isso importa porque, ao longo do processo, esse cuidado **pegou erros reais**:
- Um jogo (San José 6x1, Libertadores) tinha um gol atribuído ao jogador errado — era na verdade um gol contra do adversário.
- Um jogador ("Lucas Silva", da base) apareceu em uma partida real mas não estava cadastrado na tabela `jogador`.
- Uma fonte secundária de assistências trouxe um "gol" que nunca aconteceu (Rafinha "marcando" um gol que na verdade foi do Gabigol) — cruzando com 6 fontes independentes, o erro foi identificado e corrigido antes de entrar no banco.

**Resultado final:** 150 gols confirmados por jogador (dos 153 reais da temporada — os outros 3 foram gols contra, que não são creditados a nenhum jogador do Flamengo) e 113 assistências confirmadas, cobrindo todas as competições do ano.

## ❓ Perguntas respondidas

1. **Quem foi o artilheiro da temporada?**
2. **Quem foi o garçom (recordista de assistências) da temporada?**
3. **Como os gols evoluíram mês a mês?**
4. **Qual posição mais contribuiu com gols?**

## 📁 Arquivos do repositório

- `sql/` — todo o sql do projeto dividido em 6 arquivos
- `dados/` — os dados exportados em CSV
- `graficos/` — prints dos gráficos gerados

## 📈 Principais resultados

artilheiro = gabriel barbosa com 43 gols
garçom - arrascaeta com 22 assistencias
mês com mais gols = julho, com um total de 20 gols em 6 partidas disputadas
posição que mais marcou = atacante)*


---

*Projeto pessoal construído para fins de aprendizado e portfólio.*
