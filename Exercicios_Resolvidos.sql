--EXERCÍCIO 1 - Buscar o nome e ano dos filmes

SELECT 
	Nome,
	Ano
FROM Filmes

--EXERCÍCIO 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY ANO ASC

--EXERCÍCIO 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT
	*
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--EXERCÍCIO 4 - Buscar os filmes lançados em 1997

SELECT
	*
FROM Filmes
WHERE Ano = 1997

--EXERCÍCIO 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT
	*
FROM Filmes
WHERE Ano > 2000

--EXERCÍCIO 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente

SELECT
	*
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--EXERCÍCIO 7 - Buscar a quantidade de filmes lançadas no ano, 
--agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
	Ano,
	COUNT (*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--EXERCÍCIO 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--EXERCÍCIO 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, 
--UltimoNome, e ordenando pelo PrimeiroNome

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--EXERCÍCIO 10 - Buscar o nome do filme e o gênero

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

--EXERCÍCIO 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério'

--EXERCÍCIO 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id



