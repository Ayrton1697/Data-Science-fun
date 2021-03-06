PGDMP         5                y            postgres    13.2    13.2 S               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13442    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3101                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    24809    dim_country    TABLE     ?   CREATE TABLE public.dim_country (
    country_id integer NOT NULL,
    country character(1)[],
    last_update timestamp without time zone
);
    DROP TABLE public.dim_country;
       public         heap    postgres    false            ?            1259    24807    dim_country_country_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dim_country_country_id_seq;
       public          postgres    false    210                        0    0    dim_country_country_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dim_country_country_id_seq OWNED BY public.dim_country.country_id;
          public          postgres    false    209            ?            1259    24828    dim_customer    TABLE     ?   CREATE TABLE public.dim_customer (
    customer_id integer NOT NULL,
    first_name character(1)[],
    last_name character(1)[],
    email character(1)[],
    address character(1)[],
    active boolean,
    last_update timestamp without time zone
);
     DROP TABLE public.dim_customer;
       public         heap    postgres    false            ?            1259    24826    dim_customer_customer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dim_customer_customer_id_seq;
       public          postgres    false    214            !           0    0    dim_customer_customer_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dim_customer_customer_id_seq OWNED BY public.dim_customer.customer_id;
          public          postgres    false    213            ?            1259    24800 	   dim_films    TABLE     N  CREATE TABLE public.dim_films (
    film_id integer NOT NULL,
    title character(1)[],
    description character(1)[],
    rental_duration time without time zone,
    release_date timestamp without time zone,
    length time without time zone,
    replacement_cost numeric,
    rating integer,
    special_feautres character(1)[]
);
    DROP TABLE public.dim_films;
       public         heap    postgres    false            ?            1259    24798    dim_films_film_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_films_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dim_films_film_id_seq;
       public          postgres    false    208            "           0    0    dim_films_film_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dim_films_film_id_seq OWNED BY public.dim_films.film_id;
          public          postgres    false    207            ?            1259    24588    dim_payment    TABLE     ?   CREATE TABLE public.dim_payment (
    payment_id integer NOT NULL,
    amount numeric,
    last_update timestamp without time zone
);
    DROP TABLE public.dim_payment;
       public         heap    postgres    false            ?            1259    24837 	   dim_staff    TABLE     /  CREATE TABLE public.dim_staff (
    staff_id integer NOT NULL,
    first_name character(1)[],
    last_name character(1)[],
    email character(1)[],
    address character(1)[],
    active boolean,
    username character(1)[],
    password character(1)[],
    last_update timestamp without time zone
);
    DROP TABLE public.dim_staff;
       public         heap    postgres    false            ?            1259    24835    dim_staff_staff_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_staff_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dim_staff_staff_id_seq;
       public          postgres    false    216            #           0    0    dim_staff_staff_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_staff_staff_id_seq OWNED BY public.dim_staff.staff_id;
          public          postgres    false    215            ?            1259    24818 	   dim_state    TABLE     Y   CREATE TABLE public.dim_state (
    city_id integer NOT NULL,
    city character(1)[]
);
    DROP TABLE public.dim_state;
       public         heap    postgres    false            ?            1259    24816    dim_state_city_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_state_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dim_state_city_id_seq;
       public          postgres    false    212            $           0    0    dim_state_city_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dim_state_city_id_seq OWNED BY public.dim_state.city_id;
          public          postgres    false    211            ?            1259    24886 
   dim_stores    TABLE     ?   CREATE TABLE public.dim_stores (
    store_id integer NOT NULL,
    manager_staff_id integer,
    address_id integer,
    last_update timestamp without time zone
);
    DROP TABLE public.dim_stores;
       public         heap    postgres    false            ?            1259    24884    dim_stores_store_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_stores_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dim_stores_store_id_seq;
       public          postgres    false    218            %           0    0    dim_stores_store_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dim_stores_store_id_seq OWNED BY public.dim_stores.store_id;
          public          postgres    false    217            ?            1259    24791 
   fact_costs    TABLE     ?   CREATE TABLE public.fact_costs (
    id integer NOT NULL,
    costs_amount numeric,
    qty numeric,
    staff_id integer,
    store_id integer
);
    DROP TABLE public.fact_costs;
       public         heap    postgres    false            ?            1259    24789    fact_costs_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fact_costs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.fact_costs_id_seq;
       public          postgres    false    206            &           0    0    fact_costs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.fact_costs_id_seq OWNED BY public.fact_costs.id;
          public          postgres    false    205            ?            1259    24782 
   fact_sales    TABLE     ?   CREATE TABLE public.fact_sales (
    id integer NOT NULL,
    sales_amount numeric,
    margin numeric,
    customer_id integer,
    country_id integer,
    staff_id integer,
    store_id integer,
    film_id integer,
    payment_id integer
);
    DROP TABLE public.fact_sales;
       public         heap    postgres    false            ?            1259    24780    fact_sales_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fact_sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.fact_sales_id_seq;
       public          postgres    false    204            '           0    0    fact_sales_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.fact_sales_id_seq OWNED BY public.fact_sales.id;
          public          postgres    false    203            ?            1259    24744    payment_payment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    201            (           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.dim_payment.payment_id;
          public          postgres    false    202            _           2604    24907    dim_country country_id    DEFAULT     ?   ALTER TABLE ONLY public.dim_country ALTER COLUMN country_id SET DEFAULT nextval('public.dim_country_country_id_seq'::regclass);
 E   ALTER TABLE public.dim_country ALTER COLUMN country_id DROP DEFAULT;
       public          postgres    false    210    209    210            a           2604    24908    dim_customer customer_id    DEFAULT     ?   ALTER TABLE ONLY public.dim_customer ALTER COLUMN customer_id SET DEFAULT nextval('public.dim_customer_customer_id_seq'::regclass);
 G   ALTER TABLE public.dim_customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    214    213    214            ^           2604    24909    dim_films film_id    DEFAULT     v   ALTER TABLE ONLY public.dim_films ALTER COLUMN film_id SET DEFAULT nextval('public.dim_films_film_id_seq'::regclass);
 @   ALTER TABLE public.dim_films ALTER COLUMN film_id DROP DEFAULT;
       public          postgres    false    207    208    208            [           2604    24910    dim_payment payment_id    DEFAULT     |   ALTER TABLE ONLY public.dim_payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 E   ALTER TABLE public.dim_payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    202    201            b           2604    24911    dim_staff staff_id    DEFAULT     x   ALTER TABLE ONLY public.dim_staff ALTER COLUMN staff_id SET DEFAULT nextval('public.dim_staff_staff_id_seq'::regclass);
 A   ALTER TABLE public.dim_staff ALTER COLUMN staff_id DROP DEFAULT;
       public          postgres    false    215    216    216            `           2604    24912    dim_state city_id    DEFAULT     v   ALTER TABLE ONLY public.dim_state ALTER COLUMN city_id SET DEFAULT nextval('public.dim_state_city_id_seq'::regclass);
 @   ALTER TABLE public.dim_state ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    212    211    212            c           2604    24913    dim_stores store_id    DEFAULT     z   ALTER TABLE ONLY public.dim_stores ALTER COLUMN store_id SET DEFAULT nextval('public.dim_stores_store_id_seq'::regclass);
 B   ALTER TABLE public.dim_stores ALTER COLUMN store_id DROP DEFAULT;
       public          postgres    false    218    217    218            ]           2604    24914    fact_costs id    DEFAULT     n   ALTER TABLE ONLY public.fact_costs ALTER COLUMN id SET DEFAULT nextval('public.fact_costs_id_seq'::regclass);
 <   ALTER TABLE public.fact_costs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            \           2604    24915    fact_sales id    DEFAULT     n   ALTER TABLE ONLY public.fact_sales ALTER COLUMN id SET DEFAULT nextval('public.fact_sales_id_seq'::regclass);
 <   ALTER TABLE public.fact_sales ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204                      0    24809    dim_country 
   TABLE DATA           G   COPY public.dim_country (country_id, country, last_update) FROM stdin;
    public          postgres    false    210   !_                 0    24828    dim_customer 
   TABLE DATA           o   COPY public.dim_customer (customer_id, first_name, last_name, email, address, active, last_update) FROM stdin;
    public          postgres    false    214   >_                 0    24800 	   dim_films 
   TABLE DATA           ?   COPY public.dim_films (film_id, title, description, rental_duration, release_date, length, replacement_cost, rating, special_feautres) FROM stdin;
    public          postgres    false    208   [_                 0    24588    dim_payment 
   TABLE DATA           F   COPY public.dim_payment (payment_id, amount, last_update) FROM stdin;
    public          postgres    false    201   x_                 0    24837 	   dim_staff 
   TABLE DATA           }   COPY public.dim_staff (staff_id, first_name, last_name, email, address, active, username, password, last_update) FROM stdin;
    public          postgres    false    216   ?_                 0    24818 	   dim_state 
   TABLE DATA           2   COPY public.dim_state (city_id, city) FROM stdin;
    public          postgres    false    212   ?_                 0    24886 
   dim_stores 
   TABLE DATA           Y   COPY public.dim_stores (store_id, manager_staff_id, address_id, last_update) FROM stdin;
    public          postgres    false    218   ?_                 0    24791 
   fact_costs 
   TABLE DATA           O   COPY public.fact_costs (id, costs_amount, qty, staff_id, store_id) FROM stdin;
    public          postgres    false    206   ?_       	          0    24782 
   fact_sales 
   TABLE DATA           ?   COPY public.fact_sales (id, sales_amount, margin, customer_id, country_id, staff_id, store_id, film_id, payment_id) FROM stdin;
    public          postgres    false    204   	`       )           0    0    dim_country_country_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dim_country_country_id_seq', 1, false);
          public          postgres    false    209            *           0    0    dim_customer_customer_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dim_customer_customer_id_seq', 1, false);
          public          postgres    false    213            +           0    0    dim_films_film_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_films_film_id_seq', 1, false);
          public          postgres    false    207            ,           0    0    dim_staff_staff_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dim_staff_staff_id_seq', 1, false);
          public          postgres    false    215            -           0    0    dim_state_city_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_state_city_id_seq', 1, false);
          public          postgres    false    211            .           0    0    dim_stores_store_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dim_stores_store_id_seq', 1, false);
          public          postgres    false    217            /           0    0    fact_costs_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.fact_costs_id_seq', 1, false);
          public          postgres    false    205            0           0    0    fact_sales_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.fact_sales_id_seq', 1, false);
          public          postgres    false    203            1           0    0    payment_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);
          public          postgres    false    202            s           2606    24847    dim_country dim_country_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dim_country
    ADD CONSTRAINT dim_country_pkey PRIMARY KEY (country_id);
 F   ALTER TABLE ONLY public.dim_country DROP CONSTRAINT dim_country_pkey;
       public            postgres    false    210            w           2606    24845 )   dim_customer dim_customer_customer_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.dim_customer
    ADD CONSTRAINT dim_customer_customer_id_key UNIQUE (customer_id);
 S   ALTER TABLE ONLY public.dim_customer DROP CONSTRAINT dim_customer_customer_id_key;
       public            postgres    false    214            y           2606    24849    dim_customer dim_customer_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.dim_customer
    ADD CONSTRAINT dim_customer_pkey PRIMARY KEY (customer_id);
 H   ALTER TABLE ONLY public.dim_customer DROP CONSTRAINT dim_customer_pkey;
       public            postgres    false    214            q           2606    24851    dim_films dim_films_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.dim_films
    ADD CONSTRAINT dim_films_pkey PRIMARY KEY (film_id);
 B   ALTER TABLE ONLY public.dim_films DROP CONSTRAINT dim_films_pkey;
       public            postgres    false    208            e           2606    24900    dim_payment dim_payment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dim_payment
    ADD CONSTRAINT dim_payment_pkey PRIMARY KEY (payment_id);
 F   ALTER TABLE ONLY public.dim_payment DROP CONSTRAINT dim_payment_pkey;
       public            postgres    false    201            {           2606    24853    dim_staff dim_staff_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dim_staff
    ADD CONSTRAINT dim_staff_pkey PRIMARY KEY (staff_id);
 B   ALTER TABLE ONLY public.dim_staff DROP CONSTRAINT dim_staff_pkey;
       public            postgres    false    216            u           2606    24855    dim_state dim_state_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.dim_state
    ADD CONSTRAINT dim_state_pkey PRIMARY KEY (city_id);
 B   ALTER TABLE ONLY public.dim_state DROP CONSTRAINT dim_state_pkey;
       public            postgres    false    212            }           2606    24891    dim_stores dim_stores_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dim_stores
    ADD CONSTRAINT dim_stores_pkey PRIMARY KEY (store_id);
 D   ALTER TABLE ONLY public.dim_stores DROP CONSTRAINT dim_stores_pkey;
       public            postgres    false    218            o           2606    24857    fact_costs fact_costs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.fact_costs
    ADD CONSTRAINT fact_costs_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fact_costs DROP CONSTRAINT fact_costs_pkey;
       public            postgres    false    206            g           2606    24859    fact_sales fact_sales_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT fact_sales_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT fact_sales_pkey;
       public            postgres    false    204            h           1259    24871    fki_country    INDEX     H   CREATE INDEX fki_country ON public.fact_sales USING btree (country_id);
    DROP INDEX public.fki_country;
       public            postgres    false    204            i           1259    24865    fki_customer    INDEX     J   CREATE INDEX fki_customer ON public.fact_sales USING btree (customer_id);
     DROP INDEX public.fki_customer;
       public            postgres    false    204            j           1259    24883    fki_film    INDEX     B   CREATE INDEX fki_film ON public.fact_sales USING btree (film_id);
    DROP INDEX public.fki_film;
       public            postgres    false    204            k           1259    24906    fki_payment    INDEX     H   CREATE INDEX fki_payment ON public.fact_sales USING btree (payment_id);
    DROP INDEX public.fki_payment;
       public            postgres    false    204            l           1259    24877 	   fki_staff    INDEX     D   CREATE INDEX fki_staff ON public.fact_sales USING btree (staff_id);
    DROP INDEX public.fki_staff;
       public            postgres    false    204            m           1259    24897 	   fki_store    INDEX     D   CREATE INDEX fki_store ON public.fact_sales USING btree (store_id);
    DROP INDEX public.fki_store;
       public            postgres    false    204            ~           2606    24866    fact_sales country    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT country FOREIGN KEY (country_id) REFERENCES public.dim_country(country_id) MATCH FULL DEFERRABLE INITIALLY DEFERRED;
 <   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT country;
       public          postgres    false    204    2931    210                       2606    24860    fact_sales customer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT customer FOREIGN KEY (customer_id) REFERENCES public.dim_customer(customer_id) MATCH FULL DEFERRABLE INITIALLY DEFERRED;
 =   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT customer;
       public          postgres    false    204    2935    214            ?           2606    24878    fact_sales film    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT film FOREIGN KEY (film_id) REFERENCES public.dim_films(film_id) MATCH FULL DEFERRABLE INITIALLY DEFERRED;
 9   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT film;
       public          postgres    false    2929    204    208            ?           2606    24901    fact_sales payment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT payment FOREIGN KEY (payment_id) REFERENCES public.dim_payment(payment_id) DEFERRABLE INITIALLY DEFERRED;
 <   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT payment;
       public          postgres    false    201    2917    204            ?           2606    24872    fact_sales staff    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT staff FOREIGN KEY (staff_id) REFERENCES public.dim_staff(staff_id) MATCH FULL DEFERRABLE INITIALLY DEFERRED;
 :   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT staff;
       public          postgres    false    2939    216    204            ?           2606    24892    fact_sales store    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fact_sales
    ADD CONSTRAINT store FOREIGN KEY (store_id) REFERENCES public.dim_stores(store_id) MATCH FULL DEFERRABLE INITIALLY DEFERRED;
 :   ALTER TABLE ONLY public.fact_sales DROP CONSTRAINT store;
       public          postgres    false    218    204    2941                  x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?      	      x?????? ? ?     