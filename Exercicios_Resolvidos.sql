--EXERC�CIO 1 - Buscar o nome e ano dos filmes

SELECT 
	Nome,
	Ano
FROM Filmes

--EXERC�CIO 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY ANO ASC

--EXERC�CIO 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT
	*
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--EXERC�CIO 4 - Buscar os filmes lan�ados em 1997

SELECT
	*
FROM Filmes
WHERE Ano = 1997

--EXERC�CIO 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT
	*
FROM Filmes
WHERE Ano > 2000

--EXERC�CIO 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente

SELECT
	*
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--EXERC�CIO 7 - Buscar a quantidade de filmes lan�adas no ano, 
--agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
	Ano,
	COUNT (*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--EXERC�CIO 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--EXERC�CIO 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, 
--UltimoNome, e ordenando pelo PrimeiroNome

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--EXERC�CIO 10 - Buscar o nome do filme e o g�nero

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

--EXERC�CIO 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mist�rio'

--EXERC�CIO 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id



