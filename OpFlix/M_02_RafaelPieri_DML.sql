USE M_OpFlix;

INSERT INTO Formatos (Formato)
	VALUES	('Filme')
			,('S�rie');

INSERT INTO Categorias (Categoria)
	VALUES	('A��o')
			,('Terror')
			,('Romance')
			,('Aventura')
			,('Com�dia');

INSERT INTO Lancamentos (IdCategoria, Titulo, Sinopse, TempoDuracao, IdFormato, DataLancamento)
	VALUES	(4, 'Toy Story 4', 'Agora morando na casa da pequena Bonnie, Woody apresenta aos amigos o novo brinquedo constru�do por ela: Forky, baseado em um garfo de verdade. O novo posto de brinquedo n�o o agrada nem um pouco, o que faz com que Forky fuja de casa. Decidido a trazer de volta o atual brinquedo favorito de Bonnie, Woody parte em seu encal�o e, no caminho, reencontra Bo Peep, que agora vive em um parque de divers�es.', 100, 1, '2019-06-20')
			,(2, 'Hist�rias assustadoras para contar no escuro', 'No tranquilo povoado de Mill Valley, durante gera��es, o legado sombrio da fam�lia Bellows cresceu enormemente. Sara Bellows, uma jovem que oculta horr�veis segredos, transformou sua tortuosa vida em uma s�rie de hist�rias macabras escritas em um livro, cuja particularidade � que as mesmas se tornam reais para um grupo de adolescentes que o encontram.', 111, 1,'2019-08-08')
			,(1, 'Rick and Morty', 'Rick � um velho mentalmente desequilibrado, mas dotado de um enorme talento cient�fico, que recentemente se reconectou com sua fam�lia. Ele passa a maior parte do tempo envolvido em aventuras perigosas pelo espa�o e em universos alternativos, sempre acompanhado de seu pequeno neto Morty. Toda essa confus�o, aliada � j� inst�vel vida familiar de Morty, come�a a causar muitos problemas com os seus familiares e a escola de Morty.', 22, 2, '2013-12-02');

INSERT INTO Usuarios (Nome, Email, Senha, CPF, Permissao)
	VALUES	('Erik', 'erik@email.com', '123456', 75144332013, 'ADMINISTRADOR')
			,('Cassiana', 'cassiana@email.com', '123456', 99817927059, 'ADMINISTRADOR')
			,('Helena', 'helena@emai.com', '123456', 93536159095, 'COMUM')
			,('Roberto', 'rob@emai.com', '3110', 96418381050,'COMUM'); 


INSERT INTO Categorias (Categoria)
	VALUES	('Drama')
			,('Document�rio')
			,('Fic��o Cient�fica');

INSERT INTO Lancamentos (IdCategoria, Titulo, Sinopse, TempoDuracao, IdFormato, DataLancamento)
	VALUES	(4, 'Rei Le�o', 'O Rei Le�o, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno le�o que idolatra seu pai, o rei Mufasa, � fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irm�o de Mufasa e ex-herdeiro do trono, tem seus pr�prios planos. A batalha pela Pedra do Reino � repleta de trai��o, eventos tr�gicos e drama, o que acaba resultando no ex�lio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba ter� que crescer e voltar para recuperar o que � seu por direito.', 118, 1, '2019-07-18')
			,(6, 'Deuses Americanos', 'Os seres b�blicos e mitol�gicos est�o perdendo cada vez mais fi�is para novos deuses, que refletem o amor da sociedade por dinheiro, tecnologia, celebridades e drogas. Shadow Moon � um ex-vigarista que agora serve como seguran�a e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que �, na verdade, um dos velhos deuses, e est� na Terra em uma miss�o: reunir for�as para lutar contra as novas entidades.', 60, 2, '2017-04-30')
			,(6, 'La Casa de Papel 3 temp', 'Oito habilidosos ladr�es se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da hist�ria e levar com eles mais de 2 bilh�es de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como ref�m, al�m dos agentes da for�a de elite da pol�cia, que far�o de tudo para que a investida dos criminosos fracasse.', 45, 2, '2019-07-19');

DELETE FROM Lancamentos 
WHERE IdLancamento = 5;

UPDATE Lancamentos
SET Titulo = 'La Casa de Papel - 3� Temporada'
WHERE IdLancamento = 6;

UPDATE Lancamentos
SET DataLancamento = '1994-07-08'
WHERE IdLancamento = 4;

UPDATE Usuarios
SET Permissao = 'ADMINISTRADOR'
WHERE IdUsuario = 3;

INSERT INTO Veiculos (Veiculo)
	VALUES	('Cinema')
			,('Netflix')
			,('Amazon')
			,('VHS');

SELECT * FROM Usuarios

SELECT * FROM Lancamentos ORDER BY IdLancamento ASC

UPDATE Lancamentos
SET IdVeiculos = 4
WHERE IdLancamento = 4;

UPDATE Lancamentos
SET IdVeiculos = 2
WHERE IdLancamento = 6;
