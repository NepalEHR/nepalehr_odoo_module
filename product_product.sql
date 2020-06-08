--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.17
-- Dumped by pg_dump version 9.6.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: product_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_product (
    id integer NOT NULL,
    create_date timestamp without time zone,
    weight numeric,
    default_code character varying,
    product_tmpl_id integer NOT NULL,
    message_last_post timestamp without time zone,
    create_uid integer,
    write_uid integer,
    barcode character varying,
    volume double precision,
    write_date timestamp without time zone,
    active boolean,
    uuid character varying,
    mrp double precision,
    packing_sequence integer,
    deliver_in character varying
);


ALTER TABLE public.product_product OWNER TO postgres;

--
-- Name: TABLE product_product; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.product_product IS 'Product';


--
-- Name: COLUMN product_product.create_date; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.create_date IS 'Created on';


--
-- Name: COLUMN product_product.weight; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.weight IS 'Weight';


--
-- Name: COLUMN product_product.default_code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.default_code IS 'Internal Reference';


--
-- Name: COLUMN product_product.product_tmpl_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.product_tmpl_id IS 'Product Template';


--
-- Name: COLUMN product_product.message_last_post; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN product_product.create_uid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.create_uid IS 'Created by';


--
-- Name: COLUMN product_product.write_uid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_product.barcode; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.barcode IS 'Barcode';


--
-- Name: COLUMN product_product.volume; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.volume IS 'Volume';


--
-- Name: COLUMN product_product.write_date; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_product.active; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.active IS 'Active';


--
-- Name: COLUMN product_product.uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.uuid IS 'UUID';


--
-- Name: COLUMN product_product.mrp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.mrp IS 'MRP';


--
-- Name: COLUMN product_product.packing_sequence; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.packing_sequence IS 'Packing sequence';


--
-- Name: COLUMN product_product.deliver_in; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_product.deliver_in IS 'Deliver in';


--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;


--
-- Name: product_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: product_product product_product_barcode_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_barcode_uniq UNIQUE (barcode);


--
-- Name: product_product product_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);


--
-- Name: product_product_default_code_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_product_default_code_index ON public.product_product USING btree (default_code);


--
-- Name: product_product_product_tmpl_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_product_product_tmpl_id_index ON public.product_product USING btree (product_tmpl_id);


--
-- Name: product_product product_product_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: product_product product_product_product_tmpl_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_product_tmpl_id_fkey FOREIGN KEY (product_tmpl_id) REFERENCES public.product_template(id) ON DELETE CASCADE;


--
-- Name: product_product product_product_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

