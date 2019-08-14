USE M_OpFlix;

SELECT * FROM Lancamentos;

SELECT Titulo FROM Lancamentos;

SELECT * FROM Categorias;

SELECT Veiculo FROM Veiculos;

SELECT * FROM Usuarios;

SELECT Nome FROM Usuarios;

SELECT * FROM Tipos;

CREATE PROCEDURE FilmesAcao
AS
SELECT * FROM Lancamentos WHERE IdCategoria = 1;

EXEC FilmesAcao


SELECT Usuarios.Nome, Favoritos.*, Lancamentos.Titulo
FROM Usuarios
JOIN Favoritos
ON Usuarios.IdUsuario = Favoritos.IdUsuario
JOIN Lancamentos
ON Usuarios.IdUsuario = Lancamentos.IdLancamento;


SELECT COUNT (Titulo)
FROM Lancamentos;


CREATE PROCEDURE SelecionarPorIdCategoria @IdCategoria char(1)
AS
SELECT COUNT (IdLancamento) FROM Lancamentos WHERE IdCategoria = @IdCategoria;

EXEC SelecionarPorIdCategoria @IdCategoria = 4;


CREATE VIEW VeiculoCategoria AS
SELECT Veiculos.Veiculo , Categorias.Categoria
FROM Veiculos
JOIN Categorias
ON Veiculos.IdVeiculo = Categorias.IdCategoria;

SELECT * FROM VeiculoCategoria;






