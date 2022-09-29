
# Modelagem do Banco de Dados
Repositório para modelagem do banco de dados

<div align="center">
  <img src="Universidade/Lógico_1.png"/>
</div>

# Descrição das tabelas do modelo

<h2>Tabela <i>Aluno</i></h2>
A tabela <i>aluno</i> descreve dentro no modelo relacional elaborado, onde e quais atributos iremos manter no banco
sobre dos alunos, no banco de dados da Universidade.
Nela possuímos os atributos/colunas:
<ul>
    <p>MAT : Chave primária da tabela.</p>
    <p>nome :Nome de cada aluno.</p>
    <p>endereco: Responsável para armazenar o endereço do aluno.</p>
    <p>cidade: Responsável para armazenar a cidade em que o aluno nasceu.</p>
</ul>

<h2>Tabela <i>Disciplinas</i></h2>
A tabela <i>aluno</i> descreve dentro no modelo relacional elaborado, onde e quais atributos iremos manter no banco
sobre as disciplinas, no banco de dados da Universidade.
<ul>
  <p>cod_disc :Chave primária da tabela.</p>
    <p>nome_disc : Nome da disciplina.</p>
    <p>carga_hor : Carga horária das disciplinas(aula).</p>
</ul>

<h2>Tabela <i> Professores</i></h2>
A tabela <i>aluno</i> descreve dentro no modelo relacional elaborado, onde e quais atributos iremos manter no banco
sobre dos professores, no banco de dados da Universidade.
<ul>
  <p>prof : Chave primária da tabela.</p>
    <p>nome : Nome do professor</p>
    <p>endereco : Responsavel por armazenar o endereço do professor</p>
    <p>cidade :Responsavel por armazenar a cidade em que o professor nasceu.</p>
 </ul>
 
<h2>Tabela <i> Contem</i></h2>
A tabela <i>aluno</i> descreve dentro no modelo relacional elaborado, é responsavel por manter de relacionar as tabelas "professores" e  "turma", no banco de dados da Universidade.
<ul>
    <p>fk_professores_cod_prof : Chave estrangeira responsavel por fazer referência a tabela de professores references professores(cod_prof).</p>
    <p>fk_turma_cod_turma : Chave estrangeira responsal por fazer referência a tabela turma references aluno(cod_turma).</p>
</ul>

<h2>Tabela <i>Histórico</i></h2>
A tabela <i>aluno</i> descreve dentro no modelo relacional elaborado, onde e quais atributos iremos manter no banco
sobre dos alunos, no banco de dados da Universidade.
<ul>
    <p>MAT : Responvesal por fazer referência a matricula do aluno references aluno(MAT).</p>
    <p>ano : chave primária da tabela, responsavel por armazenar o ano em que o aluno está estudando no momento</p>
    <p>fk_disciplinas_cod_disc : Chave estrangeira responsavel por fazer referência a tabela de disciplinas references discplinas(cod_prof).</p>
    <p>fk_professores_cod_prof : Chave estrangeira responsavel por fazer referência a tabela de professores references professores(cod_prof).</p>
    <p>fk_turma_cod_turma : Chave estrangeira responsal por fazer referência a tabela turma references aluno(cod_turma).</p>
    <p>frequencia : Responsavel por armazenar a frequencia do aluno</p>
    <p>nota : Responsavel por armazenar do périodo em que o aluno está na universidade</p>
</ul>
