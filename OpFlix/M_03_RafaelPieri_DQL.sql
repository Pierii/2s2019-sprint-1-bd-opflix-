USE M_OpFlix;

SELECT * FROM Lancamentos;

SELECT Titulo FROM Lancamentos;

SELECT * FROM Categorias;

SELECT Veiculo FROM Veiculos;

SELECT * FROM Usuarios;

SELECT Nome FROM Usuarios;

SELECT * FROM Formatos;

CREATE PROCEDURE FilmesAcao
AS
SELECT * FROM Lancamentos WHERE IdCategoria = 1;

EXEC FilmesAcao

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


CREATE PROCEDURE QuantidadeCategoria
@Quantidade VARCHAR(200)
AS 
SELECT COUNT(*)
FROM Lancamentos
WHERE IdCategoria = 1

EXECUTE QuantidadeCategoria'1';

UPDATE Usuarios
SET Email = 'rob@email.com'
WHERE IdUsuario = 4


