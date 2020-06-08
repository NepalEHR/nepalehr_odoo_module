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
-- Name: product_template; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_template (
    id integer NOT NULL,
    warranty double precision,
    list_price numeric,
    weight numeric,
    sequence integer,
    color integer,
    write_uid integer,
    uom_id integer NOT NULL,
    description_purchase text,
    default_code character varying,
    create_date timestamp without time zone,
    create_uid integer,
    sale_ok boolean,
    purchase_ok boolean,
    message_last_post timestamp without time zone,
    company_id integer,
    uom_po_id integer NOT NULL,
    description_sale text,
    description text,
    volume double precision,
    write_date timestamp without time zone,
    active boolean,
    categ_id integer NOT NULL,
    name character varying NOT NULL,
    rental boolean,
    type character varying NOT NULL,
    sale_line_warn character varying NOT NULL,
    sale_line_warn_msg text,
    track_service character varying,
    invoice_policy character varying,
    expense_policy character varying,
    tracking character varying NOT NULL,
    location_id integer,
    description_picking text,
    warehouse_id integer,
    sale_delay double precision,
    use_time integer,
    life_time integer,
    removal_time integer,
    alert_time integer,
    uuid character varying,
    dhis2_code character varying,
    manufacturer integer,
    drug character varying,
    mrp double precision,
    purchase_line_warn_msg text,
    purchase_method character varying,
    purchase_line_warn character varying NOT NULL,
    pos_categ_id integer,
    to_weight boolean,
    available_in_pos boolean,
    insurance_medicine boolean,
    orphan_drug boolean,
    other_item boolean,
    medical_item boolean,
    antibiotic boolean,
    medicine_item boolean,
    bh boolean,
    org boolean,
    ch boolean,
    x_low_cost_eq boolean,
    x_formulary boolean,
    x_govt boolean,
    vertical_program boolean,
    physic_medicine boolean,
    dental_item boolean,
    lab_item boolean,
    namek character varying,
    stock_type_id integer,
    packing_sequence integer,
    deliver_in character varying,
    nehr_id character varying
);


ALTER TABLE public.product_template OWNER TO postgres;

--
-- Name: TABLE product_template; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.product_template IS 'Product Template';


--
-- Name: COLUMN product_template.warranty; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.warranty IS 'Warranty';


--
-- Name: COLUMN product_template.list_price; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.list_price IS 'Sale Price';


--
-- Name: COLUMN product_template.weight; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.weight IS 'Weight';


--
-- Name: COLUMN product_template.sequence; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.sequence IS 'Sequence';


--
-- Name: COLUMN product_template.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.color IS 'Color Index';


--
-- Name: COLUMN product_template.write_uid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_template.uom_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.uom_id IS 'Unit of Measure';


--
-- Name: COLUMN product_template.description_purchase; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.description_purchase IS 'Purchase Description';


--
-- Name: COLUMN product_template.default_code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.default_code IS 'Internal Reference';


--
-- Name: COLUMN product_template.create_date; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.create_date IS 'Created on';


--
-- Name: COLUMN product_template.create_uid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.create_uid IS 'Created by';


--
-- Name: COLUMN product_template.sale_ok; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.sale_ok IS 'Can be Sold';


--
-- Name: COLUMN product_template.purchase_ok; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.purchase_ok IS 'Can be Purchased';


--
-- Name: COLUMN product_template.message_last_post; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN product_template.company_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.company_id IS 'Company';


--
-- Name: COLUMN product_template.uom_po_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.uom_po_id IS 'Purchase Unit of Measure';


--
-- Name: COLUMN product_template.description_sale; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.description_sale IS 'Sale Description';


--
-- Name: COLUMN product_template.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.description IS 'Description';


--
-- Name: COLUMN product_template.volume; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.volume IS 'Volume';


--
-- Name: COLUMN product_template.write_date; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_template.active; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.active IS 'Active';


--
-- Name: COLUMN product_template.categ_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.categ_id IS 'Internal Category';


--
-- Name: COLUMN product_template.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.name IS 'Name';


--
-- Name: COLUMN product_template.rental; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.rental IS 'Can be Rent';


--
-- Name: COLUMN product_template.type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.type IS 'Product Type';


--
-- Name: COLUMN product_template.sale_line_warn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.sale_line_warn IS 'Sales Order Line';


--
-- Name: COLUMN product_template.sale_line_warn_msg; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.sale_line_warn_msg IS 'Message for Sales Order Line';


--
-- Name: COLUMN product_template.track_service; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.track_service IS 'Track Service';


--
-- Name: COLUMN product_template.invoice_policy; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.invoice_policy IS 'Invoicing Policy';


--
-- Name: COLUMN product_template.expense_policy; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.expense_policy IS 'Re-Invoice Expenses';


--
-- Name: COLUMN product_template.tracking; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.tracking IS 'Tracking';


--
-- Name: COLUMN product_template.location_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.location_id IS 'Location';


--
-- Name: COLUMN product_template.description_picking; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.description_picking IS 'Description on Picking';


--
-- Name: COLUMN product_template.warehouse_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.warehouse_id IS 'Warehouse';


