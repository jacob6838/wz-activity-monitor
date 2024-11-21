-- RSU Manager Cloud Run Tables
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE SEQUENCE IF NOT EXISTS public.restriction_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.restriction (
    id integer NOT NULL DEFAULT nextval('restriction_id_seq'::regclass),
    type VARCHAR(255) NOT NULL,
    value FLOAT NOT NULL,
    unit VARCHAR(255) NOT NULL,
    CONSTRAINT restriction_pkey PRIMARY KEY (id),
    CONSTRAINT restriction_type_value_unit UNIQUE (type, value, unit)
);

CREATE SEQUENCE IF NOT EXISTS public.lane_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.lane (
    id integer NOT NULL DEFAULT nextval('lane_id_seq'::regclass),
    lane_order INT NOT NULL,
    type VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    restrictions INT[] NOT NULL,
    CONSTRAINT lane_pkey PRIMARY KEY (id),
    CONSTRAINT lane_order_type_status UNIQUE (lane_order, type, status)
);

CREATE SEQUENCE IF NOT EXISTS public.type_of_work_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.type_of_work (
    id integer NOT NULL DEFAULT nextval('type_of_work_id_seq'::regclass),
    type_name VARCHAR(255) NOT NULL,
    is_architectural_change BOOLEAN NOT NULL,
    CONSTRAINT type_of_work_pkey PRIMARY KEY (id),
    CONSTRAINT type_of_work_type_name UNIQUE (type_name)
);

CREATE SEQUENCE IF NOT EXISTS public.worker_presence_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.worker_presence (
    id integer NOT NULL DEFAULT nextval('worker_presence_id_seq'::regclass),
    are_workers_present BOOLEAN NOT NULL,
    definition VARCHAR(255) NOT NULL,
    method VARCHAR(255) NOT NULL,
    worker_presence_last_confirmed_date INT NOT NULL,
    confidence VARCHAR(255) NOT NULL,
    CONSTRAINT worker_presence_pkey PRIMARY KEY (id),
    CONSTRAINT worker_presence_definition_method UNIQUE (definition, method)
);

CREATE SEQUENCE IF NOT EXISTS public.project_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.project (
    id integer NOT NULL DEFAULT nextval('project_id_seq'::regclass),
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    tmc_notes TEXT ,
    active_status VARCHAR(255) NOT NULL,
    hyperlink TEXT ,
    start_date INT,
    end_date INT,
    districts TEXT[],
    wydot_contact VARCHAR(255),
    project_update_contact VARCHAR(255),
    traffic_control_contact VARCHAR(255),
    emergency_contact VARCHAR(255),
    contractor VARCHAR(255),
    selected_towns TEXT[],
    CONSTRAINT project_pkey PRIMARY KEY (id),
    CONSTRAINT project_name UNIQUE (name)
);

CREATE SEQUENCE IF NOT EXISTS public.road_section_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.road_section (
    id integer NOT NULL DEFAULT nextval('road_section_id_seq'::regclass),
    project_id INT NOT NULL,
    segment_id INT NOT NULL,
    segment_name VARCHAR(255),
    reference_type VARCHAR(255) NOT NULL,
    start_mm VARCHAR(255) NOT NULL,
    end_mm VARCHAR(255) NOT NULL,
    direction VARCHAR(255) NOT NULL,
    surface_type VARCHAR(255) NOT NULL,
    start_date INT,
    end_date INT,
    armed_status VARCHAR(255) NOT NULL,
    geometry FLOAT8[][] NOT NULL,
    bbox FLOAT8[][],
    CONSTRAINT road_section_pkey PRIMARY KEY (id),
    CONSTRAINT road_section_project_segment UNIQUE (project_id, segment_id)
);

CREATE SEQUENCE IF NOT EXISTS public.activity_area_id_seq
   INCREMENT 1
   START 1
   MINVALUE 1
   MAXVALUE 2147483647
   CACHE 1;

CREATE TABLE IF NOT EXISTS public.activity_area (
    id integer NOT NULL DEFAULT nextval('activity_area_id_seq'::regclass),
    segment_id INT NOT NULL,
    area_id INT NOT NULL,
    area_name VARCHAR(255) NOT NULL,
    description TEXT,
    creation_date INT NOT NULL,
    update_date INT NOT NULL,
    start_date INT NOT NULL,
    end_date INT NOT NULL,
    start_date_verified BOOLEAN,
    end_date_verified BOOLEAN,
    area_type VARCHAR(255) NOT NULL,
    location_method VARCHAR(255) NOT NULL,
    vehicle_impact VARCHAR(255) NOT NULL,
    impacted_cds_curb_zones TEXT[],
    lanes INT[], -- Assuming a list of Lane IDs
    beginning_cross_street VARCHAR(255),
    ending_cross_street VARCHAR(255),
    beginning_milepost VARCHAR(255),
    ending_milepost VARCHAR(255),
    types_of_work INT[] NOT NULL, -- Assuming a list of TypeOfWork IDs
    worker_resence INT, -- Assuming a WorkerPresence ID
    reduced_speed_limit_kph FLOAT,
    restrictions INT[], -- Assuming a list of Restriction IDs
    geometry FLOAT8[][] NOT NULL,
    bbox FLOAT8[][],
    CONSTRAINT activity_area_pkey PRIMARY KEY (id),
    CONSTRAINT activity_area_segment_area UNIQUE (segment_id, area_id)
);