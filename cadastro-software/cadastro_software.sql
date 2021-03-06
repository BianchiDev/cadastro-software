PGDMP
     4    6             	    v            cadastro_software    10.5    10.5     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16470    cadastro_software    DATABASE     �   CREATE DATABASE cadastro_software WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE cadastro_software;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0 
   SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16471    software    TABLE     �   CREATE TABLE public.software (
    nome character(100) NOT NULL,
    desenvolvedor character(60) NOT NULL,
    tipo character(60) NOT NULL,
    data_cadastro date NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.software;
       public         postgres    false    3            �            1259    16474    software_id_seq    SEQUENCE     �   CREATE SEQUENCE public.software_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.software_id_seq;
       public       postgres    false    196    3            �
           0    0    software_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.software_id_seq OWNED BY public.software.id;
            public       postgres    false    197            �            1259    16476    usuario    TABLE     �   CREATE TABLE public.usuario (
    email character(100) DEFAULT NULL::bpchar,
    senha character(60),
    nome character(100),
    id integer NOT NULL,
    ativo integer
);
    DROP TABLE public.usuario;
       public         postgres    false    3            �            1259    16480    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       postgres    false    198    3            �
           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
            public       postgres    false    199            t
           2604    16482    software id    DEFAULT     j   ALTER TABLE ONLY public.software ALTER COLUMN id SET DEFAULT nextval('public.software_id_seq'::regclass);
 :   ALTER TABLE public.software ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            u
           2604    16483 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �
          0    16471    software 
   TABLE DATA               P   COPY public.software (nome, desenvolvedor, tipo, data_cadastro, id) FROM stdin;
    public       postgres    false    196   �       �
          0    16476    usuario 
   TABLE DATA               @   COPY public.usuario (email, senha, nome, id, ativo) FROM stdin;
    public       postgres    false    198   Z       �
           0    0    software_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.software_id_seq', 7, true);
            public       postgres    false    197            �
           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 4, true);
            public       postgres    false    199            �
   �   x��Ͻ�0�ṽ�� �%�0a�'qpq9�#4�=����Ag �۟�{��z����V=z�|��с:u�Ce�C;':�F��t"��C��Ɗ���A�z�y;	�y������:�L#�5�b#�
1���9c�f��8�2����A�n���"�����
��v�      �
   e   x�K�KT�5�442&_�#Ѕ��E��t'�!g�WV~b>
-��ddlbjF�f��Ë��3s�h�F��HN,�i��m�(0��.Fjf���i
�=... ��r�     