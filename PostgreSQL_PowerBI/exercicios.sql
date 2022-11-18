/* EXERCICIO 1: Crie uma instrucao que retorne a media de idade, numero de filhos egrau de instrucao dos funcionarios
cujo salario horaesteja acima da media de todos os funcionarios.

Retorne os dados somente de funcionarios da capital e estado civil casado, com ordem decrescente
da media de idade. */

select * from rh."TB_FUNC";

select round(avg(idade)) from rh."TB_FUNC";

select round(avg(salario_hora)) from rh."TB_FUNC";

select numero_filhos, grau_instrucao from rh."TB_FUNC"
	where salario_hora > 12 and reg_procedencia = 'capital' and estado_civil = 'casado'
	order by idade desc;
	
select numero_filhos, grau_instrucao, round(avg(idade)) from rh."TB_FUNC"
	where salario_hora > 12 and reg_procedencia = 'capital' and estado_civil = 'casado'
	group by grau_instrucao, numero_filhos, idade
	order by round(avg(idade)) desc;
	
select numero_filhos, grau_instrucao, round(avg(idade)) from rh."TB_FUNC"
	where reg_procedencia = 'capital' and estado_civil = 'casado' 
	and salario_hora > (select avg(salario_hora) from rh."TB_FUNC")
	group by grau_instrucao, numero_filhos, idade
	order by round(avg(idade)) desc;
	
/* Exercicio 2: Retorne todos os registros dos funcionarios com 2 filhos */
select * from rh."TB_FUNC" where numero_filhos = '2';

select * from rh."TB_FUNC" where cast (numero_filhos as integer) = 2;

/* Exercicio 3: Retorne a média de salario hora por estado */

select * from rh."TB_FUNC";
select * from rh."TB_ENDERECO";

select round(avg(salario_hora)), estado 
	from rh."TB_FUNC" f, rh."TB_ENDERECO" e
	where f.id = e.id_func
	group by estado;
	
select round(avg(f.salario_hora)), e.estado 
	from rh."TB_FUNC" as f, rh."TB_ENDERECO" as e
	where f.id = e.id_func
	group by e.estado;
	
