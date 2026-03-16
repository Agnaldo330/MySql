use systemguina;

select * from meus_livros;
select * from opnioes_livros;

select meus_livros.titulo, opnioes_livros.comentario from meus_livros, opnioes_livros
where meus_livros.id = opnioes_livros.id;