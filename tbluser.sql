PGDMP                         y            express_ayojual    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    57344    express_ayojual    DATABASE     r   CREATE DATABASE express_ayojual WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE express_ayojual;
                postgres    false            ?            1259    65548    users    TABLE     &  CREATE TABLE public.users (
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
       public         heap    postgres    false            ?          0    65548    users 
   TABLE DATA           d   COPY public.users (id, username, name, email, password, status, created_at, updated_at) FROM stdin;
    public          postgres    false    219          h           2606    65555    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            ?   ?   x?e?Oo?0???)v?ڦ-??y???ds$^Z(??????W?d;,y?7???$ B"#?@ܗi?sT??D?F0?V9??????M?????8ok?cڣ?l???I?[7???WvX?о/????~
m?6??l??U )?&???%3? i|?Q??\#?HZ_S????7??o???9
??f????d??f`aՔ?	??h?Vi??>?/????>??l?????RW     