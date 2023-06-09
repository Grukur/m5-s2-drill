PGDMP         8                {            m5-s2-drill    15.2    15.2 F    `           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            a           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            b           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            c           1262    16601    m5-s2-drill    DATABASE     �   CREATE DATABASE "m5-s2-drill" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "m5-s2-drill";
                postgres    false            �            1259    16607    clientes    TABLE       CREATE TABLE public.clientes (
    run character varying(15) NOT NULL,
    nombre character varying(50) NOT NULL,
    correo character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    telefono character varying(15) NOT NULL,
    alta boolean DEFAULT false
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16691    clinetes_venta    TABLE     v   CREATE TABLE public.clinetes_venta (
    id_clientes character varying(50) NOT NULL,
    id_venta integer NOT NULL
);
 "   DROP TABLE public.clinetes_venta;
       public         heap    postgres    false            �            1259    16602    empresas    TABLE       CREATE TABLE public.empresas (
    run character varying(15) NOT NULL,
    nombre character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    telefono character varying(15) NOT NULL,
    correo character varying(50) NOT NULL,
    web character varying(50)
);
    DROP TABLE public.empresas;
       public         heap    postgres    false            �            1259    16767    mantencion_venta    TABLE     l   CREATE TABLE public.mantencion_venta (
    id_venta integer NOT NULL,
    id_mantencion integer NOT NULL
);
 $   DROP TABLE public.mantencion_venta;
       public         heap    postgres    false            �            1259    16669    mantenciones    TABLE     �   CREATE TABLE public.mantenciones (
    id integer NOT NULL,
    fecha date DEFAULT now(),
    trabajaos_realizados character varying(250)
);
     DROP TABLE public.mantenciones;
       public         heap    postgres    false            �            1259    16668    mantenciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mantenciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.mantenciones_id_seq;
       public          postgres    false    221            d           0    0    mantenciones_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.mantenciones_id_seq OWNED BY public.mantenciones.id;
          public          postgres    false    220            �            1259    16747    marca_vehiculos    TABLE     i   CREATE TABLE public.marca_vehiculos (
    id_marca integer NOT NULL,
    id_vehiculo integer NOT NULL
);
 #   DROP TABLE public.marca_vehiculos;
       public         heap    postgres    false            �            1259    16684    marcas    TABLE     c   CREATE TABLE public.marcas (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.marcas;
       public         heap    postgres    false            �            1259    16683    marcas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marcas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.marcas_id_seq;
       public          postgres    false    225            e           0    0    marcas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.marcas_id_seq OWNED BY public.marcas.id;
          public          postgres    false    224            �            1259    16677    tipo_vehiculos    TABLE     k   CREATE TABLE public.tipo_vehiculos (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 "   DROP TABLE public.tipo_vehiculos;
       public         heap    postgres    false            �            1259    16676    tipo_vehiculos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_vehiculos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_vehiculos_id_seq;
       public          postgres    false    223            f           0    0    tipo_vehiculos_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_vehiculos_id_seq OWNED BY public.tipo_vehiculos.id;
          public          postgres    false    222            �            1259    16721    tipovehiculo_vehiculos    TABLE     x   CREATE TABLE public.tipovehiculo_vehiculos (
    id_tipo_vehiculo integer NOT NULL,
    id_vehiculo integer NOT NULL
);
 *   DROP TABLE public.tipovehiculo_vehiculos;
       public         heap    postgres    false            �            1259    16614 	   vehiculos    TABLE     B  CREATE TABLE public.vehiculos (
    id integer NOT NULL,
    patente character varying(12) NOT NULL,
    marca character varying(50) NOT NULL,
    modelo character varying(50) NOT NULL,
    color character varying(25) NOT NULL,
    precio numeric(12,2) NOT NULL,
    frecuencia_matencion character varying(50) NOT NULL
);
    DROP TABLE public.vehiculos;
       public         heap    postgres    false            �            1259    16613    vehiculos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehiculos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.vehiculos_id_seq;
       public          postgres    false    217            g           0    0    vehiculos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.vehiculos_id_seq OWNED BY public.vehiculos.id;
          public          postgres    false    216            �            1259    16706    vehiculos_venta    TABLE     i   CREATE TABLE public.vehiculos_venta (
    id_vehiculo integer NOT NULL,
    id_venta integer NOT NULL
);
 #   DROP TABLE public.vehiculos_venta;
       public         heap    postgres    false            �            1259    16661    ventas    TABLE     {   CREATE TABLE public.ventas (
    folio integer NOT NULL,
    fecha date DEFAULT now(),
    monto numeric(12,2) NOT NULL
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    16660    ventas_folio_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_folio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ventas_folio_seq;
       public          postgres    false    219            h           0    0    ventas_folio_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ventas_folio_seq OWNED BY public.ventas.folio;
          public          postgres    false    218            �           2604    16672    mantenciones id    DEFAULT     r   ALTER TABLE ONLY public.mantenciones ALTER COLUMN id SET DEFAULT nextval('public.mantenciones_id_seq'::regclass);
 >   ALTER TABLE public.mantenciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16687 	   marcas id    DEFAULT     f   ALTER TABLE ONLY public.marcas ALTER COLUMN id SET DEFAULT nextval('public.marcas_id_seq'::regclass);
 8   ALTER TABLE public.marcas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16680    tipo_vehiculos id    DEFAULT     v   ALTER TABLE ONLY public.tipo_vehiculos ALTER COLUMN id SET DEFAULT nextval('public.tipo_vehiculos_id_seq'::regclass);
 @   ALTER TABLE public.tipo_vehiculos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16617    vehiculos id    DEFAULT     l   ALTER TABLE ONLY public.vehiculos ALTER COLUMN id SET DEFAULT nextval('public.vehiculos_id_seq'::regclass);
 ;   ALTER TABLE public.vehiculos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16664    ventas folio    DEFAULT     l   ALTER TABLE ONLY public.ventas ALTER COLUMN folio SET DEFAULT nextval('public.ventas_folio_seq'::regclass);
 ;   ALTER TABLE public.ventas ALTER COLUMN folio DROP DEFAULT;
       public          postgres    false    218    219    219            N          0    16607    clientes 
   TABLE DATA                 public          postgres    false    215   zP       Y          0    16691    clinetes_venta 
   TABLE DATA                 public          postgres    false    226   �P       M          0    16602    empresas 
   TABLE DATA                 public          postgres    false    214   �P       ]          0    16767    mantencion_venta 
   TABLE DATA                 public          postgres    false    230   �P       T          0    16669    mantenciones 
   TABLE DATA                 public          postgres    false    221   �P       \          0    16747    marca_vehiculos 
   TABLE DATA                 public          postgres    false    229   �P       X          0    16684    marcas 
   TABLE DATA                 public          postgres    false    225   Q       V          0    16677    tipo_vehiculos 
   TABLE DATA                 public          postgres    false    223   0Q       [          0    16721    tipovehiculo_vehiculos 
   TABLE DATA                 public          postgres    false    228   JQ       P          0    16614 	   vehiculos 
   TABLE DATA                 public          postgres    false    217   dQ       Z          0    16706    vehiculos_venta 
   TABLE DATA                 public          postgres    false    227   ~Q       R          0    16661    ventas 
   TABLE DATA                 public          postgres    false    219   �Q       i           0    0    mantenciones_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mantenciones_id_seq', 1, false);
          public          postgres    false    220            j           0    0    marcas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.marcas_id_seq', 1, false);
          public          postgres    false    224            k           0    0    tipo_vehiculos_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipo_vehiculos_id_seq', 1, false);
          public          postgres    false    222            l           0    0    vehiculos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.vehiculos_id_seq', 1, false);
          public          postgres    false    216            m           0    0    ventas_folio_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ventas_folio_seq', 1, false);
          public          postgres    false    218            �           2606    16612    clientes clientes_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (run);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    215            �           2606    16695 "   clinetes_venta clinetes_venta_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.clinetes_venta
    ADD CONSTRAINT clinetes_venta_pkey PRIMARY KEY (id_clientes, id_venta);
 L   ALTER TABLE ONLY public.clinetes_venta DROP CONSTRAINT clinetes_venta_pkey;
       public            postgres    false    226    226            �           2606    16606    empresas empresas_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (run);
 @   ALTER TABLE ONLY public.empresas DROP CONSTRAINT empresas_pkey;
       public            postgres    false    214            �           2606    16771 &   mantencion_venta mantencion_venta_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mantencion_venta
    ADD CONSTRAINT mantencion_venta_pkey PRIMARY KEY (id_venta, id_mantencion);
 P   ALTER TABLE ONLY public.mantencion_venta DROP CONSTRAINT mantencion_venta_pkey;
       public            postgres    false    230    230            �           2606    16675    mantenciones mantenciones_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mantenciones
    ADD CONSTRAINT mantenciones_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.mantenciones DROP CONSTRAINT mantenciones_pkey;
       public            postgres    false    221            �           2606    16751 $   marca_vehiculos marca_vehiculos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.marca_vehiculos
    ADD CONSTRAINT marca_vehiculos_pkey PRIMARY KEY (id_marca, id_vehiculo);
 N   ALTER TABLE ONLY public.marca_vehiculos DROP CONSTRAINT marca_vehiculos_pkey;
       public            postgres    false    229    229            �           2606    16689    marcas marcas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.marcas DROP CONSTRAINT marcas_pkey;
       public            postgres    false    225            �           2606    16682 "   tipo_vehiculos tipo_vehiculos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipo_vehiculos
    ADD CONSTRAINT tipo_vehiculos_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipo_vehiculos DROP CONSTRAINT tipo_vehiculos_pkey;
       public            postgres    false    223            �           2606    16725 2   tipovehiculo_vehiculos tipovehiculo_vehiculos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tipovehiculo_vehiculos
    ADD CONSTRAINT tipovehiculo_vehiculos_pkey PRIMARY KEY (id_tipo_vehiculo, id_vehiculo);
 \   ALTER TABLE ONLY public.tipovehiculo_vehiculos DROP CONSTRAINT tipovehiculo_vehiculos_pkey;
       public            postgres    false    228    228            �           2606    16619    vehiculos vehiculos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.vehiculos
    ADD CONSTRAINT vehiculos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.vehiculos DROP CONSTRAINT vehiculos_pkey;
       public            postgres    false    217            �           2606    16710 $   vehiculos_venta vehiculos_venta_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.vehiculos_venta
    ADD CONSTRAINT vehiculos_venta_pkey PRIMARY KEY (id_vehiculo, id_venta);
 N   ALTER TABLE ONLY public.vehiculos_venta DROP CONSTRAINT vehiculos_venta_pkey;
       public            postgres    false    227    227            �           2606    16667    ventas ventas_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (folio);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    219            �           2606    16696 .   clinetes_venta clinetes_venta_id_clientes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clinetes_venta
    ADD CONSTRAINT clinetes_venta_id_clientes_fkey FOREIGN KEY (id_clientes) REFERENCES public.clientes(run);
 X   ALTER TABLE ONLY public.clinetes_venta DROP CONSTRAINT clinetes_venta_id_clientes_fkey;
       public          postgres    false    3232    215    226            �           2606    16701 +   clinetes_venta clinetes_venta_id_venta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clinetes_venta
    ADD CONSTRAINT clinetes_venta_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.ventas(folio);
 U   ALTER TABLE ONLY public.clinetes_venta DROP CONSTRAINT clinetes_venta_id_venta_fkey;
       public          postgres    false    226    3236    219            �           2606    16777 4   mantencion_venta mantencion_venta_id_mantencion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantencion_venta
    ADD CONSTRAINT mantencion_venta_id_mantencion_fkey FOREIGN KEY (id_mantencion) REFERENCES public.mantenciones(id);
 ^   ALTER TABLE ONLY public.mantencion_venta DROP CONSTRAINT mantencion_venta_id_mantencion_fkey;
       public          postgres    false    230    221    3238            �           2606    16772 /   mantencion_venta mantencion_venta_id_venta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantencion_venta
    ADD CONSTRAINT mantencion_venta_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.ventas(folio);
 Y   ALTER TABLE ONLY public.mantencion_venta DROP CONSTRAINT mantencion_venta_id_venta_fkey;
       public          postgres    false    219    230    3236            �           2606    16752 -   marca_vehiculos marca_vehiculos_id_marca_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.marca_vehiculos
    ADD CONSTRAINT marca_vehiculos_id_marca_fkey FOREIGN KEY (id_marca) REFERENCES public.marcas(id);
 W   ALTER TABLE ONLY public.marca_vehiculos DROP CONSTRAINT marca_vehiculos_id_marca_fkey;
       public          postgres    false    225    229    3242            �           2606    16757 0   marca_vehiculos marca_vehiculos_id_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.marca_vehiculos
    ADD CONSTRAINT marca_vehiculos_id_vehiculo_fkey FOREIGN KEY (id_vehiculo) REFERENCES public.vehiculos(id);
 Z   ALTER TABLE ONLY public.marca_vehiculos DROP CONSTRAINT marca_vehiculos_id_vehiculo_fkey;
       public          postgres    false    217    229    3234            �           2606    16726 C   tipovehiculo_vehiculos tipovehiculo_vehiculos_id_tipo_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipovehiculo_vehiculos
    ADD CONSTRAINT tipovehiculo_vehiculos_id_tipo_vehiculo_fkey FOREIGN KEY (id_tipo_vehiculo) REFERENCES public.tipo_vehiculos(id);
 m   ALTER TABLE ONLY public.tipovehiculo_vehiculos DROP CONSTRAINT tipovehiculo_vehiculos_id_tipo_vehiculo_fkey;
       public          postgres    false    228    223    3240            �           2606    16731 >   tipovehiculo_vehiculos tipovehiculo_vehiculos_id_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipovehiculo_vehiculos
    ADD CONSTRAINT tipovehiculo_vehiculos_id_vehiculo_fkey FOREIGN KEY (id_vehiculo) REFERENCES public.vehiculos(id);
 h   ALTER TABLE ONLY public.tipovehiculo_vehiculos DROP CONSTRAINT tipovehiculo_vehiculos_id_vehiculo_fkey;
       public          postgres    false    228    3234    217            �           2606    16711 0   vehiculos_venta vehiculos_venta_id_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehiculos_venta
    ADD CONSTRAINT vehiculos_venta_id_vehiculo_fkey FOREIGN KEY (id_vehiculo) REFERENCES public.vehiculos(id);
 Z   ALTER TABLE ONLY public.vehiculos_venta DROP CONSTRAINT vehiculos_venta_id_vehiculo_fkey;
       public          postgres    false    227    217    3234            �           2606    16716 -   vehiculos_venta vehiculos_venta_id_venta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehiculos_venta
    ADD CONSTRAINT vehiculos_venta_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.ventas(folio);
 W   ALTER TABLE ONLY public.vehiculos_venta DROP CONSTRAINT vehiculos_venta_id_venta_fkey;
       public          postgres    false    3236    227    219            N   
   x���          Y   
   x���          M   
   x���          ]   
   x���          T   
   x���          \   
   x���          X   
   x���          V   
   x���          [   
   x���          P   
   x���          Z   
   x���          R   
   x���         