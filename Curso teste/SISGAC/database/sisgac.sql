--
-- PostgreSQL database dump
--

-- Started on 2007-05-30 18:25:17 Hora oficial do Brasil

--SET client_encoding = 'ISO_8859_5';
--SET check_function_bodies = false;
--SET client_min_messages = warning;

--
-- TOC entry 1594 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'Standard public schema';


--
-- TOC entry 267 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: 
--

--CREATE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

--
-- TOC entry 1201 (class 1259 OID 16528)
-- Dependencies: 5
-- Name: aluno_atividade_complementar_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aluno_atividade_complementar_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.aluno_atividade_complementar_sequence_id OWNER TO postgres;

--
-- TOC entry 1596 (class 0 OID 0)
-- Dependencies: 1201
-- Name: aluno_atividade_complementar_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aluno_atividade_complementar_sequence_id', 2, true);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1202 (class 1259 OID 16530)
-- Dependencies: 1542 5
-- Name: aluno_atividade_complementar; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE aluno_atividade_complementar (
    id integer DEFAULT nextval('aluno_atividade_complementar_sequence_id'::regclass) NOT NULL,
    aluno_id integer NOT NULL,
    atividade_complementar_id integer NOT NULL
);


ALTER TABLE public.aluno_atividade_complementar OWNER TO postgres;

--
-- TOC entry 1203 (class 1259 OID 16533)
-- Dependencies: 5
-- Name: aluno_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aluno_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.aluno_sequence_id OWNER TO postgres;

--
-- TOC entry 1597 (class 0 OID 0)
-- Dependencies: 1203
-- Name: aluno_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aluno_sequence_id', 9, true);


