/* alter table rh."TB_FUNC" alter column numero_filhos type character varying (2); */

select * from rh."TB_FUNC";

select * from rh."TB_FUNC" limit 5;

select * from rh."TB_FUNC" fetch first 5 rows only;

select distinct * from rh."TB_FUNC";

select distinct numero_filhos from rh."TB_FUNC";

select * from rh."TB_FUNC" where idade = 30;

select count(*) from rh."TB_FUNC"; 

select count(*) from rh."TB_FUNC" where idade != 40; 

select * from rh."TB_FUNC" where idade < 30 and estado_civil = 'casado';

select * from rh."TB_FUNC" where idade between 30 and 35; 

select * from rh."TB_FUNC" where grau_instrucao like '%medio';

select * from rh."TB_FUNC" where idade in (20, 30, 40, 50);

select * from rh."TB_FUNC" where numero_filhos is null;

select * from rh."TB_FUNC" where numero_filhos is not null;

select * from rh."TB_FUNC" where numero_filhos = 'NA';

