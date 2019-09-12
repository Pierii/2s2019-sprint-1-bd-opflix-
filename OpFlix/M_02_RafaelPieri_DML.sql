USE M_OpFlix;

INSERT INTO Formatos (Formato)
	VALUES	('Filme')
			,('Série');

INSERT INTO Categorias (Categoria)
	VALUES	('Ação')
			,('Terror')
			,('Romance')
			,('Aventura')
			,('Comédia');

INSERT INTO Lancamentos (IdCategoria, Titulo, Sinopse, TempoDuracao, IdFormato, DataLancamento)
	VALUES	(4, 'Toy Story 4', 'Agora morando na casa da pequena Bonnie, Woody apresenta aos amigos o novo brinquedo construído por ela: Forky, baseado em um garfo de verdade. O novo posto de brinquedo não o agrada nem um pouco, o que faz com que Forky fuja de casa. Decidido a trazer de volta o atual brinquedo favorito de Bonnie, Woody parte em seu encalço e, no caminho, reencontra Bo Peep, que agora vive em um parque de diversões.', 100, 1, '2019-06-20')
			,(2, 'Histórias assustadoras para contar no escuro', 'No tranquilo povoado de Mill Valley, durante gerações, o legado sombrio da família Bellows cresceu enormemente. Sara Bellows, uma jovem que oculta horríveis segredos, transformou sua tortuosa vida em uma série de histórias macabras escritas em um livro, cuja particularidade é que as mesmas se tornam reais para um grupo de adolescentes que o encontram.', 111, 1,'2019-08-08')
			,(1, 'Rick and Morty', 'Rick é um velho mentalmente desequilibrado, mas dotado de um enorme talento científico, que recentemente se reconectou com sua família. Ele passa a maior parte do tempo envolvido em aventuras perigosas pelo espaço e em universos alternativos, sempre acompanhado de seu pequeno neto Morty. Toda essa confusão, aliada à já instável vida familiar de Morty, começa a causar muitos problemas com os seus familiares e a escola de Morty.', 22, 2, '2013-12-02');

INSERT INTO Usuarios (Nome, Email, Senha, CPF, Permissao)
	VALUES	('Erik', 'erik@email.com', '123456', 75144332013, 'ADMINISTRADOR')
			,('Cassiana', 'cassiana@email.com', '123456', 99817927059, 'ADMINISTRADOR')
			,('Helena', 'helena@emai.com', '123456', 93536159095, 'COMUM')
			,('Roberto', 'rob@emai.com', '3110', 96418381050,'COMUM'); 


INSERT INTO Categorias (Categoria)
	VALUES	('Drama')
			,('Documentário')
			,('Ficção Científica');

INSERT INTO Lancamentos (IdCategoria, Titulo, Sinopse, TempoDuracao, IdFormato, DataLancamento)
	VALUES	(4, 'Rei Leão', 'O Rei Leão, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno leão que idolatra seu pai, o rei Mufasa, é fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irmão de Mufasa e ex-herdeiro do trono, tem seus próprios planos. A batalha pela Pedra do Reino é repleta de traição, eventos trágicos e drama, o que acaba resultando no exílio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba terá que crescer e voltar para recuperar o que é seu por direito.', 118, 1, '2019-07-18')
			,(6, 'Deuses Americanos', 'Os seres bíblicos e mitológicos estão perdendo cada vez mais fiéis para novos deuses, que refletem o amor da sociedade por dinheiro, tecnologia, celebridades e drogas. Shadow Moon é um ex-vigarista que agora serve como segurança e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que é, na verdade, um dos velhos deuses, e está na Terra em uma missão: reunir forças para lutar contra as novas entidades.', 60, 2, '2017-04-30')
			,(6, 'La Casa de Papel 3 temp', 'Oito habilidosos ladrões se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da história e levar com eles mais de 2 bilhões de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como refém, além dos agentes da força de elite da polícia, que farão de tudo para que a investida dos criminosos fracasse.', 45, 2, '2019-07-19');

DELETE FROM Lancamentos 
WHERE IdLancamento = 5;

UPDATE Lancamentos
SET Titulo = 'La Casa de Papel - 3º Temporada'
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
