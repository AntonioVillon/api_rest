PGDMP  %    '                |            tienda    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24605    tienda    DATABASE     {   CREATE DATABASE tienda WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE tienda;
                     postgres    false            �            1259    24607    clientes    TABLE     �   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    telefono character varying(15)
);
    DROP TABLE public.clientes;
       public         heap r       postgres    false            �            1259    24606    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public               postgres    false    218            �           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public               postgres    false    217            �            1259    24616    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id integer NOT NULL,
    cliente_id integer,
    descripcion text NOT NULL,
    total numeric(10,2) NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.pedidos;
       public         heap r       postgres    false            �            1259    24615    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public               postgres    false    220            �           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public               postgres    false    219            &           2604    24610    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            '           2604    24619 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            �          0    24607    clientes 
   TABLE DATA           ?   COPY public.clientes (id, nombre, email, telefono) FROM stdin;
    public               postgres    false    218   �       �          0    24616    pedidos 
   TABLE DATA           L   COPY public.pedidos (id, cliente_id, descripcion, total, fecha) FROM stdin;
    public               postgres    false    220   B       �           0    0    clientes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clientes_id_seq', 5, true);
          public               postgres    false    217            �           0    0    pedidos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pedidos_id_seq', 7, true);
          public               postgres    false    219            *           2606    24614    clientes clientes_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_email_key;
       public                 postgres    false    218            ,           2606    24612    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public                 postgres    false    218            .           2606    24624    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public                 postgres    false    220            /           2606    24625    pedidos pedidos_cliente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_cliente_id_fkey;
       public               postgres    false    4652    220    218            �   �   x�]�=
�@���S�	�t�� -m��hd��5 ����*G؋9�*�ރ��7	�4��^>�FY8Iq%������4ˋ����}� o����{ʺ��UY�Y��6�|GMD75q�z���<?Ik��d��Р�Oq��]'+�����e�+	5p*3俧��Y0ƾ�R`      �   �   x����� ���R����]�@
���0�)*�`c��s��}�Y.�-A�.���������}��V�R%Ò������5mG��{������:W=���.�E&���Ț!�#�YK�8lT�8=�I�$1�A��m�����v]N7I��w�r&�U��{�!oJf�     