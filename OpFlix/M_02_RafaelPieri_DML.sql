USE M_OpFlix;

INSERT INTO Tipos (Tipo)
	VALUES	('Filme')
			,('S�rie');

INSERT INTO Categorias (Categoria)I
	VALUES	('A��o')
			,('Terror')
			,('Romance')
			,('Aventura')
			,('Com�dia');

INSERT INTO Lancamentos (IdCategoria, Titulo, Sinopse, TempoDuracao, IdTipo, DataLancamento)
	VALUES	(4, 'Toy Story 4', 'Agora morando na casa da pequena Bonnie, Woody apresenta aos amigos o novo brinquedo constru�do por ela: Forky, baseado em um garfo de verdade. O novo posto de brinquedo n�o o agrada nem um pouco, o que faz com que Forky fuja de casa. Decidido a trazer de volta o atual brinquedo favorito de Bonnie, Woody parte em seu encal�o e, no caminho, reencontra Bo Peep, que agora vive em um parque de divers�es.', 100, 1, '2019-06-20')
			,(2, 'Hist�rias assustadoras para contar no escuro', 'No tranquilo povoado de Mill Valley, durante gera��es, o legado sombrio da fam�lia Bellows cresceu enormemente. Sara Bellows, uma jovem que oculta horr�veis segredos, transformou sua tortuosa vida em uma s�rie de hist�rias macabras escritas em um livro, cuja particularidade � que as mesmas se tornam reais para um grupo de adolescentes que o encontram.', 111, 1,'2019-08-08')
			,(1, 'Rick and Morty', 'Rick � um velho mentalmente desequilibrado, mas dotado de um enorme talento cient�fico, que recentemente se reconectou com sua fam�lia. Ele passa a maior parte do tempo envolvido em aventuras perigosas pelo espa�o e em universos alternativos, sempre acompanhado de seu pequeno neto Morty. Toda essa confus�o, aliada � j� inst�vel vida familiar de Morty, come�a a causar muitos problemas com os seus familiares e a escola de Morty.', 22, 2, '2013-12-02');

INSERT INTO Permissoes (Permissao)
	VALUES	('Administrador')
			,('Usu�rio');

INSERT INTO Usuarios (Nome, Email, Senha, CPF, IdPermissao)
	VALUES	('Erik', 'erik@email.com', '123456', 75144332013, 1)
			,('Cassiana', 'cassiana@email.com', '123456', 99817927059, 1)
			,('Helena', 'helena@emai.com', '123456', 93536159095, 2)
			,('Roberto', 'rob@emai.com', '3110', 96418381050, 2); 

INSERT INTO Favoritos (IdUsuario, IdLancamento)
	VALUES	(1,3)
			,(2,2)
			,(3,1)
			,(3,2)
			,(3,3)
			,(4,2)
			,(4,3);

INSERT INTO Categorias (Categoria)
	VALUES	('Drama')
			,('Document�rio')
			,('Fic��o Cient�fica');

INSERT INTO Lancamentos