# Resolução da Prova Prática Banco de Dados

## 1ª Questão
Faça um comando SQL para matricular o aluno “Pedro César” no curso de
Informática. Os dados devem ser inseridos na tabela TB_MATRÍCULA.

```sql
insert into tb_aluno(cod_aluno,nome_aluno,ano_nasc,email,sexo)
values(4, 'Pedro César', NULL, null,'M');
insert into tb_matricula(cod_curso, cod_aluno)
values(4, 4)
```
## Resultado esperado

<img src="./q1DB.png">

## 2ª Questão
Escreva um comando SQL que retorne os nomes dos alunos e do(s) cursos em
que estão matriculados. Os dados deverão estar ordenados pelo nome do curso.

```sql
select tb_aluno.nome_aluno, tb_curso.nome_curso
FROM tb_aluno
INNER JOIN tb_matricula
ON tb_aluno.cod_aluno = tb_matricula.cod_aluno
INNER JOIN tb_curso
ON tb_curso.cod_curso = tb_matricula.cod_curso
```
## Resultado esperado

<img src="./q2DB.png">

## 3ª Questão
Crie um comando SQL que retorne o e-mail de todos os alunos maiores de idade.

```sql
select email
from tb_aluno where 2022 - ano_nasc >= 18
```

## Resultado esperado

<img src="./q3DB.png">

## 4ª Questão
Desenvolva um comando SQL que mostre o total de alunos.

```sql
select count(cod_aluno)
from tb_aluno
```
## Resultado esperado

<img src="./q4DB.png">