--1
SELECT Nome, Ano FROM Filmes

--2
SELECT
	Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT
	Nome,Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--7
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


--8
SELECT 
	* 
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
	* 
FROM Atores
WHERE Genero = 'F'

--10
SELECT
	Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


--11
SELECT
	Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mist�rio'

--12
SELECT 
	Nome, PrimeiroNome, 
	UltimoNome, Papel
	
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id






select * from Filmes
select * from Atores
select * from ElencoFilme