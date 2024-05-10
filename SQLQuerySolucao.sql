--Consulta 01--

SELECT Nome, Ano FROM Filmes



--Consulta 02--

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano 



--Consulta 03--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'



--Consulta 04--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997



--Consulta 05--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000



--Consulta 06--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 Order BY Duracao



--Consulta 07--

SELECT Ano, COUNT(*) as Quantidade 
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade Desc



--Consulta 08--

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'



--Consulta 09--

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome



--Consulta 10--

SELECT f.Nome, g.Genero 
FROM Filmes f 
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN Generos g ON fg.IdGenero = g.Id



--Consulta 11--

SELECT f.Nome, g.Genero 
FROM Filmes f 
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN Generos g ON fg.IdGenero = g.Id 
WHERE Genero = 'Mistério'



--Consulta 12--

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel 
FROM Filmes f 
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme 
INNER JOIN Atores a ON ef.IdAtor = a.Id 