--
-- TOC entry 1204 (class 1259 OID 16535)
-- Dependencies: 1543 5
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alunos (
    id integer DEFAULT nextval('aluno_sequence_id'::regclass) NOT NULL,
    nome character varying(70) NOT NULL,
    matricula integer NOT NULL,
    ingresso character varying(7),
    taxa_aproveitamento integer
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- TOC entry 1205 (class 1259 OID 16538)
-- Dependencies: 5
-- Name: atividade_complementar_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE atividade_complementar_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.atividade_complementar_sequence_id OWNER TO postgres;

--
-- TOC entry 1598 (class 0 OID 0)
-- Dependencies: 1205
-- Name: atividade_complementar_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('atividade_complementar_sequence_id', 1, true);


--
-- TOC entry 1206 (class 1259 OID 16540)
-- Dependencies: 1544 5
-- Name: atividade_complementar; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE atividade_complementar (
    id integer DEFAULT nextval('atividade_complementar_sequence_id'::regclass) NOT NULL,
    nome character varying(70) NOT NULL,
    taxa_equivalencia integer NOT NULL,
    descricao character varying(255),
    status boolean,
    categoria_id integer
);


ALTER TABLE public.atividade_complementar OWNER TO postgres;

--
-- TOC entry 1207 (class 1259 OID 16543)
-- Dependencies: 5
-- Name: categoria_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categoria_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.categoria_sequence_id OWNER TO postgres;

--
-- TOC entry 1599 (class 0 OID 0)
-- Dependencies: 1207
-- Name: categoria_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categoria_sequence_id', 1, true);


--
-- TOC entry 1208 (class 1259 OID 16545)
-- Dependencies: 1545 5
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categoria (
    id integer DEFAULT nextval('categoria_sequence_id'::regclass) NOT NULL,
    nome character varying(70) NOT NULL,
    maximo_horas integer NOT NULL,
    status boolean
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 1209 (class 1259 OID 16548)
-- Dependencies: 5
-- Name: curriculo_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curriculo_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.curriculo_sequence_id OWNER TO postgres;

--
-- TOC entry 1600 (class 0 OID 0)
-- Dependencies: 1209
-- Name: curriculo_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curriculo_sequence_id', 1, true);


--
-- TOC entry 1210 (class 1259 OID 16550)
-- Dependencies: 1546 5
-- Name: curriculo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curriculo (
    id integer DEFAULT nextval('curriculo_sequence_id'::regclass) NOT NULL,
    carga_horaria integer NOT NULL,
    implantacao character varying(50) NOT NULL,
    numero_disciplinas integer NOT NULL,
    curso_id integer,
    nome character varying(50) NOT NULL
);


ALTER TABLE public.curriculo OWNER TO postgres;

--
-- TOC entry 1213 (class 1259 OID 16558)
-- Dependencies: 5
-- Name: curso_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curso_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.curso_sequence_id OWNER TO postgres;

--
-- TOC entry 1601 (class 0 OID 0)
-- Dependencies: 1213
-- Name: curso_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curso_sequence_id', 2, true);


--
-- TOC entry 1214 (class 1259 OID 16560)
-- Dependencies: 1548 5
-- Name: curso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curso (
    id integer DEFAULT nextval('curso_sequence_id'::regclass) NOT NULL,
    nome character varying(70) NOT NULL,
    descricao character varying(255),
    status boolean
);


ALTER TABLE public.curso OWNER TO postgres;

--
-- TOC entry 1215 (class 1259 OID 16563)
-- Dependencies: 5
-- Name: curso_aluno_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curso_aluno_sequence_id
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.curso_aluno_sequence_id OWNER TO postgres;

--
-- TOC entry 1602 (class 0 OID 0)
-- Dependencies: 1215
-- Name: curso_aluno_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curso_aluno_sequence_id', 3, true);


--
-- TOC entry 1216 (class 1259 OID 16565)
-- Dependencies: 1549 5
-- Name: curso_aluno; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curso_aluno (
    aluno_id integer NOT NULL,
    curso_id integer NOT NULL,
    id integer DEFAULT nextval('curso_aluno_sequence_id'::regclass) NOT NULL
);


ALTER TABLE public.curso_aluno OWNER TO postgres;

--
-- TOC entry 1211 (class 1259 OID 16553)
-- Dependencies: 5
-- Name: curso_curriculo_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curso_curriculo_sequence_id
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.curso_curriculo_sequence_id OWNER TO postgres;

--
-- TOC entry 1603 (class 0 OID 0)
-- Dependencies: 1211
-- Name: curso_curriculo_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curso_curriculo_sequence_id', 1, false);


--
-- TOC entry 1212 (class 1259 OID 16555)
-- Dependencies: 1547 5
-- Name: curso_curriculo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curso_curriculo (
    id integer DEFAULT nextval('curso_curriculo_sequence_id'::regclass) NOT NULL,
    curriculo_id integer NOT NULL,
    curso_id integer NOT NULL
);


ALTER TABLE public.curso_curriculo OWNER TO postgres;

--
-- TOC entry 1218 (class 1259 OID 16570)
-- Dependencies: 5
-- Name: instituicao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instituicao (
    id serial NOT NULL,
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


ALTER TABLE public.instituicao OWNER TO postgres;

--
-- TOC entry 1604 (class 0 OID 0)
-- Dependencies: 1217
-- Name: instituicao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('instituicao', 'id'), 1, false);


--
-- TOC entry 1219 (class 1259 OID 16573)
-- Dependencies: 5
-- Name: lancamento_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lancamento_sequence_id
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lancamento_sequence_id OWNER TO postgres;

--
-- TOC entry 1605 (class 0 OID 0)
-- Dependencies: 1219
-- Name: lancamento_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lancamento_sequence_id', 1, false);


--
-- TOC entry 1220 (class 1259 OID 16575)
-- Dependencies: 1551 5
-- Name: lancamento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lancamento (
    id integer DEFAULT nextval('lancamento_sequence_id'::regclass) NOT NULL,
    data_inicio character varying(10) NOT NULL,
    data_fim character varying(10) NOT NULL,
    carga_horario integer,
    hora_aproveitamento integer,
    aluno_id integer,
    atividade_complementar_id integer
);


ALTER TABLE public.lancamento OWNER TO postgres;

--
-- TOC entry 1582 (class 0 OID 16530)
-- Dependencies: 1202
-- Data for Name: aluno_atividade_complementar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aluno_atividade_complementar (id, aluno_id, atividade_complementar_id) VALUES (1, 8, 1);
INSERT INTO aluno_atividade_complementar (id, aluno_id, atividade_complementar_id) VALUES (2, 9, 1);


--
-- TOC entry 1583 (class 0 OID 16535)
-- Dependencies: 1204
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (1, '1', 1, '1111-1', 1);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (2, '1', 1, '1111-1', 1);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (3, '2', 2, '2222-2', 2);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (4, '1', 1, '1111-1', 11);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (5, '2', 2, '2222-2', 2);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (6, '3', 3, '3333-3', 3);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (7, '5', 5, '5555-5', 5);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (8, '99', 99, '9999-9', 99);
INSERT INTO alunos (id, nome, matricula, ingresso, taxa_aproveitamento) VALUES (9, '8887', 887, '8787-8', 7878);


--
-- TOC entry 1584 (class 0 OID 16540)
-- Dependencies: 1206
-- Data for Name: atividade_complementar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO atividade_complementar (id, nome, taxa_equivalencia, descricao, status, categoria_id) VALUES (1, 'TESTE', 1, '1', NULL, 1);


--
-- TOC entry 1585 (class 0 OID 16545)
-- Dependencies: 1208
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categoria (id, nome, maximo_horas, status) VALUES (1, 'TESTE', 10, NULL);


--
-- TOC entry 1586 (class 0 OID 16550)
-- Dependencies: 1210
-- Data for Name: curriculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO curriculo (id, carga_horaria, implantacao, numero_disciplinas, curso_id, nome) VALUES (1, 11, '1111-1', 11, NULL, 'HHERYHT');


--
-- TOC entry 1588 (class 0 OID 16560)
-- Dependencies: 1214
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO curso (id, nome, descricao, status) VALUES (1, 'TESTE', '', true);
INSERT INTO curso (id, nome, descricao, status) VALUES (2, '2222', 'FEFWE56F4EW54', true);


--
-- TOC entry 1589 (class 0 OID 16565)
-- Dependencies: 1216
-- Data for Name: curso_aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO curso_aluno (aluno_id, curso_id, id) VALUES (7, 1, 1);
INSERT INTO curso_aluno (aluno_id, curso_id, id) VALUES (8, 1, 2);
INSERT INTO curso_aluno (aluno_id, curso_id, id) VALUES (9, 2, 3);


--
-- TOC entry 1587 (class 0 OID 16555)
-- Dependencies: 1212
-- Data for Name: curso_curriculo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1590 (class 0 OID 16570)
-- Dependencies: 1218
-- Data for Name: instituicao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1591 (class 0 OID 16575)
-- Dependencies: 1220
-- Data for Name: lancamento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1553 (class 2606 OID 16579)
-- Dependencies: 1202 1202
-- Name: aluno_atividade_complementar_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aluno_atividade_complementar
    ADD CONSTRAINT aluno_atividade_complementar_id PRIMARY KEY (id);


--
-- TOC entry 1555 (class 2606 OID 16581)
-- Dependencies: 1204 1204
-- Name: aluno_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alunos
    ADD CONSTRAINT aluno_id PRIMARY KEY (id);


--
-- TOC entry 1557 (class 2606 OID 16583)
-- Dependencies: 1206 1206
-- Name: atividade_complementar_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY atividade_complementar
    ADD CONSTRAINT atividade_complementar_id PRIMARY KEY (id);


--
-- TOC entry 1559 (class 2606 OID 16585)
-- Dependencies: 1208 1208
-- Name: categoria_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_id PRIMARY KEY (id);


--
-- TOC entry 1563 (class 2606 OID 16587)
-- Dependencies: 1212 1212
-- Name: curriculo_curso_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curso_curriculo
    ADD CONSTRAINT curriculo_curso_id PRIMARY KEY (id);


--
-- TOC entry 1561 (class 2606 OID 16589)
-- Dependencies: 1210 1210
-- Name: curriculo_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curriculo
    ADD CONSTRAINT curriculo_id PRIMARY KEY (id);


--
-- TOC entry 1567 (class 2606 OID 16591)
-- Dependencies: 1216 1216
-- Name: curso_aluno_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curso_aluno
    ADD CONSTRAINT curso_aluno_id PRIMARY KEY (id);


--
-- TOC entry 1565 (class 2606 OID 16593)
-- Dependencies: 1214 1214
-- Name: curso_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curso
    ADD CONSTRAINT curso_id PRIMARY KEY (id);


--
-- TOC entry 1569 (class 2606 OID 16595)
-- Dependencies: 1218 1218
-- Name: instituicao_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instituicao
    ADD CONSTRAINT instituicao_id_pk PRIMARY KEY (id);


--
-- TOC entry 1571 (class 2606 OID 16597)
-- Dependencies: 1220 1220
-- Name: lancamento_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lancamento
    ADD CONSTRAINT lancamento_id PRIMARY KEY (id);


--
-- TOC entry 1580 (class 2606 OID 16598)
-- Dependencies: 1204 1554 1220
-- Name: aluno_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lancamento
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1578 (class 2606 OID 16603)
-- Dependencies: 1216 1204 1554
-- Name: aluno_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curso_aluno
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1572 (class 2606 OID 16608)
-- Dependencies: 1204 1554 1202
-- Name: aluno_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aluno_atividade_complementar
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1573 (class 2606 OID 16613)
-- Dependencies: 1206 1556 1202
-- Name: atividade_complementar_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aluno_atividade_complementar
    ADD CONSTRAINT atividade_complementar_id FOREIGN KEY (atividade_complementar_id) REFERENCES atividade_complementar(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1581 (class 2606 OID 16618)
-- Dependencies: 1220 1206 1556
-- Name: atividade_complementar_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lancamento
    ADD CONSTRAINT atividade_complementar_id FOREIGN KEY (atividade_complementar_id) REFERENCES atividade_complementar(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1574 (class 2606 OID 16623)
-- Dependencies: 1208 1558 1206
-- Name: categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY atividade_complementar
    ADD CONSTRAINT categoria_id FOREIGN KEY (categoria_id) REFERENCES categoria(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1576 (class 2606 OID 16628)
-- Dependencies: 1212 1210 1560
-- Name: curriculo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curso_curriculo
    ADD CONSTRAINT curriculo_id FOREIGN KEY (curriculo_id) REFERENCES curriculo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1579 (class 2606 OID 16633)
-- Dependencies: 1214 1564 1216
-- Name: curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curso_aluno
    ADD CONSTRAINT curso_id FOREIGN KEY (curso_id) REFERENCES curso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1575 (class 2606 OID 16638)
-- Dependencies: 1210 1214 1564
-- Name: curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curriculo
    ADD CONSTRAINT curso_id FOREIGN KEY (curso_id) REFERENCES curso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1577 (class 2606 OID 16643)
-- Dependencies: 1212 1214 1564
-- Name: curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curso_curriculo
    ADD CONSTRAINT curso_id FOREIGN KEY (curso_id) REFERENCES curso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1595 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2007-05-30 18:25:17 Hora oficial do Brasil

--
-- PostgreSQL database dump complete
--

