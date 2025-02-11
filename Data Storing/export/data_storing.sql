PGDMP     '                    {            data_storing    14.7    15.3 G    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18476    data_storing    DATABASE     w   CREATE DATABASE data_storing WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE data_storing;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                cloudsqlsuperuser    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   cloudsqlsuperuser    false    5            �           0    0 4   FUNCTION pg_replication_origin_advance(text, pg_lsn)    ACL     c   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    234            �           0    0 +   FUNCTION pg_replication_origin_create(text)    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    222            �           0    0 )   FUNCTION pg_replication_origin_drop(text)    ACL     X   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    223            �           0    0 (   FUNCTION pg_replication_origin_oid(text)    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    224            �           0    0 6   FUNCTION pg_replication_origin_progress(text, boolean)    ACL     e   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    225            �           0    0 1   FUNCTION pg_replication_origin_session_is_setup()    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    226            �           0    0 8   FUNCTION pg_replication_origin_session_progress(boolean)    ACL     g   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    235            �           0    0 .   FUNCTION pg_replication_origin_session_reset()    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    227            �           0    0 2   FUNCTION pg_replication_origin_session_setup(text)    ACL     a   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    228            �           0    0 +   FUNCTION pg_replication_origin_xact_reset()    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    229            �           0    0 K   FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone)    ACL     z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    230            �           0    0    FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn)    ACL     �   GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    236            �            1259    18499    brands    TABLE     �   CREATE TABLE public.brands (
    id_brand integer NOT NULL,
    name character varying(255) NOT NULL,
    country integer,
    description text
);
    DROP TABLE public.brands;
       public         heap    postgres    false    5            �            1259    18498    brands_id_brand_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_brand_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.brands_id_brand_seq;
       public          postgres    false    5    212            �           0    0    brands_id_brand_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.brands_id_brand_seq OWNED BY public.brands.id_brand;
          public          postgres    false    211            �            1259    18513    category    TABLE     h   CREATE TABLE public.category (
    id_cat integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false    5            �            1259    18512    category_id_cat_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.category_id_cat_seq;
       public          postgres    false    214    5            �           0    0    category_id_cat_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.category_id_cat_seq OWNED BY public.category.id_cat;
          public          postgres    false    213            �            1259    18478    country    TABLE     i   CREATE TABLE public.country (
    id_count integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false    5            �            1259    18477    country_id_count_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.country_id_count_seq;
       public          postgres    false    210    5            �           0    0    country_id_count_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.country_id_count_seq OWNED BY public.country.id_count;
          public          postgres    false    209            �            1259    18585    orderdetail    TABLE     w   CREATE TABLE public.orderdetail (
    id_order integer NOT NULL,
    id_item integer NOT NULL,
    quantity integer
);
    DROP TABLE public.orderdetail;
       public         heap    postgres    false    5            �            1259    18552    orders    TABLE     �   CREATE TABLE public.orders (
    id_order integer NOT NULL,
    id_user integer,
    date timestamp without time zone,
    shipping character varying(255),
    payment_method character varying(255),
    total_price numeric(100,0)
);
    DROP TABLE public.orders;
       public         heap    postgres    false    5            �            1259    18551    orders_id_order_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_order_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_id_order_seq;
       public          postgres    false    5    220            �           0    0    orders_id_order_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_id_order_seq OWNED BY public.orders.id_order;
          public          postgres    false    219            �            1259    18520    products    TABLE     "  CREATE TABLE public.products (
    id_product integer NOT NULL,
    id_brand integer,
    id_cat integer,
    name character varying(255) NOT NULL,
    def_price numeric(100,0) NOT NULL,
    discount integer,
    just_arrived boolean DEFAULT false,
    best_seller boolean DEFAULT false
);
    DROP TABLE public.products;
       public         heap    postgres    false    5            �            1259    18519    products_id_product_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_product_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_id_product_seq;
       public          postgres    false    5    216            �           0    0    products_id_product_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_id_product_seq OWNED BY public.products.id_product;
          public          postgres    false    215            �            1259    18539    users    TABLE     �   CREATE TABLE public.users (
    id_user integer NOT NULL,
    username character varying(255),
    fullname character varying(255),
    email character varying(255),
    password character varying(255),
    phone_num character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            �            1259    18538    users_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_id_user_seq;
       public          postgres    false    218    5            �           0    0    users_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;
          public          postgres    false    217            �           2604    18502    brands id_brand    DEFAULT     r   ALTER TABLE ONLY public.brands ALTER COLUMN id_brand SET DEFAULT nextval('public.brands_id_brand_seq'::regclass);
 >   ALTER TABLE public.brands ALTER COLUMN id_brand DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    18516    category id_cat    DEFAULT     r   ALTER TABLE ONLY public.category ALTER COLUMN id_cat SET DEFAULT nextval('public.category_id_cat_seq'::regclass);
 >   ALTER TABLE public.category ALTER COLUMN id_cat DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    18481    country id_count    DEFAULT     t   ALTER TABLE ONLY public.country ALTER COLUMN id_count SET DEFAULT nextval('public.country_id_count_seq'::regclass);
 ?   ALTER TABLE public.country ALTER COLUMN id_count DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    18555    orders id_order    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN id_order SET DEFAULT nextval('public.orders_id_order_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN id_order DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    18523    products id_product    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN id_product SET DEFAULT nextval('public.products_id_product_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN id_product DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    18542    users id_user    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    18499    brands 
   TABLE DATA           F   COPY public.brands (id_brand, name, country, description) FROM stdin;
    public          postgres    false    212   _P       �          0    18513    category 
   TABLE DATA           0   COPY public.category (id_cat, name) FROM stdin;
    public          postgres    false    214   �[       �          0    18478    country 
   TABLE DATA           1   COPY public.country (id_count, name) FROM stdin;
    public          postgres    false    210   &\       �          0    18585    orderdetail 
   TABLE DATA           B   COPY public.orderdetail (id_order, id_item, quantity) FROM stdin;
    public          postgres    false    221   �\       �          0    18552    orders 
   TABLE DATA           `   COPY public.orders (id_order, id_user, date, shipping, payment_method, total_price) FROM stdin;
    public          postgres    false    220   ]       �          0    18520    products 
   TABLE DATA           v   COPY public.products (id_product, id_brand, id_cat, name, def_price, discount, just_arrived, best_seller) FROM stdin;
    public          postgres    false    216   1]       �          0    18539    users 
   TABLE DATA           X   COPY public.users (id_user, username, fullname, email, password, phone_num) FROM stdin;
    public          postgres    false    218   [      �           0    0    brands_id_brand_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.brands_id_brand_seq', 616, true);
          public          postgres    false    211            �           0    0    category_id_cat_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.category_id_cat_seq', 5, true);
          public          postgres    false    213            �           0    0    country_id_count_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.country_id_count_seq', 2, true);
          public          postgres    false    209            �           0    0    orders_id_order_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_id_order_seq', 1, false);
          public          postgres    false    219            �           0    0    products_id_product_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.products_id_product_seq', 2984, true);
          public          postgres    false    215            �           0    0    users_id_user_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_id_user_seq', 1, false);
          public          postgres    false    217            �           2606    18506    brands brands_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id_brand);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    212            �           2606    18518    category category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_cat);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    214            �           2606    18483    country country_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id_count);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    210                       2606    18589    orderdetail orderdetail_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.orderdetail
    ADD CONSTRAINT orderdetail_pkey PRIMARY KEY (id_order, id_item);
 F   ALTER TABLE ONLY public.orderdetail DROP CONSTRAINT orderdetail_pkey;
       public            postgres    false    221    221                        2606    18559    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id_order);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    220            �           2606    18527    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id_product);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    216            �           2606    18550    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    218            �           2606    18546    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            �           2606    18548    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    218                       2606    18507    brands brands_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_country_fkey FOREIGN KEY (country) REFERENCES public.country(id_count);
 D   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_country_fkey;
       public          postgres    false    3826    212    210                       2606    18595 $   orderdetail orderdetail_id_item_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetail
    ADD CONSTRAINT orderdetail_id_item_fkey FOREIGN KEY (id_item) REFERENCES public.products(id_product);
 N   ALTER TABLE ONLY public.orderdetail DROP CONSTRAINT orderdetail_id_item_fkey;
       public          postgres    false    216    221    3832                       2606    18590 %   orderdetail orderdetail_id_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetail
    ADD CONSTRAINT orderdetail_id_order_fkey FOREIGN KEY (id_order) REFERENCES public.orders(id_order);
 O   ALTER TABLE ONLY public.orderdetail DROP CONSTRAINT orderdetail_id_order_fkey;
       public          postgres    false    220    3840    221                       2606    18560    orders orders_id_user_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id_user);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_id_user_fkey;
       public          postgres    false    220    3836    218                       2606    18528    products products_id_brand_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_id_brand_fkey FOREIGN KEY (id_brand) REFERENCES public.brands(id_brand);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_id_brand_fkey;
       public          postgres    false    3828    216    212                       2606    18533    products products_id_cat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_id_cat_fkey FOREIGN KEY (id_cat) REFERENCES public.category(id_cat);
 G   ALTER TABLE ONLY public.products DROP CONSTRAINT products_id_cat_fkey;
       public          postgres    false    214    216    3830            �   X  x�mX�v�:���QgЫj�g�'�QƩtz݉�Q�W���w�� ���UU��-��9���"*�5y�
��5�~��I�[cF˂5��xI���5��(i�!ڒc"��v�x�H/,I4� )xN3k+�+�s.����^�LXA�1O�S���"��� =����gzR�O��pMx��!5: ����!��fz]��X>=X����� �A�\�tI�뫵y�D΄����}̄��e�ħ�&��xn���2�M��Ṱ�O1��{
��L�F�r~-���'<;Y���T/�(Dz��t1��mFטK�"����ŞDA3�Ě�9�
Ns$ؗdׄ��X��ǸK)�BdyH�埧�uȄ�]�6lI�R\�Q ���\e'�
ʥ���%����9��!�$�J?���<��|�߿hK�2��"k/�_��'Sx�H̷ ��5e	E)5<T��Y+��2eT�<��.$�жw�>�ت>�A軵,����ѴT����Ȋ'�<�'FU��J+���/à��`��,I�YO2t`�Lob���cv:�.��<�N3�Y���V��'��)�e	L�M���p�M��]Sy�����4W9r*$�-C��
z��!�V�;XSn|q�'sF�/�o�?�����)�Dwʭ@]���ܾ�3|7�y�&*3n���8d�����[O�;]��7���{d~��ͷ}�j(�3�-�XK�C��4�]R`FdQ2L��{m�&��Td�b���41�g�0�(*O�l$"����|ӵ[&j�r:�Ƀ �Ü�u`�Y��DHj�!Q�q�mP� �e�_�4�Mh�'v֮�@e�%�l�%L��f��qMEڸ�G�G�����T����;"�����L �|L�΄Z��Eh���4/j d�+�Q��A`>��^��� +�����m�ڽ�yr=\%��9�[��.�_���\~��Y��[�M�ܮ��%+Uq���f}�	=���f�`?��� C5�����z[�ܤ�^�L�7�ॉ"��
�Xb�:�h������pO#����PP!�����ь"�����"�=n�YcA ���:���������+N�#�*@�uv�6p��Ʊ��.�q�@ĝ��H�
�r�嬬-�x~��8".�Q+v��!��A��Jl���IX��	v^	��X�hC�D3�4���.^{+�ϼ'����⹂�"�jq^��?��׸S�Y�-���B��Hx-��db�#�mK�6�w]B�ݺ$�w]pƸ�6�a$v�����Y�v%7�"�Hg��J����S�~��y����d|�����{@�O�dG^ @���#������ξ����cJ u[�`��Mގ�C#��@0�_��ؘ]�L߶N܉$%k�hX�V?�w���55��we�E�8���CH��D�|�ծ�W&&5;А�7����A���4�����,�ӆ����r?�6s�ٴ9$��a=�����h]4"ibp_)E�c�a�Ó�B�֧3��&�����r
bŨl�����A��L֯�O�+4��Ǡ�@�7eβ��b(��0i &Az��2���Kq�f�`Р<Ry61�y���ԛ��Ļ!V��L<c�dOӴ�R0ԞE��IR��U�'\�A�8�E�33���`)�g��*|i�3�=HkϏ��4q�Y�epoL,Rd�X�n���%{9���,$ɧ*�Ҏ0$�2)�ﰴ2=���"@qO�B03#��~�R�-�@i�P�-�@V��d�Y�e�螩��a���,�O���@CR9�7�AY�-���g�/�I�a0����M-U��y��n�E��bXʅ�|Q8$6>�Bk����e���d���.[!�uC(�������G�D]��Bjs0�<a!����D���-�����Q�Kh-b}�
���"�
� 0�4kR�i�4�
P���@�����.(D������Q�1�+�W#�aOB�Sc#:�/��t�@��,����g�b"m�Rƶ��zh�{領_Q�t�L�2BK��I�0A���. ��E	M[XU逋�Q���ʔfg�Y� pQ���&����P�yɁ6&�eЏ��RX;�ࣺ�|T�q��.��w��R��x�����6]&��G!ު*_�������a�j�;�8�P;�4��7�i`H�g˕b�pP��>OԪ��0�Q"��\�vE)RB ��\����neͥH5�'��j�j���wa,�VT#�9%�p�C
���0�5
�F�<��M	�Va��\� �����#���<+z=����R#�Fd� |J�L���$����M�1�Wj��S�}��8��fne�� � ���r�~6�:�{uq���J�!_����1m��,D�=m�w����Y��M�OAg���F-X�K���d�y
��EI��8���ϫW�������TV�#=��&6Ba[1ǠׁNˢ�@���P��|�0[f�_Uk��G����0�R��v�c	��]çwS!�����7�H|?��A>C]�#ɆD�9��ej��#A�� �h���c!5�X�cf&����&��{d���w�Af\Ӱ�� �̔�
3G�8H���)���`���l�evR拉u���)�8�L�N�q�;��5X������(�{����� �$\��u��O�H����Sl���6�� yY���XW�%��8g���{L8����Q3UN�V�����
c�~F��GT[�q��w�z�
6]���	\�_�+�����"v��PASD[c�8�O�w��(��O�!ӟ��m��7[���	ܪh:88�-����Ѡ�a-/f죲�3�w,K�C��*��#��������۷���[�      �   O   x��[
� �﹋	���@�G)�S�>�|K��O�t�"�5a��E����Ύ%:�⋅6�]YB�5�P�*����O�      �   �   x�-��j�0D�s��?�`�ݥ	���P���f��Xؾ
�L��G}��3gJT���cQ�F�jSd�)K����W��H�8���Ł:�'�Aݘ�N��,{��N�W�CtS�=��|��j�,Q{��1+�aJmQ]��dl����%f�����l�L�s����'g�sv�0���7/ubrc~-KL�ix�|/D�	�qG�      �      x������ � �      �      x������ � �      �      x����v��r%:����>YU+��ހfA22�J�� 3���`$!"T<2�5�A�A�A����~�՟�K�=� �d�{i%�ts������q4��?�Rl��Ӫi���\�Ko�\�ղ\�� �ǣ ݍ���p��i�_���m��<��W,o���ɻ���Q��(�d�')P�տm�E�ٔ�t�y��^��(���E�*��byCHl1���Oh��x��S��p/�o��2�P���6��V�ZW���˻(��4͡�pk,S�̗%���>s�u�[s�}���\�7��0���Z�{W�b�~*V�r��~DS� ?ꏮ������C�X?��623�C�Iu� ��]���I�aj)�6�>4��m��5c��7|#�U�¢��������Ve��f�������#Y��KFAfֶ��{������K;�j�ZV� ��)�2��%��I�v:���^_]Ne̳MQ-�7��q���x��Nf�W'����@�8e�7ۻ(���)��·:9��bz��r�ɴ����?�P�.��v�X�|�'~X�Q�$ϭ#�˾������M�3�	}�W8�7���[�
������PC/{��e?�|�V)�^O��ӦZl�Q�g�%���D���M]È��sU`?Gan�N����ܭ��խ���w���91��=1����▦�5�_�b�D�̙�j)���chP�f}���`�78�5��moK�]ZG��}�±�5n�`QE<r�����1>��(����@�T+`�����תE��!�'7�ގ"�B���sSե�>�X�Y��k�M9H{pɟa.5��oo,�&��E��`'�M�.����2�ӢZ�8Dn�}*aA�f�5H�3�>����k��y�[rG�Kח���Y�h��[�ە������(�<��>"�������Um�]�[��]��z��*kX�A(ߞ-�������"������U�#�vXkx0�Rd��W,��a7p�_�Jҝ��߶w��{���ĸke��v�����;<��,bݍɢX=�u�v�����wO3F�����7�.pX�_y����z�/D�o�%4�PNl�Ǣ3ݗ�n�$&�{�1'�e|.�㳧fS�K�}nj��M�ao�/�����`�4��$h�-3ny�P>��"QY�?ȣ��r��!��鼸GE�U2��?:lߢ8ʬ��%�b���#0�M�(��b�,�?păD߯�v<b��>`ާj�y�n'�y�Y,=U�>��$�Lz{����kZ���V$1�$!��eW�0ex|��x������>����'"�����xẟ��F��s�r���n�k��3!�ū�)竒X7��8���T%ז��6�vV���c�����t�ϗ��TAЦ�w�|�g $�0�I
ۃ���l��.����$IE��o�=c�ǲ.�kh��ÉF��a���A���(���f�.�I���x0|U|��ҥ�����n_�u��X�[��� I&1{Z�r |�J� �C�D��o���%�;���P���R�n�6�FG��V�"��]+���Zd����,y?ś9J�u �p1�
�ߟV�h�_h��k,}PBF"�*V�Z|*G��������R������Z�K^��z�*��v��]ÁQ"	x}в�,q���Nx��T��~#��'�]5(�� Y���c��d�;����8�X��Gs�����v� *�B^8�x��+ǓҀ�EwoU.P�I쫗�G�ͷ��A���ݱ\n>1;�ԑ׍����@/C�ݖ��{��[Pٽ�L��;檢�f{W�fyq���Nl�,WM�yș35�����N�jg�3�^�J{��&Ճp���V��j�=�y��'���������6M��G9W#�����po�da_P������*Y;�I���Z�h�Z%�Z`Jx���5-�q����8�q ��6�[xug���p���D1�巒9Ӷ��%�/���_xJ���b�B�%����q$�e�Hb%�V���D��Q�zۨR! ]���N^ R�Li����[5d/�-hp/�X6��ΨX���fo���ByR��+��#]5v�=��n��YT^ht��/6�ͣ�G�����'�Iv7��~o����{�g/���6�}w�����q���چt���;�����v������R��t[o�'T5�c��^�M���ۏQD=���{U�ڛo覞4�r^x�ygռA���6H��&�N��n3�C�dx)N��V_DFD�=1
���]���̛^|
�\˗Gym�,�e�l�F���Bo�D +���V�gjN�����L퉠Ƅs�+�T�}i���gN��nAK�tNH��i6Z�V�Kd������'�w�Ŷ�!v^
~�"?���ZP���pPPc 맬8Y�L;#J�|)rT��\m��&rR>x�Euוprg�s�˯U��ڻ qDH�.��(|��7׏-�;��/��U�},e����'�e�jq���4K񺤖6��ͭ?�5(b�EAbbW��3�H�3V2g��OI�}�ѐI�<p�6^W'��gc��*�O^5υ�s�1�O�
�Dm>��0Eg�K�y@�)ο@[p�ܓ,�?�<���(�ͪ�e��R/@��۵+��sN�9gb�s�.S�(��	���@l�w@6�,e/�G"����@;�C��$��/#��6
����s�jed�:��z����lru|~��Mgqe�S`�K6��.�4$�
=>����|"��.������.��ON�����Q��_��ႛ������;=>�^NN��C�������κ�.@��y�ߵ���Y��d�rI��Jm�F9�!�����r�-����=9)5f��y.�7x��Q$�o3��9����k�j�}�=y������H?������i�R'�I�|�9K<fr[���>�X�n����j��^4��C�G��Y=\2�$�QM[�!��_Q�-�,w�!���~Y���tL*�K����SY����K��9�}*/7<�����jGn��DQ����t؇И���gE�(p��D��w��u�C^�xE"�����P��"���:��F�3�D���J8ۏ�(IZ�B�!�U�~~-
��!�nF�����ҡqbV-��j^���'�Y�D���Z��������Ӷ���>b�ΐ�SBg������p�Z����T^=Vt5��'G�� šQ(�Riu��)��:2"��Lڪ�W<�i`���B�ņ�H'h
C�l�}�ec˸B7mG�hF�mc�2�� �;�n 6��ۣL�Y,+���E?	"W���o���#[�����<�G�$3X3�}� �ed#3�б��6}c��tq�.���Q�v)OPp�ԵwX��������.��Y=�aj!.�,��`@�5d��%����r��Ѣ�ZЩ:i��(b!;����/E�/��˻�
�'At�6J2�����y J��p����5l2Z�+��xg�/]M#{'{�h�yU�����J$��?��U���&���ݦ(A�#��丧b�ja����(�3cZ�-^v�T���=�$���Bu�|��]��Y`�x�/9!��ڜ$�}�6F�Й`�RG'�\�?H5A��N��F��zk�M����&�_�zC�]��c����<��_L�{��4�����':�ĢjНG�&��!
�`Z����̽���Kc��r5cŝu{�x^�d*������{��� ��oK]�ĖPc�5lQ���7Ж�|��ƾ������k��TJ��e��>���:r�+tn�����x��vR��S:����O��_{�R�j�~�)�ռ )���2v�~�V�����c���~<��Ҟњ�D�e�	��}ˌ;�}�1�f����'A���ṳ�8m��L̈~j	�1Z	I�T����i������:�`l�Z��5B2�ߟ�GZ�9\��%l��ʁ�d���r/����x���P�����vՠ��eԩH�q�C�	��w5ڐl�P�Y�P�����p��D6IOvaQQ&l��1��R��4a#+�ҷ`q �8���0������%7�W$�V��:#q    �rk���XUh�|OO˳1��'[ ��Wplթ�T-T^:�O�1L2k��&�e�~Dt�!���qj�Y���E���<{�,������;����i���O�i\c�*i6z1Fͻo)����
�������=k�@/ܬ�GQ�jt��*M������OF��h�d�S�,���?H]�j��N��Meš���,�_=���{_�����I�pT��7Y+i����l�If����d�ʻ^�]�"3%ߡ�؉͞v� BPGa�eǔ���d��Nh�S�;�c��j��� G��fæR� �n��N�;��&��ܙ_:bC��,I�A�F�{�m�SeL�7�l���R�Q�� #h)Vs������`ϥ�Pl��
�Xn@w�T�݋R$����mU,[м��e�р���-����^�Yݠ����h�dTLSW:���e�Hsb��\I\eNL��/Wۅ`nt^�e*b��A��ı2�ue@Թ���gl!dI�֒����Ô�w�كe4�RK�}�C�ȅ�M�(eYƉ�i��-�	����FV�!dIG!� �|�&Tz��1ش	�ͷ��E���f!7Ӂ~��]�΢���N�x����d"���<��4��P�G%M���jzyqy~���|~r}z��㳏��dv0���"�L$��c�����қ�>�MϿx�����td#Y�$�}B���!�	�����E�p�?�]�]M��K����'�bzƈ<���'�gO&�+����M�ί��Z/~J�	�#�?��GB&�a̮~?����'� N#Ѽ�/�'��LpY��ˡ!�i,C�)X#:9����C�XV>N��O���Ϧ�2H�ɞώO>����]��s�,���<-J![~q}9��/`�����7vR��P���9>�r���'���n�����(,���������wq	�pt���^`j!�b�!�m��^~�����������?�������������]]����N~GO1�R�/����߽��ؖC���d�e���'Wp�uiS�B�.�8�M�p2�B����tri�������tr�;v�>ȣ���wx}��g&�999�;>�;?����p}/�K�L ��vN�q�덽���ѹR�������<_�童��N N�����;��=��S�M&[m�-�岡f뜵��/�U9�;��K�� ��] ���
7z�5����\vm��k�7P�3~ٛ���9���H�z�x�����x\�bR$��CA"����OpŶd��@�a��}�@t6����^5=X����eg��ւ��3٤t��$a3��:Q����-0h9�n����p!%��������(N6���i�5	<�AB`�f[?o����ZTޡu�����3������)�ѹ?�8s	xx�j��o�a^�%��c�"����ɵ@W���W�W(A�)���(�mceU2ʤ�����=��P)�$v���h]�����tV�r,>�ը�(�ĀI��^���aUph}�;H��[�w��޽{�|96�(���#9p�ד�Iܾ&�/��Pa�ç���B³�UJ�a�e1 }�L%L�S��Wd�n��Lr�45��lJ��j8�%Hf�� ���V�޺İ��~�H��->��! ��Iu'�h4�D���O���#�z���0�F�a&��ؒ��`�i�`��
�L5��Z~��";�=w��A/�3G�$h�L�h.j��/a�9cL��N$4�V�M�,v����'�D�x}�V�e����G��n�6��e��O���3?���?� #�.Ck����$�3P�F���Qn��rM��1��]M>M�̉LI�����)\�+���Wx���0�߉��	A�Z��ta`�f��օ9	B���)8d�Ff��	N<Ts�xn0�ZU���y�+�|��A��IU.:�WI�@��1#������I�h+�*Y�L�H[��i�~�uin5��9"Y)q�q���0�Q�����bKa*�O�}��!�8�=�LZ�}!{E�a���L�\�0L[�š$K���8��Jm$A�x?h���<pD�f#������G��L���RFfc�2�?`�8�FC5"�p{n�xp$�y9��q������I�����g��S�ؒ��l������%H�`j��ɑ���:Nn�BBWT�Ϯ=���M?��M��N�k���������{���X=��fUº��&;(2qJz����[���6�n۠��4"�K�O�AG�?�$���(�bJu?��*; �V3���1�\�|�7<.8;�k9��$N�ه�;Y�	�3�M�I�rv����ng�ʸ��ћl0/^a������]9�diph�=��|ۑ_�dR3v~H���ڂH��I��Y�^l� dQY�������U�(J�y߾HI(�,X��Sc!aBV�t!0 �?l���I��h�&&�-o���	��Y��:V��R)��a��F��$MRɲ��dSM��Uzd�W�H>ԫr��D�y>"۸�$ٛD}	:���(����o��	5��Q���%��t���~��Q�v�:J_PU��ޯ �������V��t�A���aB��ġ�p�gQ|��08>d�.��b�?�:4���d/��_���N"pn�� ��(�߬�'��2uI3A33�U�;t<�W�-3v�߼�[��(��u�6%ĥ�����h�u;�ҵg-s�����n�s���J���c��Ж���ۣB@Πg�m�C[��Bn;���k�ku�Q�΢xd����N�4��|w��I�E �d��\Z{p��YoW+��i�$�!p�I�<���e�+P`���dBf����'}��N�,.Yj��x�[q���d.����/�
��ժ�Z�6�?.��q޾�ʮ���읖���x�o��lh��&�c5��5�y^'�,ro�x��l��Z}��fXF�6��~�Bb%/�����ʅ���9�@�^7��>�^'�d<PJ�UȄd#�тC��:O5�Sڣ�LB*���C�!�k�o�q3�Z�0>�bK�X�΄�?��~?���3==>�M-����OE��m6���_ $��ޖ��FC���v�>v٢�r�>�K�a�6Xi:6��j�5�)�խ�����ǹM1���6�QH�Fq��l��w��?�p�$]���t�n����f���9�V x��j׋r"����6�h���ub��4&����0������䇜;�����5#�⃶}��a�ʃ�H����H���p� (�/��9�ѳm�)F������-H�|����� ���*j��ͳS��$ev6X�1[���K��u��@�F��6i۪m�3#�RԋE*�͊�J����h�$vV�@8OP�W�i�v�!���������S��w��Hΰ����zW�G�k��ϵ�>���X���i,0J����B)���@��(#Ⱥ7$f϶O�8Ol�,OD��C2]�����\|��C̵(c`X�<�x����"1�@�UY%��NW���(�0ᮭċ�?��Wn�o
�2��4�0wv�jb��+^ʭ�B9��ҼܐY�m�����%S\ԗ��D+�����4���H��v�h�f���@;j,E�a"X;�@V��O���0�Y�K�A���7N��"�I��nښ4L��)NXJj�OT��o�B�Y��rT��r����ԍ�>.�ƃp��&��=��'�n���+��y����V��E$�Qh٠�!�Pז$�ڔF�P��K�L���4�_&��1e�\G�,(6��F��.^��gK�p�����1/�BH�\��|y��X�*�m�(Zlno	�).Ly����i^� ��8��%�Q�i���#}��۲o�Lp������ȫu�	D�s��y�
��+�u"�����K��&J��w�ʶ��P�cc��]oLd�M*��4��|�����<V6N�m��k1�.�r<������d\׳a����&ƍb���e��X���gfw�H��2�C����������_;�>M���ˊ    #%%�au�mܞ�� ��$j/Z_bJ���uߦ�i��+�/@�� ���c��n���Ow��>Je%\o���b
����Y�4t�s��4�V��馩"�O).>9���m�y_0��,��/���?t���68���k!�N�P?�إ�HlC��'�aE�i]e��n[{���^4��%=��,�Vr��D�����WiM�^�Ɋ�|��{4������[�Cg`9�du?-[hʧ�%i̭I�[�/@6~C|y���4F�_[+�i���&@#jD�ڜ��kv��2��Y��Y(4b�h�9�H����ny�t�X��2D�v@�i�<�l�<�hA���k1A��K;���o}�Vg-��\�7u��l;M>���ִ�;w��J��2��l���peg��Q`9����w�+,�ˣ��}�N���N>M�/�����T��wg��h�p���JDb��A�Ȋ����X��4�^���1�~:��{��m���+�Ϯ��+b�b|9����/?�Ȟ�0�S����p�st��y�R�-$d�!˄�@d�?&\M4�\�6���oň�J����%�V���p���4yFM�ox6V� m�*��Qk��K6!���]|�ڜ*�u'RZU��A�h�.��lq%���i��zr6V;��ÖtKba6��M*os�l�z��Ȼ蒡� ��3��rK�b_A �2ii	��~H�f{+ q
��ı�gc5�N<��h�A?ӞGVQe�d��bu�D��b�.h��������.'?���S��0��|��\���a�=�h�����p�����T��{������gה�*<�x��ݷM�H��yO>�K���������	�;�����";c@�)Ǵl��41�GZovr|:5`�:38p�x.�mtNb'��t؟؆hI���`�3��;��*LܢJ���v��E�i��EDc7�o}K�΂1wnj���ƥ�>A�������w��Q	D̤�������Wa��b�b8.R%�8X"gJt���cy�i�6� ���<g����C~+`�(��\t!��
Q: � ���0��a�"uF#��Fў	�_�hre�@�i�>��m5���Z9�X���5��G�,�����(��__��V�;؃,�:GR������>�j�6[g�m��;zV~sU�,}���������5��	?\_���`��|��`�<k�TTKG���|����,`�l���T����X�<�m��?̒ܜF���=Pc-���an�<f�q�}j`��a�e���aw���L����y~p�(�Yd��Oշ
[E�!���@�Q�83D���&<�sX#c�ª	(�wxt��(''�	
�?��x��K��<�pkwƚ�����T�e�臲�0O�<���.��X|=�'a{������-�ic��h^�wlq�e�lS]�~8��o>� X̛խ�A���ƌ.��}���lC�<8c۾���Ѣ�r'}�<u�Œj�O�1�z�.��Cx��I�\���sb�b�d<А(t[�;�Z�$n�
#9R.�d�ֳ$��k���L�L��#:������ZY9�WSkd�甥�iֶ͒��_O��ӭ�Z0OEpt��ؘ'7�b^�r~+����XT˂\T�Cjn��b�)ؗicg;S��$}������T�h�z�;>�f{(x ��bъ�afAp2�)B�������Ի<��8EN┺pD�Ԙ�[����3Kjc*��M: ߑT��I��C8 �1P	b�?M�}24>���J�Mg��V�s���aM��������a.m�s�dS	�����[fP��T�_�<�נr��o�k9y��4{�P�g9Da��/K���ٶ�2r�}��%	c��(��,�|�Y6~C�VL=|���.@X=;aZY&��'բ�ءV��v/M�E�(�ށ�-r��
+'*��w����8`r�U�톌�Z�n�h�w�
���
���=�K3���� �	�4UQvfe�č�I�.�� �,K�������d���v%�s�|-wi���LH|�5�h�/���Y��bD���۪�:�g�mZ�uݏG/�^%2���G9�3y�����j�pW��~&BR����iG�Q�x�<�/�W�E��/45��K@5��TO�VT�(蟅��w�����HV{{����7�r|up�6�;n-�4�#��3�h�3 nל; >�-��ܵas�́s"W�B��5IO` ����_IG��$y?P�6ق|)����M�8j����M�-ĮL�5�Υ�<NZ�%���;*���s_�DgB�:�vĩ�.�r$���(;�$�C+�E�]D\�������`,s��X�BVȶ멠ډZ�}	�T+�2((�wJ侘��Æ�00Sc�..�;q+��[x:�����a�f����;y��(��9���S�њg�~q����w�Rɔ�`�~����"C��s����Ό��B�r!��5.�d���&�x>�?��͎�>�1QÔ��O�W�&f�g�u�w�Ƈ	����:�3*'c��PNQ�-���V�fEojʱ�`��Y�qQl�bc�L��f�E��(��z���b~պv��X�3�X�����m"�$,W@���UR�rʮ}���.���1r���Voh�P���L�NɄ�giW	�b>ř9&Vc� mC�M�!�������Q0��KȮ�uy�H:+����i�$a&�jF���Y-
�[���H5���+N)N�J�:�c��Ϯ�*ǈ∓R5�/�D­�؞e4�o�ec�й./��h@�F_�J[%��F�����Yhv�c�Η��(���z4�^y���0�D���N�^'K��h'� \3cN˗h��:u�rܤ>�P��ꪥ�'�L��!������@B��_��[ӻ&0�Oy�PfRqbw���H�e�b^��B���0h8���k���Q�����i���K��q"Z5�]=�Ie3�����e�M%W��D����1��횇/��<�}���#ō�׾8߈FȈ'��ɍ++�=@T�o�9����{��#I0�	%��6�� ^l�xډ��$�u�85�Ke.{h?.A�| �l�"�N���:�ə�W��X����w�_�Ȼ��f�Ƙ�]d�p)[�[x�-���C�̥xy(���+�Qw�,�f1�&�-�W8�\q�"ے���4R)��y���ls��R0�ޡHc���҃�&�Tv��-�C1��h4.[�I��S��EU�	�=*�-��-$�&O�,&!gk+)��ε�x�^8o��+��"�A�6����ӱS��ϓ���\3�^">�w��cl7V��KA���>Ω�%o�Q��I���i��T���hw)5������I"��=zm]h�N򑧚�ܮ�eh횞���uɗ�G)5y���V�њ?9�ͥ�:0�yc���m F�UK��,�&�������a��>s٬��ߙ�����M�c�!���r��=<�!vy�<ӄ�jV��~v{ٹ{sS���@��q��.U��(���f�٬B�:o��.�	\2��ŏRG�EL�%��}x_�h���YpePn&al!��LY�Uo�.]C>\��A�"0�u��Y�G�l���r5kʣ�ypr�M�n��ka���Xs��<���f\�����>*� 
�]�!�cAb֏�L��~�;�
9�$���j����w�4�z� c�9���g�\��r���(%�鐘���OP��X���)_(({�+(�S)�D�'�6����cSO�-�Y?=�3��2����Bf��C��q�-B۸W�Sҍ�3}g�O Dm�״qf��8f�<W�tM[�UL�7��$��3�-Q��*��Y{"%`��{f;����$<���Y>wv�W�5���;.#�j�u�u��B�?�hz������"����F"�Q���ESWh}dsk`ʭV�b��NO�gm�5�t��z�	�с��hґ^���0Mq@,�8���F�"��}s:�L����҅u��ڥH�5"���DH����=P���xE�    :"�#��9�&�}�a���R�O^_�O�^��E	�!߫&o60��Ot��L�߈w~�k%^�I�`��:��p,����v�~+-��"=?9N�-hkP4b;��	���M�iz{�&2g	�m��0�@$�6�Ϫ]���R�|X�=A���aʓ����Kh�s��������{�1�!�#��n��o�'Ā��>��I`wl��	s�xE�$r�fBKC�ܙPC�:UݤD���k�����:�i^�݅K�X��!B�:#��Z�J,�u�I�i�e�&�<y�ʤ��Vh?D�it�h��[a�ueӼo��K����)̉⃾B��Q�)����潀�sw�\>2@m7|[Aa�gŽNQp����� �F�fQ.\s��mt�e�N��&/չc��6��8�$PkRDЀQ:����,1�g���ZEʓ��)�����%�������w6�wyz���q�9i�1�U�Eo
�
��D3#����Hs�)ƚE_�f����rk���V >��`̱����mc%�E�J+A�yuB�5��9r�j�i��Х�� �� -�����{���2n�!!,��<�({1�O�}��l
�7(�/Q�=����8�{�p~�����Iw������3�R<�"W��"��Ȧ������I#���� ��Vm���锍E���J�XiBT�&"�iٹŉ��R�ʊj$�]?1ʲ�>x�μ��C�](��ū9�o�"A>����q�&'7�h ��`��@�/�RϘ9	��s�b�!X��ט�Q�7�v���|gb�/Y���@�J�h��ѯ�}p0?@��1���U�VT7�ymmWq�Y���R��x��&�d�V�4��V��{�������^�HN)��
FZG͝X�	�I��$��!	 4ʞ�#Q�\a�x3�h����	I�:��y�-c<��������w�����Y:k��1����q���ۥs,=�K8x֣�"M���/$��⾁�UX�T5����=Gjz�x�0�c� �ɗcq�s��Y��mC�E�Яm>��yQ�ɢ���,{�z��"-��d�������:��i�;#g�0�s���i�&y�4^��N�&ys�H��9R@ �yS?xi3W��q(��kL)Z���p��{`�j�z�W�����Qꆁ<��Qܮ��R�#�L�:\`�1&��ʒ�ey���2絴�9ӀK��?�1+�=���vd]�gѷ��5�`�v�)v��� "�%�#e$o4;�,�W��_f	�����^nD%���$�!�4s�	.�{�h��z�@��)�wR.�%��p9=�
1 �>5<��lX���	�i	�"��	o�Q���f����~9�Z@(x#F�s8��s�"D��5q�a_����&�Ɵ8���/���i�v��|=`(�[돹���)o��Ԡ�Q2#۰H`�@�J����{Qm��9
eAώ?O'^��O��)Ys3����0��Hن$HҖa��X6gR7%�:�B�L���-A[f�i�F���c�����X��і`[2�(l�ŧ�+x#�e�	�H�ƣ��@�(V������(�b�}T�yW[]T�UΏ`��<0`��ގ6w�|��w�Ti�������!˥�k�U�q��*�z�ê,9 ���O2^mC�h9Z	��m]/�@��&/N'֦���H��!��=�bB|�.��I��$ ��N��N�h��\^YV盖[���\���YI�p�Kɓ��?����� +�Wr]	��G��Ԑ���<tO��KII5?��ư��Y��+�|���gpa��G͚�I�1_�3���U�6dI�;P�3��B��`=cG���s��aioW.�GF����vz����������������ן��$w	ޑ�j��|�(���JV	��Esq��韼QW�Sy�¸�΍
�β��|P�=��%�~�Ճ�fՈ�$��3����h��޾�u�5�䅝Er43,�2���4���,G��X�0V����>�����Qf߮P�w�(�i�������P����-�f[q#�:ƨ5�]4�%.N{�d[��b^G��y�\G��0tߜ��5P_�g���@I�LW��[D�r��2�6�.�7�9���
C]Z�Q�"���X�ɼO��e���u��a�0/�{U�f��(W���.J+�o�m(��|�꬗�"�_�?���I��<Ä��>Da_1%�(=��ۯ(��zg0�%���ٯ/Bi�g��h�ř���;S����ݕ9c1}�Ah�[4ȹ�IF	^D8�6�S+U��
,H9n��>�D��v�`Y�ɼ��hbi���Ƨhn�'���,��1�P<nwF���{�,-��G���̏:�d��8�]�.�b-n�y��A�
>]l�΃�]3��<P�C���=|3B��^���cw�u�R��|#����r�Zf:���7V�+�jH[UB��.w�*�Q���g,��1�'�=���Vjʀ�C7�ݴ�v!j��Ȍ ~��A���e�N�:�Ò�$�z{0v�X<fnמ����<LԊ�ġ�!N�R��	y\��-�fuY>I����0b `Ddfb�%X���(r�=�R��bO����S�&�h����)��D��0�:�c�(#[k��GI�e4βe��oH�9ף���o�����`8���*h���M�E��Ж��YF~r��}9���a�A��ד'yxb�9�{7�����z���������P�l��P��oyRe��5�^}�í�ζ�
227��	�ڻl/ԙY��'�r�_%e!�ݥK�6��M�� f�����O�R�m���b�_����;���I��ɇ�m�����fN���`ה���g����Er�$��*��"�cVd�1+�5@;�ٸ,�����.�2���F�>~��<?���kD�L%���/���t��I �ӳ�c��3��˿ٲ�Ϡ��:g8V�t�o�;��Ӫ�ѺB�����f5+���6�d��l�RR�QC�e��_�����3���Z�� ons��:NNCz6[De�=����$;�����5��L^*�C�I u�y*6���5S�z���H��9@x��{�\B�/Q\�������w$WId������8g�㽏�BwV��P��+Tb�H�w®0���W���d乶�x,�Q�������qS��Č+L"lLD�o%&���K��{� �`��nb+�c��Qh����)�t�!��aY�Rp�ؙ֯��b~A���AԈ�q����\qfp�ۨ���y}�h�l{�!s�ۗ��컵A�,1/np�kʖ�'�0���P$���,�;ڤ+>�<h�A٩U��`��Ħ9��|���z���q�=�t����E7=�c;�/d/�^6KL�ЪxP�RF�e�ݻK���_�%F���=O�|�~���T������f1�J���m<�{kb%�(�?Ƌ���RΡ7�E��a0�i� �1L �"L�aq3��W�O���lj�d��As�= �s�J
�$��p��ӿ~�P��LY�u��i����}*-l��T��'���
C/mb\H$մ�4���� Cf���%{������0�)d�T����Ȧ�o[\�)���}�N��z�勱. �w����;)��Q����fũ����x�~�+�L��e����5Гt��g����\��Pup�4A3ٓ(z���9�v�Th�8͞8����ـznl�-�{�\�$rv�(ה\�X(V�گ�j/�G{X�K9<�ޗ5����ŋk�X[��CS�����x\���5�P7��b^��'�`�_,�=h*!Ua�X�S0��@P���!GW���Z@��LN# ]�F9T�l5#˸�/Y�S���?�TÚ��,���|4��QA ھ~!R��ݨG��ѐW�͡UT-t<�E�#�U�����q�&�Lay���oq������;���2�K�� ���`4�����<�5!hyF=~Ģ!Y����h�����(�B��[3�w%J��~�������h�O    w(-Qa���Nֵ&�:�����_gz�w�7�(w��b�C�y�C1y����8�8���&��vmY��}Ƴ�e�M$�b(��2����^{�h�E-P��.���9�4CGu	�<L�W��BG�20o�;ލ�\T�wTw�u�;�Q}C'�6A����]I4���]� N{�s��-_���� ��ـdՎ����f�6;�����?�8��hg.kɗn�U�`����@ݹ�)���Cm�e]o�"j���4,^�PW�(�����ç�~ߋؑO5�"�϶�]�\�$���_u�I�����gKhwm���E"w�Q댢]3����� �X83Oe�GXm��#���1�Kd�r�k�6�8��$r;ȥI�D0��톫Gy���&ʕ�c�R#֠��0�ěw�	B��F�d��	���HO� E�2;��m�=���C�ѐ��TO�	p%�L��� +A_)7i,���:��@��/{�7��C�������T~3�<
mq�Y��ҜR�@�ȴ���'܃�����S!�v�5��O����$)�W��`Q�~{I)��'04��TX!�Oi �L��K髳�v�ȽX?��ӱhI�s�c�\5�#n�_�*��,׭1�.R'%��l\����cz��=[�]�	�����
c�K��".]L��˯�N���R��" ��k 	�ku_����A������+X�(�Uy�/���N;�m�5(�=*����(�t���9a2/*I䉽7߫[D�O�m-6 W���{��u�h�4D2��3�Z\���Qy��]�C]�����y���҃�Rg��?�YT��{�L˜8q�2 �w-D(���F�r��Uh�BH[��m�����@y�����f	�L}�@i�݌\��6�%�z�FA)��ZS�ܐ�G��'$`5	�b�V*�O�=�&3�i]}�(��F6���HQM̟�́���B!Ҷ4�U���h���n�o�o0F$ ��ac�����K�IU��n3��/�Dإ��q}�9� ~IB�""���&r�����7�;��� �}gT�(X��zcT!�cq��+�h �����&�u��2������h
��}�%;�ų����'�rc9$� ���#'���#.�}=
�i�A�q�}qg}=�pSJ�N�s9Ưx��N�o��Q|�9��G�EyhSC���wwe�vB�i��ʹ��C+)K*�����w�	r�	*�<)���x������ڍN���b�Z9FT��k����˴������sBZC曡rW�z���V�����u۩EC�#�
JmZ
�����K��0�ȺiA�
]��3֥FYW�	�d�.;���c�+k��&��@#^����AU�k3���)�7�T�i���~�Ip#����ytվ�X9�d&��uOKu�FB��Fl��h;�<`��N1��J�0eo�ͳ��R�PxMhˑ�vNH �߱_.˻�Q5��&5�x��*�o頵�Q��!N��Ö]�j(=�M�R�R*\z:����@G¸��0��
"���d��â��^��8�5n�w�"d�ӶU";.��{m��7�����G��@ڶ�&��,(#A��}������\wȢd����m6�ʲ��)b��r��}��bL<	I\H��7a#8B�)ћ���ҟ���Xe�M�IA�����Q't����m���-B2�s��?��饘��mn�7ǉh!F��B~�^t�D���Ya<`�Uxºx;Xq;F3u�qd��36dG���A��Hn�{�d(c�'�����H���),�(��:�	A�C��1��.�^<��<P^��=���vb�� +d��1��hJ}e\��-SK��J'NPA��d�����%Ǚ>-I0LD�kU�RGEI�)r(p��+��u���'v(D;+�o��d���(҉�����j��e"p�+�S��M�����?Ց���y���*�S]�Y��/�-д�Y��̥�8���5Ƚ���j8�3@/%�
$)nd��͡(��Į[�DR�)_���eS�ĥ��/���h��ID:q�"z����.A�dkgU��h��%/!7��٣HŹ�#m
������yuBc��(v\He`K"4iK�)��f�-pg��l�!>$�'��'�Ӌ���ߐ_�<[	�DHp��Cg����/��-�y1g��MT0Z���E;)��LHl���hVCA#���O}�m�/'�+J�8&曹�]�(EwR�,�AA��mA 	[z�ǒa�|3W�,,<C�ĭl�="[�'K��9^=�\������̴n�gz����bKj��XSحF���4Q���͉��F� y�r�,��ó�ԥA=�<Es�5�����`Sc��^�����;(�!!�ܢ�+�*�,�P���O��ܜ�S��E{�َ�}P�"7g�Y����+�@䈻y>@�o���8Ĺ������gD�Yq����}D},���]�tO��h��XGwJ }�����qC�%�~�t�.��nΜn<�aޡ5�F��H�_�VJ<j�ag*u@]Ɣ�e}��5�z�-�qݩ�8��X5�r�>��a�ҧ�1�1��Ғ�{D�������F�;9T�ZP\'��)A�1PȆE�e��u�Fh�;/��1�̉&����U�ך������hGy�8��@���p��r;�<�"%��}�B��O�
^t� �h&z�-v�,~��h&��(��v�>W��NvS�ᭊҁ�P]��3}�o�����Jlf���v��s� �0���\o�U`� =oC�C[��/�+څpL)q#���+���g'(0�o���wb�FYhߞ \�]�j�+�l�4��F���O�vetr,.�^���;S�c���������f%�4�����ؾ!H����fP�S�5���`�Q�!0o{H���B�F�� ͒N3�9�i�|0��g���2c;�&��Z���s󑄶��a���T��O:}���aJGN�<>�m�Ę�F�~;�m�\t�#y����Y@>Hr��x���'G�ۡ������u��[3�=�T�t�qE����.��9b
G1��a�V���9	����yNЖL���(md��8���zu|v~��LPn��ۑ�"�}�/J�#7�]g؅-�ݡ�(�qd���$Ag�P����,�@� ����@:�/w�- �37-]����M��E:�ϖHE�=���J"���-r(�&�V('�#硅��3�XQa���-(�T����&�?��ñ�B�֋M�����ߋ� }�a'�x�L���o�e�����90|���㾨E��6��ɝQ�,��G��}�����h	�T�b��������=���Zm�C�嫫m9��t>��m��X���`�i��r͘�	b����c-}�Vz^�8�ЧB/hR�+��Lu�{:r��y�}�����-4.�DJ&~�;cd�=����7ux
�?�y;�K��6�<�)��	��ea�����`�[��3)�Ȱ'4`����Dq�-�%��*�b�z�HhI�gM[Tb����vV�pj�t[�1A�����̌E#�x$`H%)x�Vr�nf83��."3Rcv[∺g���/����!`�E��yFO����=ߖý���X7���|Ͳ����M]-�@m��M��U�M[�!���u�^�^�V|�@߳�Q �_<E���C�����ڡ�(��.:���#�F5nc�"ŕ�b�F�]�fےp�2{I��c��h1��:XMx=�)����=� �HaY�����(�����kI)�{{&!>f�2!l�bN��Dr�-�:��whŢ�ھ�,��H�Λ�D9�����H�J��ϯ/�٧�3o2�f����Lr��=x�_���߫��10=a@�+1�a2�ݝ�W�ƨ�.��b��u��T���0����e����������� #B7t��DY���=��9��Q�Xg���9l���e��Za��]hS��鹸���E��'7�bn�_<n�U��[5��    �n����?[�O*����:��Q�K��RȗR�m*o:\UO��@���P;5&:uՀ���!W&��ĳ��x���m�ǀ���D�`��Ej,q��ά��r��x�
���!CW��#W��4�n����V\{�ݦ� f�����*���Z��ep�r�㩴N{S5��و�xG�?xo*Nt��Ǿ�P����?�%-R �@{ʷC��گ@T�j���C�ͯ�n1�K�UX����z"�g�@�h{�o��m�9�>b2�ew�ڝ6��W��g��p����Lx�4*D�	(~9&�9�I��#�̒��q�A�x 1ѫ;Ʋ��i��*y���I�n?Ǭ����}�|2��J�&/�<������HZ[����^N�/�T�ׂ�A��/�>b	A>�xI�ض���h�Vn:G��*N_�on����>�	3��/�E��mg.(Z��1��EA}d�ΡA�7�X@�Y={�P2sAA�Dv�x�e��q*{���3ު�a�B���$��bq����4�(F11�P9���a�݁�ѻg&�a�4T�B(`s��X�1����P���Q`�c4w��r�_�c4���*�N�/,���Ŗ�T�dd4�Hf�}��8�m�ǐ�n��*���DmT'ƺG}Q�-�[�h��I�����H2�F�����,C�1fo�8���䣝�4��W1�/��w���"�}o;�
�T;�M���n2����X��H��2�s|)�l[�m�GL��|�&L�Ljp��Nyp��f�ф�s(��`>�qjT��A��s�Jk��N��(�J'��BÃC�5ϙ��(�rd}=���xX���@JN(aB�ݒ}1��	�l�3��@���� iXTMKj0�4�F�i���R2���l z��ɻV(��O�j~cT�쨟���/#��XvОd/��������������Q�#:ļ&��M���1�v�B��+�u.j�s@#��3{�V�[G �m"B��i��6�f(�?����Bn�J�R|-�Ud	|A� E�`�$�=�	�]��)M��^�mNdD?�Ǌ���%��Gӽ���GCM��r�7�n��4��\��z_f|筩�%�c��V����UF��n߉�M��{�RA��h�8yC�r��)P�Qb��#�K�d�/�C����C�6ղ��x�Rn�OW�L����Q��o���0�
��vY��a��(hq��g ��U���If@ ��:��*�R�@c�ezgЕv�Y�.�$(���$�����~��ﴊ�N��81�X�V +�'t�%oUE��ܭ�p[ P�6����-덑դqB�.2������Q|��ϴL����K�w�G������p�d��O` WQ�E0F��l�:��$���d�0�<~����ʓQ`N.�W�*���z���"�
o�LU��k}%���e�������M�����v�QL�����T�:J5
�@��Á+��Kv�����Kj���J�*�N�S�j��suq##�����S�0r.FКj�&�f��V��3T�H�k�9Īey���ܲ`ļ3�S��6�#�sW�ђp�ɀ�6W�w�c�EC�ݬ3����L���W��H���'�#�8�M^V�̶[1Z�;���X�oa.]��e��(��%�G�1��\�?T����Ys�	�A���\ߊ�/�	fT}�az%�N���@$@B`�ܟ��u�ya��' ��h������ ��b)�ll>pm�>C�,�0!$������ ���(�2x���n�6������I�\��Y2R\_�x�-����XcY���Z����bq�4#$�!Iv������w�ƈ�&����'&�̠&��ma
E��s�7	�nh���Z��Nd�����KSsҭ���s*��RI����^:p��g�y������u&gK�ٝՒ�֥P�ƶ�r��>5�i$"����;�~���ȿu}�}�������_��}�.��S��kI����GW��H�t��{N�)�.|�bg����4/aPpd.7� ���t���v��-QG��%v������;)�_#4L̅Vl�r��FJ��i[��Afm�\OX��MAE��H:=��E�T<���������77���ď�M����D�pH�;ER���Hk?w�/�d��w�l��Jj*���0�l`��2�iڌ��Z"q����yENr�s�G̋r@9 I�W�m:
���w�Q�&x-�����V��N�d�E.�%Po]���1$X��`�A(�}�SGCK��J�����wh�o��$Z*�T��#�y�n�Ej$	���
3��ͻH	��&d뺤�nR�ⷆ&�rf�t�p�p0�¼ٿ�ƭ_�$B���ˬ��"¯G�S�+	�_u���z�xjq�A[ �$P����������HK�
���7��@�Ne�$�l��P��N��J�'˃O(�	%+z��`�f뮀I�l�Dg�ا�[�r�_���r�������K�2�)�ۻ��k��>�\�(�8T���{����3~ey�Bg{lQ�R���gPbV�@�?��Z�N�J�[01��{�]cK'�i7�����#{��A�ٞI 6߱�%�Ē���ޠ�-�t>Ѯz����E��=�]�!�YB��/:`�L�lh�k٪fb1J��G�y��#|���D&�=��xk�r�v�(B��^_��h �V�Ͽ�6�Yj�ܤ��&EQh����K��=�s>�O�Rr:9��{���a��ݍ�t�`�ɐv��^"1����罿91?1h^���jrY<m�`96�����+�� ���*�z�q�Lc%�~� o2q8�D�X?�Dʵ废b�7)M��~M"��k�b��=l��C͝���R)�)۴�P�����r�Y��E�Ѷ%�#v:�����"sr����l_Y�H1`6H
"n��`��� fv�8���Mp���.-?�E�r>3�ԥ`|�(�l��$"_���}���$Ѭb8�O��oϜX�PɈZ��b�c.s�
}�ɟ�^��l!���3p���K0ĕ�g�=�����Y�h�.�v�R�ݜ���m�ו��x�����~���(Q�H$KA����/7qC�y6H^0UӔGӡ�ʰ�ϻ��x����1j��T��zĕ_��;���w����,�Jf�G�BS�y�>[8I�G̉���Mo�ًt�B���#�p�֤v`R[k�=��X�E�ZЛ�K�䣝���wu49�x���yǒ|�m���1�dg�	�5� �R	L��܉�M��L�z?8��?;"p�(�V��Kď�A`�-9�C����kM�9m��Śz3`v�8�3�$��,S��`���cX�G�'�֢�������,�����T�؁��S���NC~$�	�U	Up�w����V�>k�_@ϲ�%�bm�᰼H��s��hf���$$���6D�]����`;�(�:n4k�9�-ַ��A�{��v�%�|ڝ3�X��'Ȕ���<�δ\�K�fC1h�� �߫f=�$����
p�6|�{(Y�k��.e&��ӳ3P�oV����ݴA�;&��L�}����,��9�P�ܶ����*v;��DT3�C�98ФZ/<;�ܕ;R�5�^?��&�������`�V�jN�|��V�(;~;���˾ �\�k-0d�m=�m����_�x߳}���d$�6V�|[##V����d)�8W�+
kR�4_;IŴi���U�	�$�#��8�QY�@*�$���(�ۑ9B��&@�Cuߦ�2T�(E�?��k�O��w�����;��(�46�b���IL��O�N#���m?u��&�%���JD��6&-m�ʽN�6�Bx��HĉuE�.|٨ ݜ�� J\�Ш�(�38T�t���ի���X�_��-s�8�}CE/Ќ}�Zl.�;iĆ�;~*�H��$"vB���=��L�6Ah��L���k�:���Q�Vu�G�g�m�N1��?�$���B ���w3U�A��*���X2�GvȮ��Aϥ�r裕��'wEO:]������Ϝ���.&/ц�4쭎F    3;�3i-)�l�v�i>б:0N����ܲ�� a��0]��m�-��kM�p�ҡoOQHC봫�ج���u�(|!����cu_���y�xތx���i�!���ݥ�F���b<:��[��D.D�cٍ�k��@d��jC���5���c1ks՘;B��̱v�/�mM{����ί+�n����w�.пy�p�HSŷ�fť܁�0E�N�B�\�P��b� -�m*8M2�|��jM�x����P�$�G�F��6���j,y�8�A,ŗ����O^�E�ef
>������!j�Nc�%q�R8��ӻi��q�)t4�<��ƹ�I�9Qd�t����C�%�!tk�y~�#L��|���Al���:���}��Lu|x�5�L��"	bL���]��G��C�ն��H���&�,��\=`��I�w�`�ZnÎ/A�4lvWg���U���V9`����}���t���GIVs�F}�.�����0��Y�d�����O�����	i0OA�C��?���`>�Q���
�����~~�;�ɼ�<c����Y���^+.G�)U��j=ӣ�7ZV$QE<�I?��x�<��2BByBG%��#,�yX��IcWN5�՚�A�V6q����Zʘ�_���b[%B� C�o��3'�5Ŵ�Xj�S��1� �?ń����v���s�+!R�S})i��X
��l�18j�(Z=P�զG��>=D��i���f�q���K�?m+,���e�}̺;�%�"_����y�1 ��7���%|�ЫƸ�)�&�1��j�߽o�
��ͪY;9-~Q��^����{	<Cv�;��)��)J騸-`�7���y�R�Ҥ�+Z�`�³�"M_��L7N�h˿�0�
Qᝮv�Q�S�r_�KSD.��q�x��`Wx��h�tL���3�����l��䘺�*Ӵ��#`ˤ;n�U����<�b�i�	M��x;��6�-]'/���r�ߚ@��W�j��;��^^��j�l��k���[��A�J�愠������m�o��
'B�9��+���C��c�乔����H����m
=_����˙Uv�s�H�超��=-k�մ����/ ��48�f�cÝ��Im�qR�w�?�F��@��3������g[�s��y:Xc�����5�|�x�@�]�P��v�����%+VU��m�*}�h%%�
i�CN���^U�58KUU������xmK�N���=\� ����gcP-�pӻ����W"	��o���e�Q��)<%�"4*k��}x:���iX��4�u��g۩{�!f*��Ӫ��hG�̐�;hHx��O0�MBa#3�L�&���$[��P�]�Ym�('�粼q#�^$���M�����;�a��E�V3�Z��_lOZξ�B�=c�0��K`�I�'����f3t<�D�QzT��T_@���_���k�Z�Ul�P��+�q�I+�%�������5�W�;��qش�КǳM��'�Xaʄ ��n�������w����� Ư�WV�"�9]��t��K�l�i��Ȳ��������?݅x�l�FD=?�a�u�	ꀊ~�X~o,�S.LA�r���/�"ʵ3K�	���
�#H�� 
!^��p�+�bW7�rh��>H0�w�kS'7+��1�YU��#����}΅DP�>j|��m����@�A�`����gS�������\I��.�v�''���3��������;���r��qz�M�z���',����!�_b4Քb�fG���ar ��dd��!�L.���������M����e�����?I,]�xQoz�$�"7��y��Ćr�l����Κ��&�n>��&��T�B�;ټy��dN��K�����)ɱ�"C2LJΡt'�ӮKE�!"��S��:|�	�����#	�6���<Ȅ����;�V-�}��Z�"Ô�eڇ⃲�2x?�j�3f9�j�������?���E�\����= kB�r�^�s̓�����S����f�-ޅVqUl*E�"���w��i4�Ɖ�˴k2;#G�������2
�e�y�5�5hAQ��Ƌ.2c�/΢lgߌ{ܬ0Q�aY �S�a*X�o}��C�Z���(���[Q=5���&�:#&vQ6�g;��+ߢ}�o/oA\cat�lm��WC (�=�:-�p��%��*ݛ��vօ�" F���(P�Z�SjG9��D�ih3�!(�O�~�w�P�KQE�Гƃ�3�t����%K�ڞOB�|hV 
����Y�uh��NL�M�������e��ۯ�$d�1U)���,}�3kפ�`����W�Z_*�@�N/������;�~�N���sJ����DF�E�Ԇ� ���P�������@�`R�:$%=m5�$��I���5�X7����4�;g�c�f(f��JUԁ_w^�D��t�����c�`ȭ�B����'Kl�n�h���`{�����%su���{����jm��D@ĩ3��R�Ĺ���ª��)~���,�g�-�7dgl�&�H��š��Y�z2���N|~�R}c(�`W/d0vj�|PJ���+M}�0�;������־m9n$��9�+�c��U�;q�-��%ކ�������le&8y�Ĳ}�����yڏ�����w� �����*��pG ���� B�S���
��R�-u��3b�:�0�W~�$����O�$P�I��Y�̣�� 䪱BG�	�bx1�"g�P:S�s��aY@�A���>�4Mzh*Dاil��8t��C���7_h��x��nZtܧ/�n�ac�kk���-B>t��E��~�1-n�E*7��.�IhWm��Ǝ�y0���{ȩ���n�ɢ�&� �ri�Xc!��D��^���1�
T��+�P�Md0���#W�(#S�؎b1�o��������6X���Nt�]��VYg7�av5��x��������"��>U&^py}~�~q��'�������V�p���������]�ytr{s{}}��`���S��Y�R�޸������ʎ5.�'eO_3�+a^Y��Lk_ڵ�o��o(E��XbE�N���SvY�\o�7.�q>"ځ�&>��!���YA(���j�m�B�����)ؓ�R�Φ�u���q��+	�*DF���K;k�4ic�P��rV}����g�p(6�@��$-<���U��6����dk�s��VK�&#uwς��Us��Ƥ���g�N<�L_k�B�5K�x�@{��3��ǌ�/6q]�,�P_�y��;�S�% ��9 ��k��%�e��[w	� �0Q9ݑ�����Z���&���"+��n!����}p�#F	��I{m���H����1�l*�o�B}����NR �%�%�+|V��`�Q}������-���S�luHsĀ���lm_0.&p&�c�0��S=�V�����Y��9Hz�ؠ����֨ ����dPt�b�V�|����� ���g�ܮ~X���T3,0k�����D=_|�����:��nU�S⎖Pa�M�3�w�m}�Y��{�ȅ-Ì'%x��L�]����w(��6�Lw��6R^_^�]F9k	����Ia���Z�*�&զ@US&�I*@xG�V}� �}i6�º>�b[���S@�;� zeĹ�Z�@�PGGTs�PF�nB��&D��+2����Q��e�:��>���Hj�3� �ZX/�U�hE.�(��ԤG�uS���q p�J�@t�S�����wF�DI��Olm�P���' oj%���2֢�s�P�p�����]��Y������uUS�X]��[u��S8B�R�vg0S�( t}w��	�;�y�~�S�ZY6<�]^aBĴ�T�;}e6�	\�}lҎ3)Z�"�/!R�4jZ�S#S�J(������	�b�+���Ϲ&�+Zƅ�Bl��G:�e;Z�f����5�nȯL�{1!@�C��렯�[	�	���E�Q�ߚ%"���hܬ^�����{W��ũ���.�'��/�>'w��Zi�;��4t��m��^ p    ���j1G��oP>�_�#�X'���U%lu���2���]t<3qb�S~׼=�"���ȤY��K<�w�|� &�gW�Ww�� ���vc_��+�T�5��Rm���}��/lFr�-��9;�ADbM����c{��Ҍ���ܐ4��"�}�ּA���N�b���T0�*��?�B�Ck+�A��M�"�3�=\��a�}��^�天f�Ձ�
�0������D��j{�aw_mk[�E�vO��^�A��ռ��rZ��y�b��YW��K,�1"]$Gt�2��&�{�.7�L ���tlw7`׷���o��.��.�C-vo��@�seI5�^���n)������ح�-���O���\pA鰍2$H�`po_�$Q	.kޖ>;Ƣ�SC�5�^�K�{p:�<���d�iq`����,GDAX(�Ȥ)z�I�+@��O�M�� <a�B̸�"��8a	�X�굵�R�;zA�����o`<�aY&C���Su6K�����Cе�<���@��-8��dP�eEb����"�������u�F�� (���\)�8�� $��$��<ECm�a��һ�2"J�!,�9X}t�'���I%��pL$T���M�6�'��b��o�.K�������:�7��94�^"1KB��s%qgE2z��l���� 3!8�Qg]����C�'Q{�G�4:*�J��>�y�C�Gc�.�'7'�����Y��1����i�|x2 ��I�AF$Z���s��^��k�"�:�]�t#p3�^�ؐ�j����l^�5$�J5����)���ku�`>�Z#�Q�ԭ�����ߨم�=7���&� �)�6��E���5�����ѧJ����t�����u�5��/�"]Tҩ��J$�T/ju��N^1	tZw??۽�����̉ۙR�&/˷�?9��֗9^����=��, !|�L���Rd��+@@1�:7��-�iJ�X�8��ćٺ��=u2�"�i5�t�uv�W�+�Ou�s�k���`���5��^&;�[|��K]�Ӆ�s�{����bB9ޯ��o�D�x�y�u�����uk>����}'�C(M�v��
\B!�t�`G�X���7�t?W1��I[�x�.	��/���+�-xh�1ԼE�3a��Tip���8�v �dԑ2m��"f����; �#
�"�N�E��f�0����x6���@�u���XT�S�Y��x@I0�����V���	?m�z!��B^+�ΪmeK�w�ըI&��|�Ǜ�٬Jͮ�q�֐��I�}�,����(����3}Krwv�KF�g!�|PH�bqh0LH������f�k("C��qJ�&8�,TO�6����t�V�Ě��x|�6��Q�(-�]e�Ա�i"H�;��9��4��oa\J6���Q?e�H�LR^�R�·/�kt_}�+�U��G���D��tP�xrƄ���-��X��l��D<oJ�;���u�uX?�#�&�>s�U����W��|N�1���T�Q�j�JN,��8����屧�)j����+7���������c����f�L&Z on
�ug���q	GȚ�t5ÿႇ�M���>�T3�W�|�!9f,sd����PTd��le�W"�OK��,Q�"B͊��/�����:�#s"����[3����9���l�0]M�,�nB~\/�y[��⋀�3�h�IKƈ�\PW5��Z����qY�Q�O�$�����9�Sȳ�G!q#��B|��g�~�|W��c��I���C��D��8��V�l5P��;_�,����"��M�6X����mc�� ,�y���U�T�����ۡ7`h�w!���=����8o#,w\�==��w*	[�~lK�"�(ۭ�n���EUh�>�W��t��I,Iw���D�k�a��@k���n'�(�n�g(�E��Û�o��A�h�����zE�������4f �@3�]	��̫��(r�<���|��k�G� ͦ���Ȏ�{��2׵�<)ŭs�Q�V���f��#d� mf �8�A��\����'��`��iQ�?�gcC(��i�Σ��v(=ฆEC47�f�@��rL�i �
��tSO?L�!�Oݻ���Մ�D�g� ��Re�T�ވ	���"o� xD�F4�SD��KoR
M�M�^=�����{3׮H��K�mb�D�v� 7L�/S�2�S��'/o�.s.P�A���1�=���H^>!�N&��`֖���6��I3{���\y����/����u�������?�Y*��6�
��+����(p2��J��h�ZL�D`���Sp�Ϡ��l���\�I��P�yp�v,��O����n�"�^;	S��J{=���%�F�HȽ��T��pm�{����HL�w0#����r�e�?8ٶ`v����K��4�\�-y�m!(�.\����V
{� ��r�Z)qm�{�s�asB;VP��^���1I�������[M@�zk��R|��tqʹ����MNHI�L��Q�bj��,}V���	ѻ���t������ԍ'�H��ŒE�#��nV�04D�
l7a���HK�
��仞�,��?����H��٥k�i�H�}V�7
��K[���b �u�8~9��
�_�tV�)))j�<A�m&^����z���̽�!7{;'��۸�\̶��7͚�4[�%d�P$��)�����~�t)2⑞�W)���N���iNT*m��|�q�����6Y�"�Ҋ M�*�r��*u�n&`J;)ԡЕ �� e\<���t�C�0�yn�j���Ш�p�2~�>���i�b@�됀�L
AvQG�K�u�+\"��vh��l���y=�~�V�x����Bo��}�|`�a���M�k7�d���Ʈ�{Q-����ϲm�F�l��wP����Lk���[1����`����`"Vpqs� \%��C��D8޹X=�RP�{ܦQj�� ��c~���~���������Og�Ï��0�$� �	��r^����A���}�P�%��z1���yi5��ZB1R�Y����L�;�q�G��w�/+]�E��#`o����<g2����j��Q�b��P����%�6�����+3J����k)��x�r�,�j�'����1*E������s�����/Z�}�!�(��y�O�a�=�zi;����:�����7�D'�s���F�}Rp�|�6�z�ޓâ(�O��[)NB�N �r�S��sH�/�5l8��B(¶�Nh���N��V���?W/p�Q�2}�S����{m�A]j�t�)s��,t�����p��;"ʧ�$�srZCc��(��90�Y	$1���Y[P��x�^I��1��f�a���e��qk*G�����*:mM��I�_7�-�./��%y$C�1[�� _Z��n�Wu�@�7��w ��3������t޴唗@"�m�c�m!Г�g�k�J���̟qVF&�qn�����8�+U��7�����N�(rM�yC���d��
� �C�;��N.��l���bpS�px/�u�i=(���D�&��M��IF�aC=�M�0 	��8B�%A�N��"/��Pǝ���+(��>��e�x��=k )���������f��a�_��1� Z���8�)�R}��N�}B�}�fړ~
��T��Ba��n/�I�X)�	���]LL�m������=��ch�^�q�P��#����"������}��G{��6�X�;:��&:i#K-'c��b�:�C�d@	��$1f@���9��z����ێ��H����M�5�v7��\�-��CC�ۉ�4�55`���sh�
9?gS%W����殪��rb� [���$N��Gi�Q�2rfX���bQ�	�
:4����$�/�����z�lJLĥ���2rsX�O5ķ�Dp�j�V����;�'�rV�GG��޻���j��gc{��\;M1.���[��G\�+���� �/K!��=�[9�c�YG'GC8U}�e'G��yn�$�
1�b�����D�����K�YJ��t��Q >`�    v��E����{r�=t�����f�]^_ߟNnG��W�'���m�sww2x"� VH�"4�4dr�[Ƞ�b�e$8�(��f�T���7*����txY�/�p+�i��d������Q�e�
ȅ����.í��B�w��Q\[�8��8��l�F�F�����0Jrk��}����A+�J�5�P����Kp���`s�w~`*,㽸���|���*>�\?����� w��)�}��[p�ٍ���� 
Q��YA���}99f�˦�r]͝��k����V૟���1�RḩEڛ�4���`�jg�."��,�N��&�b��h9����2ٖ�n"�8�]7���@8}��`�J�g���9���Uq�86�z� EIO��U����MP_*�|n��8C���x���~u���+L�wX�Z�@Ņ\��=�5��s�z�I\ܝ|:��W�ݻBHE�t-A���G���h����~	O�7�9�	,&�{!Q�K'v�7T�����b퓛E��@����j׼��58�M��O�xW�B� d�m5]<4�u�|b^��Lp>����i���E�$jt�J<�>a�j+oUw"j�4�As�m�LBb����u[����غ�E�^��r�ea�p�	e�R p7��o���]�i�l�����D�_
�x��t9��C��g�� �\��/o�� 9b��C_j|+ lՋ���|��x�!�4�m�y~Y ��ɲZ��B,� ���j�je'��í��tmg���VhMD鮠�X�
M���⸅��H4F-�J}��� aU����&c_\`�H�d���Z|���C���M��Nf-�l�t��.c:���i��T�JiW�u�2�(�Ax��W���fբ4�z}}�B�q�#������CѼNV��� �3�/F`��a��K�'�p�Kr	�U�a�(����Z�PG��� ��{���G:�yo���Q,k8����� A���qAe�W
 @�Dʆ��g�y�D��i�7���O�M�X��p��c]�1,!?V���8�t$��}\�B��51����3����Mh�3��Qp)��O��&�
pRn�м�Ξ(���$�u�"��L9�T��p"�^G�����w���Y�xB	yOhך��<���z6L�L/׋bG`�J�Ds�\L+RH��/�4!J#A�Z97y\l�X�����$XA{Q�(I���~Y�9L޷��}��X��4�!�,"Y�'uT����]�E�ۧ �	�k	MQ7��,\܃���
�ױ[����x��^�K� H�'�>V���yTѶ�+SP�Mo}�#�_�|d�)�ƂƔ��gr�遚�)��Fm>)�t��f6�����Uӎ��NhC2J�_�5�^)K+]���:��Cԁ<:���+-���e�%�n
h�;Hb �2e�ΧI\}�Ӹ!�@Z��K��*����c��sFDE�����d�bW1��^�E�d������ ��K��$��E��ژ��6eGa�x�0��\( U�s�(
ZVvl+kVh�~���d�\}l7�iP��i�?^��`�C"�V��3U��#�8�H jk�>�_!`�_:�<��y$Y!J��?�^�2R��l�fph�Ok��]��7�������&�eS{�S����и�]*��NB�jK�y·C���a�0]�NL,�{�����dq�f��m��q�$.ԃ\j�ZH^/�B=끤����<�.f�ØI�H�/R�̤�V����6e��r/*Dy�_*�G�tV$��Nx��h�c�X#� ���*��0k�w�g�`T�� �ת�hF0�����z>�m%��uJ�����Pԯ��e��?ﬀ�u�Q	��22M�'��g��;�.[+@���G�D��:zA�Gy��T:��PT#;�ܽK�Qe�2���\��o���#��c���{K���"h`�:
�SQ��E/�$����Y�a~x�B�i���Rهs���*v�@j>���ct|������P3�5F�?�P�A.̛UeQz:'��-s�5�.-��^m+3����$?�Ed�ؕ�jN��h�1t��K��5����(�Y>[�(׼� a�w2/:1���ݳ���,~�Y��������z��E8<&�pq����a���C����xWWߩP���+$��� -��xM���;�ۼ�����]=���bI���s����~c�N�m��Rϰ\û˅�*�BV���+�0<��GP�:Jv�|_�ŔL�Q�ƚ�����%� �/�l�L~_�9"�
I�DE�)��la�����ޫڝcӜ	���WtG�RŮ�C�l�*�!����f���\���e�xrw�tD�,��Ш!�o�:h!*v&'X(U�XQGNN��{N� ��sCNU��u��p����������Ț��z]A��:�t���M��	�: �h}M1@{���9����� ��e/ ����ɠ0.Ln�C 9Zbٺ^�ϦѯT���m�p 栣�L�o�2P��@�ZC�����{\�K�������ޜ�h;p(�g��,#���~��M!3�ۉm�}�̓����Gj���v�!TջA!"q2�U'�n-?���,�V�Y�E~>�"v���d"H�9PQ�
��;��_�S���p�����9�/ģW�Yd&����"�I�@1x��S��	ŉ,��.�����Y�w�$��jQ)C�~Ǎ�p6�����1���]��ڮԵ�pi�!uk�ч�d056I�\�����irn�TZW5��N�˺	n���m�.C�K^�2�g�TC�`�;;���D�O�ʆ�{�/�㡟�y�8�����{l�]~���5� 4��/6�`4S[�h�u�����nQ����zǬ�g]������� �9��
SĚ��z�7�W�Ö��Y�ԷNC���B�,���}Ul��ٰ��J���aW�I����ǋ�|
����;�m���s���c���..e�Q���ْș$��	A��K����m����3�� F� +��-u�Y����c������j<BL�~θD�R&+��4��D�EץyZ�f�
됙X�RߦLH���r)M��Cz�� L��Zc"8+��χJQ�n)�%=ș~߃�]�e��4�f̴L��Rn�Nm�F��T����zU��w�T?.��ł��.��.R��F�ı,ǟ��p¾C�J/ h�㼔�mX��KXw|V�!����J%�[~H�Ȯ&���@d�D��v��Q��t�=ߺ��!�ؕbq��������t���E&F^���Ր\�vlǢ����(T�R�/ߠ�c֒�]	&�U�`�z�yHp��4�L#gy_���a�xU�[NY<a�1��!�,2㓎B�#0�����NT���ހ3؈%�8By;f�N�am��ŤW�:�����l��������u�l�!��T�q���Qm+N���Y*r�W���Mُn�G@*H�ڂ�\����l`c�e����F�r��w?6�}�	pTA�3\5��y��=�������k>m���@��u��!@n/IkK�N2��6 |�	d�w�1��և[�P�$X�-F	x�e%y��iЛ�w����-�]��D�1��l�-��=I؅г��~�$L�XC�Wx�f�;c"FWV��N;#�7�G��/�?jJh��k;	9;}��+ܓP#����4]�;PJ�!f�CO����ؒ�r�R� �ҙ+�@ʵ�?�}~?�4�Zi*KX�Cj���jI4܏x91-�p?�)�I��[��8��"��#��^7�?:�>�fŢ*r�ּyln�~:����V-ڬ#�ǽ-;�ʒ(����Y�ue�$��E\�)Ť7�E� &Q�'�z74�2�(}�����2�AI�9'&� A@*II�{���q����}� oI�h�U=oZT&kIل�7y�u-0���h^�_ޔf֭j�|��]by;έ���m�]�=�) ?�!���8�C8q��z�)X9���S��z�RqY��8�͆߂Gq7�?�뢆�wSҠ����C�>�G�~�n����U�Y&i"��$�ѺQ[f�    m�3H�Tԛ�K=�D�y�n�'u�gG$b�&�K��{����<,���NJD'�.G���EC�l�8�$%C��G !�� �S;r��$��]·�k���W��"	d1+$�^�ؓY?/C?�W�e�|�����T^�6�7ݔx@��8�*��e��:�t2
,%�]�lX�vȂ�=�~Kq���+���O����l[:w��?�O	�,#�i���ڙ�3�[bi��&Ћ(!�� 1�tKp��L;F�`."�R}]�i�g�� Hhs�=š@0OR�ʞtu��]�.�����.�\	^�(�+Y���}��Euѿℑ�A���{Q������<8z���xD,�G����E�B�,�H���m�����X���Ш{��n��{?n�d�Gv`2S�g鐉y�d����c��AV/v�}��4$,Ԩ�L5��̈́�Y�^�T��f`��qEk�߽"t�+��`Yu�Ym&�`�<8v�������Y&t�<$�ЀQ��.S���� �x�������=���b�m�sHy���v��,F����n"�A�ٗoK���vw�9l:���]�����Щ_*�|��B^�廭g�G��W���^O�J�������n��%��V����_JV'����a�:���й䡡�v.O�!F)�䐿$�!�	C!ɊhJo�L�xa�-8 ��NV�PИcF������z�g�[:�ͷg�ƨU���UK�m'���|;)-wm����(�Vd�$�]$Z�SO�b)���R8�B}L��� MW�t�o��i����[C<�g�Ãu��i$��^�`f��:��ad��$I�^�����^�;.A�,<tEI�ZE����������x#S�&H� @����-9�0#UGi�)���B(Jƣ���	�tK(�NJ\or��Ȇ|@��jY�o�m0����p�)��ͤ����gb�q��wHAا7�r�:]ր������jL��S�\{�e	vR�Jذq	�wz���_��v��K	5�N`�CRʪ�F��䩃�H	�b��3�	A��TƮҝ�qt6:�n�F����/Jt @]\�ܐ��RB�nu<;��b�҇D��L���hs��!_���r���5a������[��u���H��(�WRH|q��.�į�>�N��E��h���1y��Pm=�J؆���^{p!$!?�!G��B���a6|���M-�c0��zm����������f3H�R,_�Yݜh�෋��a���/��Q����b�4����a��l2�W�����F�B1�E�����>�=9[}�|��+���c�Œ6���0��CO8M%Y��>\B��n^~�1w��%>��%u���A���No�a�e
7�:�3�jVa��?�=��f=}$�T�{[(Q�ɬi�*��v��hP��d��RM#�i(���vw��!�ӥ�r?��fEj!��C��E�S�SQ��v����i"ɠh���o�$��t@W�ѕ����m� ��G$M}*~j4ܦ�(���k5��Q�
�m�]���[_J�m^l�~����ǻ�Gь9���'mX[���N9G��t_]��i�)dhoW�n�7��(��f՜@�"��Y���9s�wq�]�%�>��?]�o��=��C~C|�g�~!���fF��.]����p& ���"f� R����ޭ�\���,f�O�0ڵ���l~�
7Hbh�˰4)� ���z8$�n��Ԛ�v!8��M檻��,xd�1��\�+f�R9&�i��F���^���+0��̩h铿:&��2X�Ԡ'����ξ�i � ����P�Z����ֿIo �h*���$�Al1)|�h�wc!����� {:�B����Lg  TW�ª#��s�#E-�^6Մ44�����I控���r���n;Z�ǿ�ۯpI��m����%5�)�!��֓�f3���ٍNI/D��.��j͠y�[@YJkʀ� 7���tY�cvRS���L��eF*Ӣ��2#wt��g+!t*�G�W5Ξ73K���c���P�V5���B�S��-��{�����"Z����Tۼ�cL�Ñ �ر���`J�9��Ǖ�և`�(���+�1�B�~����'6�y.��v��Y�$���a�
(q�Rȍ�p�UAB�iɀ	��_������Qo����eQ�iZt�6�jE��wl6��tZ7�-c�s����A����1�.ܭ�-���j���N%��Q��ȴ,��}�h�CQ�&�( Ъ�@mM6.<Nq����k�%��[��H)<��!+�W}��5$��S�Sޢ?������g���F��� +��^�j9�U���=�fŞb���f�:oH��c?C@�qE�P\��9�9Z/ �����e��u�7���g�ue�h ��V�j�F�i?�I;�U�g`�� ���0���W2�4���;�%�}���*���q"��֠�*b)���� U@Z7͟�fm��<#���R��܅�L!�����������z?�H�y\ъ��c��)��j���7ܝB�v���R)!��YO���_/8D)�g�"��)`��_�>�e)��� -��a��a;)��B� ����Po��:{�ֵEd�u�8���HiF�mkcN�Z.0|΂�Y�j�t�XA��Jm/�>4��i��rd���
�<)��hY#��B�͡����(�C������D�S��
�Fp3 ����Cv�*��,�����4Q�T\�oz�����r�sB��� J�/��#J��^86�Vp�+�ޙ&(Ej�����0�;~G�����c a>�>^�N`N��x��5�a)8���z���F�qZ푴S�ܤ�4;�y楠UꌹN���T�/�6JT�9��9Qfm�潨g��y��)$Cyܤ5���t��x���'�>	᧩��Z~���:I���e3���5F0%Z6���XW��/S��|Fa{�3 �Ss����a9�2�1��޸Z���12Wp�Y6�;H�(��˒'q��pi�e�-�(�tg�y:iw�i�\��|�-���e��ؒ�(7��Eg�LT
l-��침u���fv��uR��J��+q��-M��&����(np
\d��j6��#��iл�G����d���0������:�/D�+"��#�ꩿ��Sg���.�R��4�L��ԣ�������9�5h�������W��KH��`��H<k���qO��m��=N[u�׳]C���tV�;I͖��^@i8�.�� Q��(!`ˏ����AQ�~�,J�h�c��SD3_1KuH�nS}�g�j�:-�.̰�n�g�7�?cc�jp+�i�4��]{+�Y�0UL܄̶�����Iat=8B/6�e! �֌��U�6زYC�m-$/#�<*�w;=yY'�c��շ�4��Ix���g�P�x)Q�-�P�Ha��ۏW��Gp�v�ʹ� PU�Y�-�Y,�rx3��ܷײ8g��yZc�.�5���䩫O�E�\�p2�#ޣ�������ЩC�;�l:i�{��+�}A�%���̦���ѩ0y��d���f�(@7s���`��#�(�T�S���Ykث�� ~��~
��n+�
�S�m���g��1������[T�`�����H;���fE���Y\�.rXk|Ym���<S�x/B/">�S����%:�GY%�)`�|�4˯��#�oR�5�Un}D�s]8���(�y,܌�u΃�eps~wtr��������W:ќ�>H�r�_��oG[��w�){�}q��n?RT�ic���ۆ6�����i���i xŉhd ƽ��_�ѣ��O�jr���n�����ȥ�deu��%G�h} ��T��N�h9§,�����&�kt�iq(���h:Q�[��uY"~01�,nQ6.�lZ���;�C_M�r_n��(J��_������/>jZH���č�K[�8|�)n��B9r�zBg�w%��)"�b3�T�i0�����K�B"�{��cR�X���v*�dx�ksgrt�=�j�_WJ����j�r�<�����    D�(�@�R;"�<$��WH��#E��F%��2���C��{�K����a�<����8\f�܅��:�9������a�a�4�k�\�QZ����Ŝ�2S�E����S���#G(�r%��%ܡP�o�³�9�K�k�H#�kRv�r����z�R*��w.�[s�/��n��]���Y(��B����y$���ߕ,�usi�X�"H/F$\�x���Darc����h������%ѯm	�}�1D�v�Ɔ�#���q"o��}��#�C����'��J�q�.q�Ǹ
4ܲ�_�f��B�kP������!+#���2�n~/5 $ �fW�ۙP�>�$e.�!W.mn�k�B��,a�	1��@�UrZQL�N�&d{h+�y\��l>֯`� ��\6˥�eUBHTL�3i�Qʑ&��2���yd�A�[W��K;������pm�KĄ�<��$P1H�!s�Ai��z	A��2XiD��^���n\�mfk�Ȗ�� ��o�a�m�<�>N��4n 5m�f�m�{Z>��Ӻy��	��Qy	������Q�^���t;�=;;S2���ϬO��hQb-�ٿ��ytH���]7���8́��L�������>�`D-�Y���Uޫ��uwH�)�+AR�E,�ZK�DL���j+�^�u[WOp�gou�L�S{���q8�b���Op��tc�P����,��������� -��$����9`)���p���m��ߔ27y�t�a��c2H�]˷�8�E��g�\�˧7�H�G[Hw���Q�����64j?�e\��J�eo����Z#��
KR}n�O��u�4O�B<'�Y�3̾4�e0�1J��e��2�b����}���>���D6�D���-Dx?��^{���;U���I@|�ގ��w����UXU��A�-���V#&E/�����n�p�vߠt�����X�c���͓� "(A(X|V���O�Ѵ�R�G
��gw��QK4�2�@�a���xԎ��LKnQ�y�t1;O��9g��:�h�5y�Mj��WJ�\�0 
鵯���.���%�d��|�]��D!�b2�َb�X�$�G�����Z�g{����އ'��}�OihܝrkԮ��P�H ��I��������y����Kcw���AL
k(I���vޝ��p;��v7u�y�{k%��4�q��7>�u��r~y�)pX��0Bfl�?��a,@��4%��O'�_�G_����� �ZcsR��ye�դ��':�YW'��7��"�����Iџ��*���1��rJ�C�.��(!�)O7dG�Gj*��Y�m�{���F�=ݽ���i�E���G�8���������3�2����Mq��3�=�mo��N���ȈB`�ټQt7��S��9��H��z9y�>��r����H��/�A���k���X�V��L�G�?u�U��.�ߠ��,���?�`���CL���N~��}:�?W2��(�}��yB)���ߐI񛗝��GK9Zpf?���cK���M�0~tE��UH��K L�n�^cx�,��쁞l���3�F��^���HM�b��v�	y8y�=��IC����yՏ�;�vq��W@�����j���"�Q�ޙ�
	�ɷ��:E�_W��k?a��֍HZ%5I9�b�	1��1���+�F}ݙƯ����3ޜ�ogs�Z�� ����ߏ>�~���`ێ?]��n���ooί��"��d�`��8M1,�W�2n�|R���~l��X�04eό~��d5���(\nɱ�8脐&�s�E�}<�����B��jEj�f��~�ð�r%cb�׹�r��YS5�=G�I�w-�=%>d���q�X1D��H�u�&NFa�N8�Yr��@�iDX��0e��ヶ�ț|F����K������ ԁt=��F�K�h` FG`�&�8V��^:]RFݔ����WHގ X��W�o���Q�PHpp;�9��Emq��6�F����1$�|"g��q�B��h6Z�Kpk�y:{|��M9	E{,C�V[��[Ɇ��F�	����G��f� ���CAH8���H<pB���+����#����{�I�����d�l����Ŭ�d�nAt���e��$��/����%�\p �����r�5'�u��=�x�T�I4��t�����~�<B�=��Jy�ɔ��hK�h��\�<�!a^�
`��#�h�|������j�&=�]@��r�1�A^Db�C��[ jtOj ߡ�P>�8b�	D��tD#ECr�Y��"��S{�����nz�&F�j3�ʨ�.�t;,�T��Y��}�(�r5�j���K�j�:Rs��iϸ��٢_N��()�@��G����k�Qw_Ǡ���g
��.�>Es����t�&s*H)�>�c�0��=Bq��F�_�-�v�Ҟ�IB�h�p?�ɜ����]�?���_�,����0�=WWQ`$���d����;��<��>8l�4��*�R���iʭ4��.��ڤu��>~�qR�#��q3���GZ-d�"P9<v��N'/r4�s�o�8|*����ift�J"�h;�X�E��[�Q�?#xG�_qY������fE��άh�\��{Z����r�wjx,�н� ���u�δf5%\����}w(�=�L{]�[g-��m\�ԯ� ��r�tO&�@��K��X���705�|������h�ɲ��p��.[?go�M5��eG�Y.C 26&�tK�?XW)O�p��� ������t����!�tb79�DA�3+�JpMA��v⦁��A���{��Z�q�����䅳�uv��:�P����**�hu�P�r���I���w��o�-	�y4��	ƳM͝��^�]�i*j����Zn�9��jh��j̜(6��~>q�����vo!N�6��-R�A�7�P�s��n��&t�n��I�0����3c���:S�B1�\��N�t�����>��W|j���!�	$d;���Z�\�t0�?@�w3]'�:h���,ĵUP��t�: ׷hR�e��i��$�{�P&U(�<5&K�B��+� "�<�F ^/�^)�����e��P�P,��G�%
�'jU������j��:��4hN���a�57�BF=����_����)�zպ��Pb�I: �Gd$|]Q�4ĭA��De��`Q+�Y'�7�����/�;r�4�M�|E퇴�$���m����L��ն���^�s[^�z˜F�JL��U�	S���5��N���vt|B��N-�?D��_��ˣz�vu��M��O��(��݅
Ӡ1����Р�l�p�rTΣR�ޣ��^���e����B7�վ_њU��RN�{T8���3�<C��l&'���i��8���5���0.@��B������&�r��68}1I:㱐�6������>8�����{hs�iq0��F�ڳ��2}$���o��̐I���ԅ3�Z��e�X-!�< ��0�!��v�Q]}m��=d⦲�ՙ�^���#WJ�i)��KDg��H��[ no��+�g���*;�z��J�T������	 �]R,WFz\j��hcN���.(��O]c`�=�|$y%4����z�ă�~�R���&9@,	�ʱ�Z(� H�}oϨ���"
X�IG�����Օ�禣�=r��Jp��$�,_���
��|��;� �����|p!Ic�1��������2�Env	�:�,�7�i���U��@oD��~�'��{g�m�����K�{p:�<����R36s�fa�^�'P�A��c�w�?4�C�}w�l��΁�HU�30Z~�u�,y$n3���W��DKi@�?���V���{��[�t�D�&爔?Jߐ6�x�l��f��S&F�<�Vl�tHGА��	��ȼ����f����J�ؼ���z=_L��h��	7�~$F�<:��ދ��g����v��IȢ0	�c��ڽ�o��� �  ���m,~��r+���A�L8,r��J��a���0_�z���=ˬ߆wNj�������~T�/�.��b>�j�9}B��M�����E0��]� ��ɗ��>n^0�6�N��]�?��)��2-{�jm�`Cg��ѫ��!�ܢ	{h�Ws5��	0�~mK<�T�O�V�w��>���=n�W�<�YB�� �k�����F�@T���3�Sʶ+Y�ep��Ds[���8�����N������&�Ȱod�$򈔕�zP�+F��c�C�z����������1s։�f���2�̞+��f���m�gJJ�ۖ���%J/�k�펭�r�5 5 � |�)�ْ�s�]wl2�|���(uJ����e���(�>.���1���稙+�ᣒ&'ߦ�('�n�Y��eR�,�U�i�������qZh_*�'��HpI�1�Kp���C���a�o�.�����?��?�_&Z.w      �      x������ � �     