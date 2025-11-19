--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: age_rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.age_rating (
    age_rating_id integer NOT NULL,
    rating_code character varying(10) NOT NULL,
    rating_description character varying(500)
);


ALTER TABLE public.age_rating OWNER TO postgres;

--
-- Name: age_rating_age_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.age_rating ALTER COLUMN age_rating_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.age_rating_age_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: booking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking (
    booking_id integer NOT NULL,
    showing_time_id integer NOT NULL,
    user_id integer NOT NULL,
    booking_time timestamp without time zone NOT NULL,
    total_amount numeric(10,2) NOT NULL,
    booking_status_id integer NOT NULL,
    confirmation_code character varying(100)
);


ALTER TABLE public.booking OWNER TO postgres;

--
-- Name: booking_booking_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.booking ALTER COLUMN booking_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.booking_booking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: booking_combo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_combo (
    booking_id integer NOT NULL,
    combo_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    sub_total numeric(10,2) NOT NULL
);


ALTER TABLE public.booking_combo OWNER TO postgres;

--
-- Name: booking_seat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_seat (
    booking_id integer NOT NULL,
    seat_id integer NOT NULL,
    price numeric(10,2) NOT NULL
);


ALTER TABLE public.booking_seat OWNER TO postgres;

--
-- Name: booking_snack; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_snack (
    booking_id integer NOT NULL,
    snack_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.booking_snack OWNER TO postgres;

--
-- Name: booking_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_status (
    booking_status_id integer NOT NULL,
    status_name character varying(50) NOT NULL
);


ALTER TABLE public.booking_status OWNER TO postgres;

--
-- Name: booking_status_booking_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.booking_status ALTER COLUMN booking_status_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.booking_status_booking_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: cast_member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cast_member (
    cast_id integer NOT NULL,
    cast_name character varying(500) NOT NULL
);


ALTER TABLE public.cast_member OWNER TO postgres;

--
-- Name: cast_member_cast_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cast_member ALTER COLUMN cast_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cast_member_cast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: cinema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cinema (
    cinema_id integer NOT NULL,
    cinema_name character varying(500) NOT NULL,
    province_id integer NOT NULL,
    district_id integer NOT NULL,
    wards_id integer,
    street_address character varying(2000),
    main_image_url character varying(2000),
    secondary_image_url character varying(2000)
);


ALTER TABLE public.cinema OWNER TO postgres;

--
-- Name: cinema_cinema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cinema ALTER COLUMN cinema_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cinema_cinema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: combo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.combo (
    combo_id integer NOT NULL,
    combo_name character varying(500) NOT NULL,
    price numeric(10,2) NOT NULL,
    description character varying(2000),
    image_url character varying(2000)
);


ALTER TABLE public.combo OWNER TO postgres;

--
-- Name: combo_combo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.combo ALTER COLUMN combo_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.combo_combo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: combo_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.combo_item (
    combo_id integer NOT NULL,
    snack_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.combo_item OWNER TO postgres;

--
-- Name: day_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.day_type (
    day_type_id integer NOT NULL,
    type_name character varying(50) NOT NULL
);


ALTER TABLE public.day_type OWNER TO postgres;

--
-- Name: day_type_day_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.day_type ALTER COLUMN day_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.day_type_day_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.director (
    director_id integer NOT NULL,
    director_name character varying(500) NOT NULL
);


ALTER TABLE public.director OWNER TO postgres;

--
-- Name: director_director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.director ALTER COLUMN director_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_director_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.district (
    district_id integer NOT NULL,
    province_id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.district OWNER TO postgres;

--
-- Name: district_district_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.district ALTER COLUMN district_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.district_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: feature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feature (
    feature_id integer NOT NULL,
    feature_name character varying(500) NOT NULL,
    feature_description character varying(2000) NOT NULL,
    feature_type_id integer NOT NULL
);


ALTER TABLE public.feature OWNER TO postgres;

--
-- Name: feature_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.feature ALTER COLUMN feature_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.feature_feature_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: feature_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feature_type (
    feature_type_id integer NOT NULL,
    feature_type_name character varying(500) NOT NULL
);


ALTER TABLE public.feature_type OWNER TO postgres;

--
-- Name: feature_type_feature_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.feature_type ALTER COLUMN feature_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.feature_type_feature_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character varying(500) NOT NULL,
    genre_description character varying(4000) NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.genre ALTER COLUMN genre_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    title character varying(200) NOT NULL,
    age_rating_id integer NOT NULL,
    runtime_min integer NOT NULL,
    release_date date NOT NULL,
    trailer_link character varying(1000) NOT NULL,
    description character varying(2000) NOT NULL,
    banner_text character varying(1000) NOT NULL,
    header_image character varying(1000) NOT NULL,
    poster_image character varying(1000) NOT NULL,
    synopsis character varying(4000) NOT NULL,
    director_id integer NOT NULL,
    movie_status_id integer NOT NULL
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- Name: movie_cast; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_cast (
    cast_member_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movie_cast OWNER TO postgres;

--
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_genre (
    genre_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movie_genre OWNER TO postgres;

--
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.movie ALTER COLUMN movie_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movie_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: movie_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_status (
    movie_status_id integer NOT NULL,
    movie_status_name character varying(500) NOT NULL,
    movie_status_description character varying(1000) NOT NULL
);


ALTER TABLE public.movie_status OWNER TO postgres;

--
-- Name: movie_status_movie_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.movie_status ALTER COLUMN movie_status_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movie_status_movie_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    booking_id integer NOT NULL,
    amount numeric(10,2) NOT NULL,
    payment_time timestamp without time zone NOT NULL,
    payment_method_id integer NOT NULL,
    status_id integer NOT NULL,
    transaction_code character varying(100)
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: payment_method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_method (
    method_id integer NOT NULL,
    method_name character varying(50) NOT NULL
);


ALTER TABLE public.payment_method OWNER TO postgres;

--
-- Name: payment_method_method_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_method ALTER COLUMN method_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_method_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment ALTER COLUMN payment_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: payment_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_status (
    status_id integer NOT NULL,
    status_name character varying(50) NOT NULL
);


ALTER TABLE public.payment_status OWNER TO postgres;

--
-- Name: payment_status_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_status ALTER COLUMN status_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_status_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: price_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price_rule (
    rule_id integer NOT NULL,
    seat_type_id integer NOT NULL,
    price_type_id integer NOT NULL,
    day_type_id integer NOT NULL,
    base_price numeric(10,2) NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    is_special_event boolean DEFAULT false NOT NULL
);


ALTER TABLE public.price_rule OWNER TO postgres;

--
-- Name: price_rule_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.price_rule ALTER COLUMN rule_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.price_rule_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: price_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price_type (
    price_type_id integer NOT NULL,
    type_name character varying(50) NOT NULL
);


ALTER TABLE public.price_type OWNER TO postgres;

--
-- Name: price_type_price_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.price_type ALTER COLUMN price_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.price_type_price_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.province (
    province_id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.province OWNER TO postgres;

--
-- Name: province_province_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.province ALTER COLUMN province_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.province_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying(500) NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.role ALTER COLUMN role_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: seat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seat (
    seat_id integer NOT NULL,
    seat_location character varying(30) NOT NULL,
    seat_type_id integer NOT NULL,
    theater_id integer NOT NULL
);


ALTER TABLE public.seat OWNER TO postgres;

--
-- Name: seat_seat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.seat ALTER COLUMN seat_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.seat_seat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: seat_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seat_type (
    seat_type_id integer NOT NULL,
    seat_type_name character varying(500) NOT NULL
);


ALTER TABLE public.seat_type OWNER TO postgres;

--
-- Name: seat_type_seat_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.seat_type ALTER COLUMN seat_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.seat_type_seat_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: showing_feature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.showing_feature (
    showing_time_id integer NOT NULL,
    feature_id integer NOT NULL
);


ALTER TABLE public.showing_feature OWNER TO postgres;

--
-- Name: showing_time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.showing_time (
    showing_time_id integer NOT NULL,
    showing_datetime timestamp without time zone NOT NULL,
    theater_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.showing_time OWNER TO postgres;

--
-- Name: showing_time_showing_time_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.showing_time ALTER COLUMN showing_time_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.showing_time_showing_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: snack; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.snack (
    snack_id integer NOT NULL,
    snack_name character varying(500) NOT NULL,
    snack_price numeric(10,2) NOT NULL
);


ALTER TABLE public.snack OWNER TO postgres;

--
-- Name: snack_snack_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.snack ALTER COLUMN snack_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.snack_snack_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: theater; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.theater (
    theater_id integer NOT NULL,
    theater_name character varying(500) NOT NULL,
    theater_num integer NOT NULL,
    cinema_id integer NOT NULL
);


ALTER TABLE public.theater OWNER TO postgres;

--
-- Name: theater_theater_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.theater ALTER COLUMN theater_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.theater_theater_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    user_id integer NOT NULL,
    full_name character varying(500) NOT NULL,
    email character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL,
    phone_number character varying(20),
    role_id integer NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."user" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: wards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wards (
    wards_id integer NOT NULL,
    district_id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.wards OWNER TO postgres;

--
-- Name: wards_wards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.wards ALTER COLUMN wards_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.wards_wards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: age_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.age_rating (age_rating_id, rating_code, rating_description) FROM stdin;
\.


--
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking (booking_id, showing_time_id, user_id, booking_time, total_amount, booking_status_id, confirmation_code) FROM stdin;
\.


--
-- Data for Name: booking_combo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_combo (booking_id, combo_id, quantity, sub_total) FROM stdin;
\.


--
-- Data for Name: booking_seat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_seat (booking_id, seat_id, price) FROM stdin;
\.


--
-- Data for Name: booking_snack; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_snack (booking_id, snack_id, quantity) FROM stdin;
\.


--
-- Data for Name: booking_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_status (booking_status_id, status_name) FROM stdin;
\.


--
-- Data for Name: cast_member; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cast_member (cast_id, cast_name) FROM stdin;
\.


--
-- Data for Name: cinema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cinema (cinema_id, cinema_name, province_id, district_id, wards_id, street_address, main_image_url, secondary_image_url) FROM stdin;
\.


--
-- Data for Name: combo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.combo (combo_id, combo_name, price, description, image_url) FROM stdin;
\.


--
-- Data for Name: combo_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.combo_item (combo_id, snack_id, quantity) FROM stdin;
\.


--
-- Data for Name: day_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.day_type (day_type_id, type_name) FROM stdin;
\.


--
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.director (director_id, director_name) FROM stdin;
\.


--
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.district (district_id, province_id, name) FROM stdin;
\.


--
-- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feature (feature_id, feature_name, feature_description, feature_type_id) FROM stdin;
\.


--
-- Data for Name: feature_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feature_type (feature_type_id, feature_type_name) FROM stdin;
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (genre_id, genre_name, genre_description) FROM stdin;
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (movie_id, title, age_rating_id, runtime_min, release_date, trailer_link, description, banner_text, header_image, poster_image, synopsis, director_id, movie_status_id) FROM stdin;
\.


--
-- Data for Name: movie_cast; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_cast (cast_member_id, movie_id) FROM stdin;
\.


--
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_genre (genre_id, movie_id) FROM stdin;
\.


--
-- Data for Name: movie_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_status (movie_status_id, movie_status_name, movie_status_description) FROM stdin;
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (payment_id, booking_id, amount, payment_time, payment_method_id, status_id, transaction_code) FROM stdin;
\.


--
-- Data for Name: payment_method; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_method (method_id, method_name) FROM stdin;
\.


--
-- Data for Name: payment_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_status (status_id, status_name) FROM stdin;
\.


--
-- Data for Name: price_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.price_rule (rule_id, seat_type_id, price_type_id, day_type_id, base_price, start_time, end_time, is_special_event) FROM stdin;
\.


--
-- Data for Name: price_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.price_type (price_type_id, type_name) FROM stdin;
\.


--
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.province (province_id, name) FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (role_id, role_name) FROM stdin;
\.


--
-- Data for Name: seat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seat (seat_id, seat_location, seat_type_id, theater_id) FROM stdin;
\.


--
-- Data for Name: seat_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seat_type (seat_type_id, seat_type_name) FROM stdin;
\.


--
-- Data for Name: showing_feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.showing_feature (showing_time_id, feature_id) FROM stdin;
\.


--
-- Data for Name: showing_time; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.showing_time (showing_time_id, showing_datetime, theater_id, movie_id) FROM stdin;
\.


--
-- Data for Name: snack; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.snack (snack_id, snack_name, snack_price) FROM stdin;
\.


--
-- Data for Name: theater; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.theater (theater_id, theater_name, theater_num, cinema_id) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (user_id, full_name, email, password_hash, phone_number, role_id) FROM stdin;
\.


--
-- Data for Name: wards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wards (wards_id, district_id, name) FROM stdin;
\.


--
-- Name: age_rating_age_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.age_rating_age_rating_id_seq', 1, false);


--
-- Name: booking_booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.booking_booking_id_seq', 1, false);


--
-- Name: booking_status_booking_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.booking_status_booking_status_id_seq', 1, false);


--
-- Name: cast_member_cast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cast_member_cast_id_seq', 1, false);


--
-- Name: cinema_cinema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cinema_cinema_id_seq', 1, false);


--
-- Name: combo_combo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.combo_combo_id_seq', 1, false);


--
-- Name: day_type_day_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.day_type_day_type_id_seq', 1, false);


--
-- Name: director_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.director_director_id_seq', 1, false);


--
-- Name: district_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.district_district_id_seq', 1, false);


--
-- Name: feature_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feature_feature_id_seq', 1, false);


--
-- Name: feature_type_feature_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feature_type_feature_type_id_seq', 1, false);


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_movie_id_seq', 1, false);


--
-- Name: movie_status_movie_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_status_movie_status_id_seq', 1, false);


--
-- Name: payment_method_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_method_method_id_seq', 1, false);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);


--
-- Name: payment_status_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_status_status_id_seq', 1, false);


--
-- Name: price_rule_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.price_rule_rule_id_seq', 1, false);


--
-- Name: price_type_price_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.price_type_price_type_id_seq', 1, false);


--
-- Name: province_province_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.province_province_id_seq', 1, false);


--
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_role_id_seq', 1, false);


--
-- Name: seat_seat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seat_seat_id_seq', 1, false);


--
-- Name: seat_type_seat_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seat_type_seat_type_id_seq', 1, false);


--
-- Name: showing_time_showing_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.showing_time_showing_time_id_seq', 1, false);


--
-- Name: snack_snack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.snack_snack_id_seq', 1, false);


--
-- Name: theater_theater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.theater_theater_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);


--
-- Name: wards_wards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wards_wards_id_seq', 1, false);


--
-- Name: age_rating age_rating_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.age_rating
    ADD CONSTRAINT age_rating_pk PRIMARY KEY (age_rating_id);


--
-- Name: age_rating age_rating_rating_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.age_rating
    ADD CONSTRAINT age_rating_rating_code_key UNIQUE (rating_code);


--
-- Name: booking_combo booking_combo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_combo
    ADD CONSTRAINT booking_combo_pk PRIMARY KEY (booking_id, combo_id);


--
-- Name: booking booking_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pk PRIMARY KEY (booking_id);


--
-- Name: booking_seat booking_seat_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_seat
    ADD CONSTRAINT booking_seat_pk PRIMARY KEY (booking_id, seat_id);


--
-- Name: booking_snack booking_snack_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_snack
    ADD CONSTRAINT booking_snack_pk PRIMARY KEY (booking_id, snack_id);


--
-- Name: booking_status booking_status_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_status
    ADD CONSTRAINT booking_status_pk PRIMARY KEY (booking_status_id);


--
-- Name: cast_member cast_member_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cast_member
    ADD CONSTRAINT cast_member_pk PRIMARY KEY (cast_id);


--
-- Name: cinema cinema_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema
    ADD CONSTRAINT cinema_pk PRIMARY KEY (cinema_id);


--
-- Name: combo_item combo_item_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo_item
    ADD CONSTRAINT combo_item_pk PRIMARY KEY (combo_id, snack_id);


--
-- Name: combo combo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo
    ADD CONSTRAINT combo_pk PRIMARY KEY (combo_id);


--
-- Name: day_type day_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.day_type
    ADD CONSTRAINT day_type_pk PRIMARY KEY (day_type_id);


--
-- Name: day_type day_type_type_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.day_type
    ADD CONSTRAINT day_type_type_name_key UNIQUE (type_name);


--
-- Name: director director_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pk PRIMARY KEY (director_id);


--
-- Name: district district_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district
    ADD CONSTRAINT district_pk PRIMARY KEY (district_id);


--
-- Name: feature feature_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feature
    ADD CONSTRAINT feature_pk PRIMARY KEY (feature_id);


--
-- Name: feature_type feature_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feature_type
    ADD CONSTRAINT feature_type_pk PRIMARY KEY (feature_type_id);


--
-- Name: genre genre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pk PRIMARY KEY (genre_id);


--
-- Name: movie_cast movie_cast_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT movie_cast_pk PRIMARY KEY (cast_member_id, movie_id);


--
-- Name: movie_genre movie_genre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_pk PRIMARY KEY (genre_id, movie_id);


--
-- Name: movie movie_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pk PRIMARY KEY (movie_id);


--
-- Name: movie_status movie_status_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_status
    ADD CONSTRAINT movie_status_pk PRIMARY KEY (movie_status_id);


--
-- Name: payment_method payment_method_method_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_method_name_key UNIQUE (method_name);


--
-- Name: payment_method payment_method_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_pk PRIMARY KEY (method_id);


--
-- Name: payment payment_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pk PRIMARY KEY (payment_id);


--
-- Name: payment_status payment_status_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_status
    ADD CONSTRAINT payment_status_pk PRIMARY KEY (status_id);


--
-- Name: payment_status payment_status_status_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_status
    ADD CONSTRAINT payment_status_status_name_key UNIQUE (status_name);


--
-- Name: price_rule price_rule_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT price_rule_pk PRIMARY KEY (rule_id);


--
-- Name: price_type price_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_type
    ADD CONSTRAINT price_type_pk PRIMARY KEY (price_type_id);


--
-- Name: price_type price_type_type_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_type
    ADD CONSTRAINT price_type_type_name_key UNIQUE (type_name);


--
-- Name: province province_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pk PRIMARY KEY (province_id);


--
-- Name: role role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pk PRIMARY KEY (role_id);


--
-- Name: seat seat_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_pk PRIMARY KEY (seat_id);


--
-- Name: seat_type seat_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_type
    ADD CONSTRAINT seat_type_pk PRIMARY KEY (seat_type_id);


--
-- Name: showing_feature showing_feature_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.showing_feature
    ADD CONSTRAINT showing_feature_pk PRIMARY KEY (showing_time_id, feature_id);


--
-- Name: showing_time showing_time_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.showing_time
    ADD CONSTRAINT showing_time_pk PRIMARY KEY (showing_time_id);


--
-- Name: snack snack_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snack
    ADD CONSTRAINT snack_pk PRIMARY KEY (snack_id);


--
-- Name: theater theater_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theater
    ADD CONSTRAINT theater_pk PRIMARY KEY (theater_id);


--
-- Name: user user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- Name: user user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (user_id);


--
-- Name: wards wards_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT wards_pk PRIMARY KEY (wards_id);


--
-- Name: booking_combo fk_booking_combo_booking; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_combo
    ADD CONSTRAINT fk_booking_combo_booking FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);


--
-- Name: booking_combo fk_booking_combo_combo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_combo
    ADD CONSTRAINT fk_booking_combo_combo FOREIGN KEY (combo_id) REFERENCES public.combo(combo_id);


--
-- Name: booking_seat fk_booking_seat_booking; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_seat
    ADD CONSTRAINT fk_booking_seat_booking FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);


--
-- Name: booking_seat fk_booking_seat_seat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_seat
    ADD CONSTRAINT fk_booking_seat_seat FOREIGN KEY (seat_id) REFERENCES public.seat(seat_id);


--
-- Name: booking fk_booking_showing; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_booking_showing FOREIGN KEY (showing_time_id) REFERENCES public.showing_time(showing_time_id);


--
-- Name: booking_snack fk_booking_snack_booking; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_snack
    ADD CONSTRAINT fk_booking_snack_booking FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);


--
-- Name: booking_snack fk_booking_snack_snack; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_snack
    ADD CONSTRAINT fk_booking_snack_snack FOREIGN KEY (snack_id) REFERENCES public.snack(snack_id);


--
-- Name: booking fk_booking_status; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_booking_status FOREIGN KEY (booking_status_id) REFERENCES public.booking_status(booking_status_id);


--
-- Name: booking fk_booking_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES public."user"(user_id);


--
-- Name: cinema fk_cinema_district; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema
    ADD CONSTRAINT fk_cinema_district FOREIGN KEY (district_id) REFERENCES public.district(district_id);


--
-- Name: cinema fk_cinema_province; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema
    ADD CONSTRAINT fk_cinema_province FOREIGN KEY (province_id) REFERENCES public.province(province_id);


--
-- Name: cinema fk_cinema_wards; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema
    ADD CONSTRAINT fk_cinema_wards FOREIGN KEY (wards_id) REFERENCES public.wards(wards_id);


--
-- Name: combo_item fk_combo_item_combo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo_item
    ADD CONSTRAINT fk_combo_item_combo FOREIGN KEY (combo_id) REFERENCES public.combo(combo_id);


--
-- Name: combo_item fk_combo_item_snack; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo_item
    ADD CONSTRAINT fk_combo_item_snack FOREIGN KEY (snack_id) REFERENCES public.snack(snack_id);


--
-- Name: district fk_district_province; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district
    ADD CONSTRAINT fk_district_province FOREIGN KEY (province_id) REFERENCES public.province(province_id);


--
-- Name: feature fk_feature_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feature
    ADD CONSTRAINT fk_feature_type FOREIGN KEY (feature_type_id) REFERENCES public.feature_type(feature_type_id);


--
-- Name: movie fk_movie_age_rating; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT fk_movie_age_rating FOREIGN KEY (age_rating_id) REFERENCES public.age_rating(age_rating_id);


--
-- Name: movie_cast fk_movie_cast_member; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT fk_movie_cast_member FOREIGN KEY (cast_member_id) REFERENCES public.cast_member(cast_id);


--
-- Name: movie_cast fk_movie_cast_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT fk_movie_cast_movie FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- Name: movie fk_movie_director; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT fk_movie_director FOREIGN KEY (director_id) REFERENCES public.director(director_id);


--
-- Name: movie_genre fk_movie_genre_genre; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT fk_movie_genre_genre FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id);


--
-- Name: movie_genre fk_movie_genre_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT fk_movie_genre_movie FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- Name: movie fk_movie_status; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT fk_movie_status FOREIGN KEY (movie_status_id) REFERENCES public.movie_status(movie_status_id);


--
-- Name: payment fk_payment_booking; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);


--
-- Name: payment fk_payment_method; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_payment_method FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(method_id);


--
-- Name: payment fk_payment_status; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_payment_status FOREIGN KEY (status_id) REFERENCES public.payment_status(status_id);


--
-- Name: price_rule fk_price_rule_day_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT fk_price_rule_day_type FOREIGN KEY (day_type_id) REFERENCES public.day_type(day_type_id);


--
-- Name: price_rule fk_price_rule_price_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT fk_price_rule_price_type FOREIGN KEY (price_type_id) REFERENCES public.price_type(price_type_id);


--
-- Name: price_rule fk_price_rule_seat_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT fk_price_rule_seat_type FOREIGN KEY (seat_type_id) REFERENCES public.seat_type(seat_type_id);


--
-- Name: seat fk_seat_theater; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat
    ADD CONSTRAINT fk_seat_theater FOREIGN KEY (theater_id) REFERENCES public.theater(theater_id);


--
-- Name: seat fk_seat_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat
    ADD CONSTRAINT fk_seat_type FOREIGN KEY (seat_type_id) REFERENCES public.seat_type(seat_type_id);


--
-- Name: showing_feature fk_showing_feature_feature; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.showing_feature
    ADD CONSTRAINT fk_showing_feature_feature FOREIGN KEY (feature_id) REFERENCES public.feature(feature_id);


--
-- Name: showing_feature fk_showing_feature_showing; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.showing_feature
    ADD CONSTRAINT fk_showing_feature_showing FOREIGN KEY (showing_time_id) REFERENCES public.showing_time(showing_time_id);


--
-- Name: showing_time fk_showing_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.showing_time
    ADD CONSTRAINT fk_showing_movie FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- Name: showing_time fk_showing_theater; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.showing_time
    ADD CONSTRAINT fk_showing_theater FOREIGN KEY (theater_id) REFERENCES public.theater(theater_id);


--
-- Name: theater fk_theater_cinema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theater
    ADD CONSTRAINT fk_theater_cinema FOREIGN KEY (cinema_id) REFERENCES public.cinema(cinema_id);


--
-- Name: user fk_user_role; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT fk_user_role FOREIGN KEY (role_id) REFERENCES public.role(role_id);


--
-- Name: wards fk_wards_district; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT fk_wards_district FOREIGN KEY (district_id) REFERENCES public.district(district_id);


--
-- PostgreSQL database dump complete
--

