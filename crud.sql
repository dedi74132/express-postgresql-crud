PGDMP                         y            express_crud    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    65560    express_crud    DATABASE     o   CREATE DATABASE express_crud WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE express_crud;
                postgres    false            ?            1259    65561    users    TABLE     &  CREATE TABLE public.users (
    id uuid NOT NULL,
    username character varying(255),
    name character varying(255),
    email character varying(255),
    password character varying(255),
    status bit(1),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?          0    65561    users 
   TABLE DATA           d   COPY public.users (id, username, name, email, password, status, created_at, updated_at) FROM stdin;
    public          postgres    false    200          "           2606    65568    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    200            ?      x?????? ? ?     