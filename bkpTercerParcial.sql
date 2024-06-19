PGDMP      3                |            optativo    16.3    16.3 .               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16424    optativo    DATABASE     |   CREATE DATABASE optativo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE optativo;
                postgres    false            �            1259    16435    cliente    TABLE     �  CREATE TABLE public.cliente (
    id integer NOT NULL,
    id_banco integer,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    documento character varying(20) NOT NULL,
    direccion character varying(255) NOT NULL,
    mail character varying(255) NOT NULL,
    celular character varying(15) NOT NULL,
    estado character varying(50) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16434    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    218                       0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    217            �            1259    24586    detalle_factura    TABLE     �   CREATE TABLE public.detalle_factura (
    id integer NOT NULL,
    id_factura integer,
    id_producto integer,
    cantidad_producto integer,
    subtotal numeric
);
 #   DROP TABLE public.detalle_factura;
       public         heap    postgres    false            �            1259    24585    detalle_factura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.detalle_factura_id_seq;
       public          postgres    false    224                       0    0    detalle_factura_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.detalle_factura_id_seq OWNED BY public.detalle_factura.id;
          public          postgres    false    223            �            1259    16444    factura    TABLE     �  CREATE TABLE public.factura (
    id integer NOT NULL,
    id_cliente integer NOT NULL,
    id_sucursal integer NOT NULL,
    nro_factura character varying(20) NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    total numeric(15,2) NOT NULL,
    total_iva5 numeric(15,2) NOT NULL,
    total_iva10 numeric(15,2) NOT NULL,
    total_iva numeric(15,2) NOT NULL,
    total_letras character varying(255) NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    16443    factura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.factura_id_seq;
       public          postgres    false    220                       0    0    factura_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.factura_id_seq OWNED BY public.factura.id;
          public          postgres    false    219            �            1259    24577 	   productos    TABLE     ;  CREATE TABLE public.productos (
    id integer NOT NULL,
    descripcion character varying(255),
    cantidad_minima integer,
    cantidad_stock integer,
    precio_compra numeric,
    precio_venta numeric,
    categoria character varying(255),
    marca character varying(255),
    estado character varying(50)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    24576    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    222                       0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    221            �            1259    16426    sucursal    TABLE     7  CREATE TABLE public.sucursal (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(15),
    whatsapp character varying(15),
    mail character varying(255) NOT NULL,
    estado character varying(50) NOT NULL
);
    DROP TABLE public.sucursal;
       public         heap    postgres    false            �            1259    16425    sucursal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sucursal_id_seq;
       public          postgres    false    216                       0    0    sucursal_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sucursal_id_seq OWNED BY public.sucursal.id;
          public          postgres    false    215            e           2604    16438 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            h           2604    24589    detalle_factura id    DEFAULT     x   ALTER TABLE ONLY public.detalle_factura ALTER COLUMN id SET DEFAULT nextval('public.detalle_factura_id_seq'::regclass);
 A   ALTER TABLE public.detalle_factura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            f           2604    16447 
   factura id    DEFAULT     h   ALTER TABLE ONLY public.factura ALTER COLUMN id SET DEFAULT nextval('public.factura_id_seq'::regclass);
 9   ALTER TABLE public.factura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            g           2604    24580    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            d           2604    16429    sucursal id    DEFAULT     j   ALTER TABLE ONLY public.sucursal ALTER COLUMN id SET DEFAULT nextval('public.sucursal_id_seq'::regclass);
 :   ALTER TABLE public.sucursal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16435    cliente 
   TABLE DATA           n   COPY public.cliente (id, id_banco, nombre, apellido, documento, direccion, mail, celular, estado) FROM stdin;
    public          postgres    false    218   �6                 0    24586    detalle_factura 
   TABLE DATA           c   COPY public.detalle_factura (id, id_factura, id_producto, cantidad_producto, subtotal) FROM stdin;
    public          postgres    false    224   37                 0    16444    factura 
   TABLE DATA           �   COPY public.factura (id, id_cliente, id_sucursal, nro_factura, fecha_hora, total, total_iva5, total_iva10, total_iva, total_letras) FROM stdin;
    public          postgres    false    220   \7                 0    24577 	   productos 
   TABLE DATA           �   COPY public.productos (id, descripcion, cantidad_minima, cantidad_stock, precio_compra, precio_venta, categoria, marca, estado) FROM stdin;
    public          postgres    false    222   8       
          0    16426    sucursal 
   TABLE DATA           `   COPY public.sucursal (id, descripcion, direccion, telefono, whatsapp, mail, estado) FROM stdin;
    public          postgres    false    216   M8                  0    0    cliente_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cliente_id_seq', 6, true);
          public          postgres    false    217                       0    0    detalle_factura_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.detalle_factura_id_seq', 1, true);
          public          postgres    false    223                        0    0    factura_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.factura_id_seq', 7, true);
          public          postgres    false    219            !           0    0    productos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.productos_id_seq', 1, true);
          public          postgres    false    221            "           0    0    sucursal_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sucursal_id_seq', 8, true);
          public          postgres    false    215            l           2606    16442    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    218            u           2606    24593 $   detalle_factura detalle_factura_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_pkey;
       public            postgres    false    224            o           2606    16449    factura factura_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    220            s           2606    24584    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    222            j           2606    16433    sucursal sucursal_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public            postgres    false    216            m           1259    16460    idx_cliente_id_banco    INDEX     L   CREATE INDEX idx_cliente_id_banco ON public.cliente USING btree (id_banco);
 (   DROP INDEX public.idx_cliente_id_banco;
       public            postgres    false    218            p           1259    16461    idx_factura_id_cliente    INDEX     P   CREATE INDEX idx_factura_id_cliente ON public.factura USING btree (id_cliente);
 *   DROP INDEX public.idx_factura_id_cliente;
       public            postgres    false    220            q           1259    16462    idx_factura_id_sucursal    INDEX     R   CREATE INDEX idx_factura_id_sucursal ON public.factura USING btree (id_sucursal);
 +   DROP INDEX public.idx_factura_id_sucursal;
       public            postgres    false    220            x           2606    24594 /   detalle_factura detalle_factura_id_factura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id);
 Y   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_factura_fkey;
       public          postgres    false    220    224    4719            y           2606    24599 0   detalle_factura detalle_factura_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id);
 Z   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_producto_fkey;
       public          postgres    false    224    4723    222            v           2606    16450    factura factura_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_cliente_fkey;
       public          postgres    false    218    220    4716            w           2606    16455     factura factura_id_sucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id);
 J   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_sucursal_fkey;
       public          postgres    false    220    4714    216               k   x�3�4��*M��H-J��4426153���R
Ή99�
A��9�Y@5z 5�Y��9�z������f�&�F����%�e�\F�6И��P�@SjhFmc���� �?��            x�3�4�4�4�475������ A         �   x���M
�0����@��'���).�"���V
���x� `@,I�S����5�%�Hua^���^��1�aF�#�v��������^q�F\�X�Yo�@��@2/[��z��������y��5�7�j�_#ZT��V[;]s��aS         <   x�3�(�O)M.�Wp�4�44 " 65�tN,IM�/:�6(�X���K2��b���� �9      
   n   x��̽	�0@��2E&/�v���6!�PN"F�_G���C��t�5�D@�����"����·����Y�B�����J��C�֧��if�0{��s̞g���4B��5     