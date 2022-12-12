-- 1
insert into funcionarios values(209, 'Vitoria', 'Santos', 'vitoria.santos@gmail.com', '991.025.599', '2004-02-06', '3', '4500.00', '101', '1');

select * from funcionarios where funcionario_id = 209;

-- 2
insert into funcionarios values(208, 'Fabiola', 'Costa', 'fabiola.costa@gmail.com', '987.703.819', '2002-08-05', '9', '5000.00', '103', '6');
insert into funcionarios values(210, 'Victor', 'Pérez', 'victor.perez@gmail.com', '945.961.147', '2002-07-05', '3', '4500.00', '101', '1');
insert into funcionarios values(211, 'Richard', 'Alves', 'richard.alves@gmail.com', '978.125.020', '2002-08-15', '3', '4500.00', '101', '1');
insert into funcionarios values(212, 'Kauã', 'Melo', 'kaua.melo@gmail.com', '978.156.751', '2002-08-20', '3', '4500.00', '101', '1');
insert into funcionarios values(213, 'Ítalo', 'Sousa', 'italo.sousa@gmail.com', '987.154.964', '2002-07-05', '3', '4500.00', '101', '1');
insert into funcionarios values(214, 'Gustavo', 'Goulart', 'gustavo.goulart@gmail.com', '910.654.448', '2002-07-25', '3', '4500.00', '101', '1');
insert into funcionarios values(215, 'Filipe', 'Damasceno', 'filipe.damascenoz@gmail.com', '980.065.748', '2002-08-17', '3', '4500.00', '101', '1');
select * from funcionarios where salario = 4500.00;

-- 3
select count(*) from funcionarios;

-- 4
select count(*) from funcionarios where departamento_id = 10;

-- 5
select avg(salario) from funcionarios where departamento_id = 6;

-- 6
select sum(salario) from funcionarios where departamento_id = 5;

-- 7
insert into departamento value (12, 'Inovação', '5400'); 

-- 8
select avg(salario) from funcionarios where departamento_id = 1 or departamento_id = 10;

insert into funcionarios values(216, 'William', 'Ferreira', 'william.ferreira@gmail.com', '980.065.748', '2002-10-25', '9', '6250.00', '101', '1');
insert into dependentes values(34, 'Inara', 'Ferreira', 'Cônjuge', 216);
insert into dependentes values(35, 'Gabriel', 'Ferreira', 'Filho(o)', 216);

insert into funcionarios values(217, 'Fernanda', 'Lima', 'fernanda.lima@gmail.com', '987.789.554', '2002-10-25', '9', '6250.00', '101', '1');
insert into dependentes values(36, 'Rodrigo', 'Lima', 'Cônjuge', 217);

insert into ocupacoes values(20, 'Gerente de Departamento', '4000.00', '8000.00');
insert into funcionarios values(218, 'Fabiana', 'Raulino', 'fabiana.raulino@gmail.com', '905.740.889', '2002-10-25', '20', '6250.00', '104', '12');
insert into dependentes values(37, 'Jorge', 'Raulino', 'Cônjuge', 218);
insert into dependentes values(38, 'Laura', 'Raulino', 'Filho(a)', 218);
insert into dependentes values(39, 'Maya', 'Raulino', 'Filho(a)', 218);

-- 9
select paises.pais_name, regiao.regiao_name from paises inner join regiao on paises.regiao_id = regiao.regiao_id;

-- 10
select funcionarios.primeiro_nome, funcionarios.sobrenome from dependentes inner join funcionarios on dependentes.funcionario_id = funcionarios.funcionario_id where dependentes.primeiro_nome like'%Joe%' and dependentes.sobrenome like '%Sciarra%';

-- 11
select dependentes.primeiro_nome, dependentes.parentesco from dependentes inner join funcionarios on dependentes.funcionario_id = funcionarios.funcionario_id where funcionarios.primeiro_nome like 'Jose Manuel';

-- 12
select regiao.regiao_name, count(paises.regiao_id) from paises inner join regiao on regiao.regiao_id = paises.regiao_id group by regiao.regiao_id;

select regiao.regiao_name, count(paises.regiao_id) as quantidade from paises inner join regiao on regiao.regiao_id = paises.regiao_id group by paises.regiao_id order by quantidade desc, paises.regiao_id desc limit 1;

-- 13 
select funcionarios.primeiro_nome, dependentes.primeiro_nome, dependentes.sobrenome, dependentes.parentesco from funcionarios inner join dependentes on funcionarios.funcionario_id = dependentes.funcionario_id order by funcionarios.primeiro_nome;

-- 14
select funcionarios.primeiro_nome, dependentes.parentesco, dependentes.primeiro_nome from funcionarios inner join dependentes on funcionarios.funcionario_id = dependentes.funcionario_id where funcionarios.primeiro_nome like '%Karen%' and funcionarios.sobrenome like '%Partners%';

-- 17
insert into departamento values ('13', 'Analista de Software', '1700');
select * from departamento where departamento_id = 13;

