SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: encounter_monster_instances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.encounter_monster_instances (
    id bigint NOT NULL,
    encounter_id bigint,
    monster_instance_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: encounter_monster_instances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.encounter_monster_instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: encounter_monster_instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.encounter_monster_instances_id_seq OWNED BY public.encounter_monster_instances.id;


--
-- Name: encounter_pcs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.encounter_pcs (
    id bigint NOT NULL,
    encounter_id bigint,
    player_character_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: encounter_pcs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.encounter_pcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: encounter_pcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.encounter_pcs_id_seq OWNED BY public.encounter_pcs.id;


--
-- Name: encounters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.encounters (
    id bigint NOT NULL,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: encounters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.encounters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: encounters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.encounters_id_seq OWNED BY public.encounters.id;


--
-- Name: monster_instances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.monster_instances (
    id bigint NOT NULL,
    monster_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: monster_instances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.monster_instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: monster_instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.monster_instances_id_seq OWNED BY public.monster_instances.id;


--
-- Name: monsters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.monsters (
    id bigint NOT NULL,
    name character varying,
    ac character varying,
    hp character varying,
    image_data text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    tags character varying
);


--
-- Name: monsters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.monsters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: monsters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.monsters_id_seq OWNED BY public.monsters.id;


--
-- Name: player_characters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.player_characters (
    id bigint NOT NULL,
    character_name character varying,
    player_name character varying,
    ac character varying,
    hp integer,
    image_data text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: player_characters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.player_characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: player_characters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.player_characters_id_seq OWNED BY public.player_characters.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: encounter_monster_instances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_monster_instances ALTER COLUMN id SET DEFAULT nextval('public.encounter_monster_instances_id_seq'::regclass);


--
-- Name: encounter_pcs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_pcs ALTER COLUMN id SET DEFAULT nextval('public.encounter_pcs_id_seq'::regclass);


--
-- Name: encounters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounters ALTER COLUMN id SET DEFAULT nextval('public.encounters_id_seq'::regclass);


--
-- Name: monster_instances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.monster_instances ALTER COLUMN id SET DEFAULT nextval('public.monster_instances_id_seq'::regclass);


--
-- Name: monsters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.monsters ALTER COLUMN id SET DEFAULT nextval('public.monsters_id_seq'::regclass);


--
-- Name: player_characters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.player_characters ALTER COLUMN id SET DEFAULT nextval('public.player_characters_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: encounter_monster_instances encounter_monster_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_monster_instances
    ADD CONSTRAINT encounter_monster_instances_pkey PRIMARY KEY (id);


--
-- Name: encounter_pcs encounter_pcs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_pcs
    ADD CONSTRAINT encounter_pcs_pkey PRIMARY KEY (id);


--
-- Name: encounters encounters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounters
    ADD CONSTRAINT encounters_pkey PRIMARY KEY (id);


--
-- Name: monster_instances monster_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.monster_instances
    ADD CONSTRAINT monster_instances_pkey PRIMARY KEY (id);


--
-- Name: monsters monsters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_pkey PRIMARY KEY (id);


--
-- Name: player_characters player_characters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.player_characters
    ADD CONSTRAINT player_characters_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_encounter_monster_instances_on_encounter_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_encounter_monster_instances_on_encounter_id ON public.encounter_monster_instances USING btree (encounter_id);


--
-- Name: index_encounter_monster_instances_on_monster_instance_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_encounter_monster_instances_on_monster_instance_id ON public.encounter_monster_instances USING btree (monster_instance_id);


--
-- Name: index_encounter_pcs_on_encounter_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_encounter_pcs_on_encounter_id ON public.encounter_pcs USING btree (encounter_id);


--
-- Name: index_encounter_pcs_on_player_character_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_encounter_pcs_on_player_character_id ON public.encounter_pcs USING btree (player_character_id);


--
-- Name: index_monster_instances_on_monster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_monster_instances_on_monster_id ON public.monster_instances USING btree (monster_id);


--
-- Name: encounter_monster_instances fk_rails_0bf397a1c1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_monster_instances
    ADD CONSTRAINT fk_rails_0bf397a1c1 FOREIGN KEY (encounter_id) REFERENCES public.encounters(id);


--
-- Name: encounter_pcs fk_rails_874d9570bb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_pcs
    ADD CONSTRAINT fk_rails_874d9570bb FOREIGN KEY (encounter_id) REFERENCES public.encounters(id);


--
-- Name: encounter_pcs fk_rails_bc064f77e6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_pcs
    ADD CONSTRAINT fk_rails_bc064f77e6 FOREIGN KEY (player_character_id) REFERENCES public.player_characters(id);


--
-- Name: encounter_monster_instances fk_rails_e55aea2077; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.encounter_monster_instances
    ADD CONSTRAINT fk_rails_e55aea2077 FOREIGN KEY (monster_instance_id) REFERENCES public.monster_instances(id);


--
-- Name: monster_instances fk_rails_e717e9da30; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.monster_instances
    ADD CONSTRAINT fk_rails_e717e9da30 FOREIGN KEY (monster_id) REFERENCES public.monsters(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20181227'),
('201901021'),
('201901022'),
('20190103'),
('201901041'),
('201901042'),
('2019011105'),
('2019011106'),
('20190118055859'),
('20190118060145'),
('20190118061614'),
('20190118061752');