--
-- Name: COLUMN product_template.sale_delay; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.sale_delay IS 'Customer Lead Time';


--
-- Name: COLUMN product_template.use_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.use_time IS 'Product Use Time';


--
-- Name: COLUMN product_template.life_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.life_time IS 'Product Life Time';


--
-- Name: COLUMN product_template.removal_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.removal_time IS 'Product Removal Time';


--
-- Name: COLUMN product_template.alert_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.alert_time IS 'Product Alert Time';


--
-- Name: COLUMN product_template.uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.uuid IS 'UUID';


--
-- Name: COLUMN product_template.dhis2_code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.dhis2_code IS 'DHIS2 Code';


--
-- Name: COLUMN product_template.manufacturer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.manufacturer IS 'Manufacturer';


--
-- Name: COLUMN product_template.drug; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.drug IS 'Drug Name';


--
-- Name: COLUMN product_template.mrp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.mrp IS 'MRP';


--
-- Name: COLUMN product_template.purchase_line_warn_msg; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.purchase_line_warn_msg IS 'Message for Purchase Order Line';


--
-- Name: COLUMN product_template.purchase_method; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.purchase_method IS 'Control Purchase Bills';


--
-- Name: COLUMN product_template.purchase_line_warn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.purchase_line_warn IS 'Purchase Order Line';


--
-- Name: COLUMN product_template.pos_categ_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.pos_categ_id IS 'Point of Sale Category';


--
-- Name: COLUMN product_template.to_weight; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.to_weight IS 'To Weigh With Scale';


--
-- Name: COLUMN product_template.available_in_pos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.available_in_pos IS 'Available in the Point of Sale';


--
-- Name: COLUMN product_template.insurance_medicine; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.insurance_medicine IS 'Insurance Medicine';


--
-- Name: COLUMN product_template.orphan_drug; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.orphan_drug IS 'Orphan Drug';


--
-- Name: COLUMN product_template.other_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.other_item IS 'Other Item';


--
-- Name: COLUMN product_template.medical_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.medical_item IS 'Medical Item';


--
-- Name: COLUMN product_template.antibiotic; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.antibiotic IS 'Antibiotics';


--
-- Name: COLUMN product_template.medicine_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.medicine_item IS 'Medicine';


--
-- Name: COLUMN product_template.bh; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.bh IS 'BH';


--
-- Name: COLUMN product_template.org; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.org IS 'Org';


--
-- Name: COLUMN product_template.ch; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.ch IS 'CH';


--
-- Name: COLUMN product_template.x_low_cost_eq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.x_low_cost_eq IS 'MOHP Essesntial Medicine';


--
-- Name: COLUMN product_template.x_formulary; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.x_formulary IS 'Formulary';


--
-- Name: COLUMN product_template.x_govt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.x_govt IS 'Government Supply';


--
-- Name: COLUMN product_template.vertical_program; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.vertical_program IS 'Vertical Program';


--
-- Name: COLUMN product_template.physic_medicine; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.physic_medicine IS 'Physic Medicine';


--
-- Name: COLUMN product_template.dental_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.dental_item IS 'Dental Item';


--
-- Name: COLUMN product_template.lab_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.lab_item IS 'Lab Item';


--
-- Name: COLUMN product_template.namek; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.namek IS 'Name k hola';


--
-- Name: COLUMN product_template.stock_type_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.stock_type_id IS 'Stock Type';


--
-- Name: COLUMN product_template.packing_sequence; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.packing_sequence IS 'Packing sequence';


--
-- Name: COLUMN product_template.deliver_in; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.deliver_in IS 'Deliver in';


--
-- Name: COLUMN product_template.nehr_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.product_template.nehr_id IS 'Nehr id';


--
-- Name: product_template_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_template_id_seq OWNER TO postgres;

--
-- Name: product_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_template_id_seq OWNED BY public.product_template.id;


--
-- Name: product_template id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template ALTER COLUMN id SET DEFAULT nextval('public.product_template_id_seq'::regclass);


--
-- Name: product_template product_template_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_pkey PRIMARY KEY (id);


--
-- Name: product_template_company_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_template_company_id_index ON public.product_template USING btree (company_id);


--
-- Name: product_template_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_template_name_index ON public.product_template USING btree (name);


--
-- Name: product_template product_template_categ_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_categ_id_fkey FOREIGN KEY (categ_id) REFERENCES public.product_category(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.stock_location(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_manufacturer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_manufacturer_fkey FOREIGN KEY (manufacturer) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_pos_categ_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_pos_categ_id_fkey FOREIGN KEY (pos_categ_id) REFERENCES public.pos_category(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_stock_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_stock_type_id_fkey FOREIGN KEY (stock_type_id) REFERENCES public.product_stock_type(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_uom_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_uom_id_fkey FOREIGN KEY (uom_id) REFERENCES public.product_uom(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_uom_po_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_uom_po_id_fkey FOREIGN KEY (uom_po_id) REFERENCES public.product_uom(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_warehouse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.stock_warehouse(id) ON DELETE SET NULL;


--
-- Name: product_template product_template_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_template
    ADD CONSTRAINT product_template_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

