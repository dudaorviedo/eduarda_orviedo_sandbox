

CREATE TABLE aluno_atividade_complementar (
    id integer not null generated always as identity,
    aluno_id integer not null NOT NULL,
    atividade_complementar_id integer not null NOT NULL
);



CREATE TABLE alunos (
    id integer not null generated always as identity,
    nome character varying(70) NOT NULL,
    matricula integer NOT NULL,
    ingresso character varying(7),
    taxa_aproveitamento integer
);


CREATE TABLE atividade_complementar (
    id integer not null generated always as identity,
    nome character varying(70) NOT NULL,
    taxa_equivalencia integer NOT NULL,
    descricao character varying(255),
    status smallint,
    categoria_id integer not null
);



CREATE TABLE categoria (
    id integer not null generated always as identity,
    nome character varying(70) NOT NULL,
    maximo_horas integer NOT NULL,
    status smallint
);



CREATE TABLE curriculo (
    id integer not null generated always as identity,
    carga_horaria integer NOT NULL,
    implantacao character varying(50) NOT NULL,
    numero_disciplinas integer NOT NULL,
    curso_id integer not null,
    nome character varying(50) NOT NULL
);



CREATE TABLE curso (
    id integer not null generated always as identity,
    nome character varying(70) NOT NULL,
    descricao character varying(255),
    status smallint
);



CREATE TABLE curso_aluno (
    id integer not null generated always as identity,    
    aluno_id integer not null NOT NULL,
    curso_id integer not null NOT NULL
    
);



CREATE TABLE curso_curriculo (
    id integer not null generated always as identity,
    curriculo_id integer not null NOT NULL,
    curso_id integer not null NOT NULL
);



CREATE TABLE instituicao (
    id integer not null generated always as identity,
    endereco character varying(150),
    bairro character varying(30),
    cep character varying(9),
    cidade character varying(70),
    estado character varying(2),
    telefone character varying(9),
    ddd character varying(3),
    fax character varying(9),
    email character varying(100),
    webpage character varying(100),
    slogan character varying(70),
    departamento character varying(70),
    nome character varying(100)
);




CREATE TABLE lancamento (
    id integer not null generated always as identity,
    data_inicio character varying(10) NOT NULL,
    data_fim character varying(10) NOT NULL,
    carga_horario integer,
    hora_aproveitamento integer,
    aluno_id integer not null,
    atividade_complementar_id integer not null
);





ALTER TABLE aluno_atividade_complementar
    ADD CONSTRAINT aluno_atividade_complementar_id_pk PRIMARY KEY (id);


ALTER TABLE alunos
    ADD CONSTRAINT aluno_id_pk PRIMARY KEY (id);


ALTER TABLE atividade_complementar
    ADD CONSTRAINT atividade_complementar_id_pk PRIMARY KEY (id);



ALTER TABLE categoria
    ADD CONSTRAINT categoria_id_pk PRIMARY KEY (id);


ALTER TABLE curso_curriculo
    ADD CONSTRAINT curriculo_curso_id_pk PRIMARY KEY (id);


ALTER TABLE curriculo
    ADD CONSTRAINT curriculo_id_pk PRIMARY KEY (id);


ALTER TABLE curso_aluno
    ADD CONSTRAINT curso_aluno_id_pk PRIMARY KEY (id);


ALTER TABLE curso
    ADD CONSTRAINT curso_id_pk PRIMARY KEY (id);


ALTER TABLE instituicao
    ADD CONSTRAINT instituicao_id_pk PRIMARY KEY (id);


ALTER TABLE lancamento
    ADD CONSTRAINT lancamento_id_pk PRIMARY KEY (id);


ALTER TABLE lancamento
    ADD CONSTRAINT lancamento_aluno_id_fk FOREIGN KEY (aluno_id) REFERENCES alunos(id) ;


ALTER TABLE curso_aluno
    ADD CONSTRAINT curso_aluno_aluno_id_fk FOREIGN KEY (aluno_id) REFERENCES alunos(id) ;


ALTER TABLE aluno_atividade_complementar
    ADD CONSTRAINT aluno_atividade_complementar_aluno_id_fk FOREIGN KEY (aluno_id) REFERENCES alunos(id) ;


ALTER TABLE aluno_atividade_complementar
    ADD CONSTRAINT aluno_atividade_complementar_a_c_id_id_fk FOREIGN KEY (atividade_complementar_id) REFERENCES atividade_complementar(id) ;


ALTER TABLE lancamento
    ADD CONSTRAINT atividade_complementar_id_id_fk FOREIGN KEY (atividade_complementar_id) REFERENCES atividade_complementar(id) ;


ALTER TABLE atividade_complementar
    ADD CONSTRAINT categoria_id_id_fk FOREIGN KEY (categoria_id) REFERENCES categoria(id) ;


ALTER TABLE curso_curriculo
    ADD CONSTRAINT curso_curriculo_curriculo_id_id_fk FOREIGN KEY (curriculo_id) REFERENCES curriculo(id) ;


ALTER TABLE curso_aluno
    ADD CONSTRAINT curso_id_id_fk FOREIGN KEY (curso_id) REFERENCES curso(id) ;


ALTER TABLE curriculo
    ADD CONSTRAINT curriculo_curso_id_id_fk FOREIGN KEY (curso_id) REFERENCES curso(id) ;

ALTER TABLE curso_curriculo
    ADD CONSTRAINT curso_curriculo_curso_id_id_fk FOREIGN KEY (curso_id) REFERENCES curso(id) ;
