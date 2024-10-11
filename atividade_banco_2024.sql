use db_atividade_view;
CREATE VIEW s1 AS 
SELECT aluno.nome as nome_aluno, disciplina.nome as nome_disciplina, curso.nome as curso_nome
FROM aluno
INNER JOIN matricula  ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
INNER JOIN curso ON disciplina.id_curso = curso.id_curso;
CREATE VIEW s2 AS 
SELECT disciplina.nome AS nome_disciplina, COUNT(aluno.id_aluno) AS numero_de_alunos
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
INNER JOIN curso ON disciplina.id_curso = curso.id_curso
GROUP BY disciplina.nome
ORDER BY nome_disciplina;
CREATE VIEW s3 AS 
SELECT aluno.nome as alunos , disciplina.nome as discplinas ,  matricula.status as status
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina;
CREATE VIEW s4 AS 
 SELECT professor.nome as nome_professores, disciplina.nome as disciplina, turma. horario as horario_professores
 from professor
 inner join turma on professor.id_professor = turma.id_professor
 inner join disciplina on turma.id_disciplina = disciplina.id_disciplina;
CREATE VIEW s5 AS 
SELECT nome,  COUNT(data_nascimento)  
from aluno
where data_nascimento>20
group by data_nascimento
order by data_nascimento;
CREATE VIEW s6 AS 
SELECT curso.nome, COUNT(disciplina.id_curso) AS total_disciplinas, curso.carga_horaria, curso.id_curso
FROM curso
INNER JOIN disciplina ON disciplina.id_curso = curso.id_curso
GROUP BY curso.nome, curso.carga_horaria, curso.id_curso
ORDER BY curso.id_curso;
CREATE VIEW s7 AS
SELECT nome,especialidade
from professor;
CREATE VIEW s8 AS
SELECT aluno.nome, COUNT(disciplina.id_disciplina) AS total_disciplinas
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
GROUP BY aluno.nome
ORDER BY aluno.nome;

CREATE VIEW s9 AS
SELECT aluno.nome,  COUNT(disciplina.id_disciplina)
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
WHERE matricula.status = "Concluído"
GROUP BY aluno.nome
ORDER BY aluno.nome;

CREATE VIEW s10 AS
SELECT * FROM turma
where semestre = '2024.1';

CREATE VIEW s11 AS
SELECT aluno.nome, matricula.status as matricula
FROM aluno
INNER JOIN matricula 
ON aluno.id_aluno = matricula.id_aluno
where matricula.status = "Trancado"
;

CREATE VIEW s12 AS
SELECT disciplina.nome , curso.id_curso
from aluno
INNER JOIN matricula 
ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
INNER JOIN curso ON disciplina.id_curso = curso.id_curso
where curso.id_curso is null ;

CREATE VIEW s13 AS
SELECT matricula.status, COUNT(aluno.id_aluno) AS quantidade_alunos
FROM matricula
INNER JOIN aluno ON matricula.id_aluno = aluno.id_aluno
GROUP BY matricula.status;

CREATE VIEW s14 AS
SELECT professor.especialidade, COUNT(professor.id_professor) AS quantidade_professores
FROM professor
GROUP BY professor.especialidade;

CREATE VIEW s15 AS
SELECT aluno.nome, 
       YEAR(CURDATE()) - YEAR(aluno.data_nascimento) AS idade
FROM aluno; -- pesquisada --

CREATE VIEW s16 AS
SELECT aluno.nome, MAX(matricula.data_matricula) AS data_ultima_matricula
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
GROUP BY aluno.nome;

CREATE VIEW s17 AS
SELECT disciplina.nome
FROM disciplina
INNER JOIN curso ON disciplina.id_curso = curso.id_curso
WHERE curso.nome = 'Engenharia de Software';

CREATE VIEW s18 AS
SELECT professor.id_professor, professor.nome
FROM professor
LEFT JOIN turma ON professor.id_professor = turma.id_professor
WHERE turma.id_turma IS NULL;

CREATE VIEW s19 AS
SELECT aluno.nome, aluno.cpf, aluno.email
FROM aluno;

CREATE VIEW s20 AS
SELECT professor.id_professor, professor.nome, COUNT(disciplina.id_disciplina) AS total_disciplinas
FROM professor
LEFT JOIN turma ON professor.id_professor = turma.id_professor
LEFT JOIN disciplina ON turma.id_disciplina = disciplina.id_disciplina
GROUP BY professor.id_professor, professor.nome;