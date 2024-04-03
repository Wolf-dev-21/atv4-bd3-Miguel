use atv4_bd3_miguel;

delimiter $

create procedure turma_aluno()
begin
select
	turma.sigla,
    turma.nome,
    
    aluno.nome,
    aluno.telefone_aluno,
    aluno.telefone_responsavel,
    aluno.email,
    aluno.data_nascimento
    from tbl_aluno
    inner join tbl_turma 
    on cod_turma;

end
$

delimiter $$

create procedure lista_aluno()
begin
select
	turma.sigla,
    turma.nome,
    
    aluno.nome,
    aluno.telefone_aluno,
    aluno.telefone_responsavel,
    aluno.email,
    aluno.data_nascimento
    from tbl_aluno
    inner join tbl_turma 
    on cod_turma
    where cod_aluno;

end
$$

delimiter $$$
	
create procedure contagem(out cod_aluno int (10))
	begin
		
        select count(cod_aluno) into contagem_alunos from tbl_aluno;
        
    end
$$$    

call contagem_(@cod_aluno);
select @cod_aluno;