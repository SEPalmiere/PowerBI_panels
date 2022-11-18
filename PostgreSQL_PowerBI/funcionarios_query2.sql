update rh."TB_FUNC" set numero_filhos = null where numero_filhos = 'NA';

select * from rh."TB_FUNC" where numero_filhos = 'NA';

select * from rh."TB_FUNC";

select * from rh."TB_FUNC" where numero_filhos is null;

delete from rh."TB_FUNC" where numero_filhos is null;

commit;

select * from rh."TB_FUNC" where grau_instrucao = 'ensino medio' order by idade desc;

select * from rh."TB_FUNC" order by idade desc, salario_hora desc;

select min(salario_hora), max(salario_hora), avg(salario_hora), sum(salario_hora) from rh."TB_FUNC" ;

select distinct reg_procedencia from rh."TB_FUNC";

select avg(salario_hora) from rh."TB_FUNC" group by reg_procedencia;

select round(avg(salario_hora)), grau_instrucao from rh."TB_FUNC" group by grau_instrucao;

