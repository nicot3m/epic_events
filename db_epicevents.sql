PGDMP         !    
            y           db_epicevents    13.3    13.3     \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    18555    db_epicevents    DATABASE     i   CREATE DATABASE db_epicevents WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE db_epicevents;
                postgres    false            ?            1259    18631    account_user    TABLE     ?  CREATE TABLE public.account_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
     DROP TABLE public.account_user;
       public         heap    postgres    false            ?            1259    18644    account_user_groups    TABLE     ?   CREATE TABLE public.account_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 '   DROP TABLE public.account_user_groups;
       public         heap    postgres    false            ?            1259    18642    account_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.account_user_groups_id_seq;
       public          postgres    false    213            `           0    0    account_user_groups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.account_user_groups_id_seq OWNED BY public.account_user_groups.id;
          public          postgres    false    212            ?            1259    18629    account_user_id_seq    SEQUENCE     |   CREATE SEQUENCE public.account_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.account_user_id_seq;
       public          postgres    false    211            a           0    0    account_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account_user.id;
          public          postgres    false    210            ?            1259    18652    account_user_user_permissions    TABLE     ?   CREATE TABLE public.account_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 1   DROP TABLE public.account_user_user_permissions;
       public         heap    postgres    false            ?            1259    18650 $   account_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.account_user_user_permissions_id_seq;
       public          postgres    false    215            b           0    0 $   account_user_user_permissions_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.account_user_user_permissions_id_seq OWNED BY public.account_user_user_permissions.id;
          public          postgres    false    214            ?            1259    18587 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    18585    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            c           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    18597    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    18595    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            d           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    18579    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    18577    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            e           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    18713 
   crm_client    TABLE     ?  CREATE TABLE public.crm_client (
    id bigint NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(20),
    mobile character varying(20),
    company_name character varying(25) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone,
    sales_contact_id bigint
);
    DROP TABLE public.crm_client;
       public         heap    postgres    false            ?            1259    18711    crm_client_id_seq    SEQUENCE     z   CREATE SEQUENCE public.crm_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.crm_client_id_seq;
       public          postgres    false    219            f           0    0    crm_client_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.crm_client_id_seq OWNED BY public.crm_client.id;
          public          postgres    false    218            ?            1259    18721    crm_contract    TABLE       CREATE TABLE public.crm_contract (
    id bigint NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone,
    status boolean NOT NULL,
    amount double precision,
    payment_due date,
    client_id bigint,
    sales_contact_id bigint
);
     DROP TABLE public.crm_contract;
       public         heap    postgres    false            ?            1259    18719    crm_contract_id_seq    SEQUENCE     |   CREATE SEQUENCE public.crm_contract_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.crm_contract_id_seq;
       public          postgres    false    221            g           0    0    crm_contract_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.crm_contract_id_seq OWNED BY public.crm_contract.id;
          public          postgres    false    220            ?            1259    18727 	   crm_event    TABLE     6  CREATE TABLE public.crm_event (
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone,
    event_status boolean NOT NULL,
    attendees integer,
    event_date date,
    notes text,
    contract_id bigint NOT NULL,
    client_id bigint,
    support_contact_id bigint
);
    DROP TABLE public.crm_event;
       public         heap    postgres    false            ?            1259    18689    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    18687    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            h           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    18569    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    18567    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            i           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    18558    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    18556    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            j           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    18770    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            p           2604    18781    account_user id    DEFAULT     r   ALTER TABLE ONLY public.account_user ALTER COLUMN id SET DEFAULT nextval('public.account_user_id_seq'::regclass);
 >   ALTER TABLE public.account_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            q           2604    18782    account_user_groups id    DEFAULT     ?   ALTER TABLE ONLY public.account_user_groups ALTER COLUMN id SET DEFAULT nextval('public.account_user_groups_id_seq'::regclass);
 E   ALTER TABLE public.account_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            r           2604    18783     account_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.account_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_user_user_permissions_id_seq'::regclass);
 O   ALTER TABLE public.account_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            n           2604    18784    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            o           2604    18785    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            m           2604    18786    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            u           2604    18787    crm_client id    DEFAULT     n   ALTER TABLE ONLY public.crm_client ALTER COLUMN id SET DEFAULT nextval('public.crm_client_id_seq'::regclass);
 <   ALTER TABLE public.crm_client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            v           2604    18788    crm_contract id    DEFAULT     r   ALTER TABLE ONLY public.crm_contract ALTER COLUMN id SET DEFAULT nextval('public.crm_contract_id_seq'::regclass);
 >   ALTER TABLE public.crm_contract ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            s           2604    18789    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            l           2604    18790    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            k           2604    18791    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            M          0    18631    account_user 
   TABLE DATA           ?   COPY public.account_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   n?       O          0    18644    account_user_groups 
   TABLE DATA           D   COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   u?       Q          0    18652    account_user_user_permissions 
   TABLE DATA           S   COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ??       I          0    18587 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ԯ       K          0    18597    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ?       G          0    18579    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   n?       U          0    18713 
   crm_client 
   TABLE DATA           ?   COPY public.crm_client (id, first_name, last_name, email, phone, mobile, company_name, date_created, date_updated, sales_contact_id) FROM stdin;
    public          postgres    false    219   ??       W          0    18721    crm_contract 
   TABLE DATA           ?   COPY public.crm_contract (id, date_created, date_updated, status, amount, payment_due, client_id, sales_contact_id) FROM stdin;
    public          postgres    false    221   ??       X          0    18727 	   crm_event 
   TABLE DATA           ?   COPY public.crm_event (date_created, date_updated, event_status, attendees, event_date, notes, contract_id, client_id, support_contact_id) FROM stdin;
    public          postgres    false    222    ?       S          0    18689    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ??       E          0    18569    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   M?       C          0    18558    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   η       Y          0    18770    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    223   ??       k           0    0    account_user_groups_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_user_groups_id_seq', 16, true);
          public          postgres    false    212            l           0    0    account_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.account_user_id_seq', 8, true);
          public          postgres    false    210            m           0    0 $   account_user_user_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            n           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    206            o           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 18, true);
          public          postgres    false    208            p           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    204            q           0    0    crm_client_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.crm_client_id_seq', 11, true);
          public          postgres    false    218            r           0    0    crm_contract_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.crm_contract_id_seq', 2, true);
          public          postgres    false    220            s           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 45, true);
          public          postgres    false    216            t           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    202            u           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          postgres    false    200            ?           2606    18649 ,   account_user_groups account_user_groups_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_pkey;
       public            postgres    false    213            ?           2606    18660 F   account_user_groups account_user_groups_user_id_group_id_4d09af3e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq UNIQUE (user_id, group_id);
 p   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq;
       public            postgres    false    213    213            ?           2606    18639    account_user account_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.account_user DROP CONSTRAINT account_user_pkey;
       public            postgres    false    211            ?           2606    18674 Z   account_user_user_permissions account_user_user_permis_user_id_permission_id_48bdd28b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq;
       public            postgres    false    215    215            ?           2606    18657 @   account_user_user_permissions account_user_user_permissions_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permissions_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    18641 &   account_user account_user_username_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_username_key UNIQUE (username);
 P   ALTER TABLE ONLY public.account_user DROP CONSTRAINT account_user_username_key;
       public            postgres    false    211            ?           2606    18627    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    18613 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    18602 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    18592    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207                       2606    18604 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    18584 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    18718    crm_client crm_client_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.crm_client
    ADD CONSTRAINT crm_client_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.crm_client DROP CONSTRAINT crm_client_pkey;
       public            postgres    false    219            ?           2606    18726    crm_contract crm_contract_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crm_contract
    ADD CONSTRAINT crm_contract_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.crm_contract DROP CONSTRAINT crm_contract_pkey;
       public            postgres    false    221            ?           2606    18734    crm_event crm_event_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.crm_event
    ADD CONSTRAINT crm_event_pkey PRIMARY KEY (contract_id);
 B   ALTER TABLE ONLY public.crm_event DROP CONSTRAINT crm_event_pkey;
       public            postgres    false    222            ?           2606    18698 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            z           2606    18576 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            |           2606    18574 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            x           2606    18566 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    18777 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    223            ?           1259    18672 %   account_user_groups_group_id_6c71f749    INDEX     i   CREATE INDEX account_user_groups_group_id_6c71f749 ON public.account_user_groups USING btree (group_id);
 9   DROP INDEX public.account_user_groups_group_id_6c71f749;
       public            postgres    false    213            ?           1259    18671 $   account_user_groups_user_id_14345e7b    INDEX     g   CREATE INDEX account_user_groups_user_id_14345e7b ON public.account_user_groups USING btree (user_id);
 8   DROP INDEX public.account_user_groups_user_id_14345e7b;
       public            postgres    false    213            ?           1259    18686 4   account_user_user_permissions_permission_id_66c44191    INDEX     ?   CREATE INDEX account_user_user_permissions_permission_id_66c44191 ON public.account_user_user_permissions USING btree (permission_id);
 H   DROP INDEX public.account_user_user_permissions_permission_id_66c44191;
       public            postgres    false    215            ?           1259    18685 .   account_user_user_permissions_user_id_cc42d270    INDEX     {   CREATE INDEX account_user_user_permissions_user_id_cc42d270 ON public.account_user_user_permissions USING btree (user_id);
 B   DROP INDEX public.account_user_user_permissions_user_id_cc42d270;
       public            postgres    false    215            ?           1259    18658 #   account_user_username_d393f583_like    INDEX     t   CREATE INDEX account_user_username_d393f583_like ON public.account_user USING btree (username varchar_pattern_ops);
 7   DROP INDEX public.account_user_username_d393f583_like;
       public            postgres    false    211            ?           1259    18628    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    18624 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    18625 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            }           1259    18610 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    18740 $   crm_client_sales_contact_id_e9672697    INDEX     g   CREATE INDEX crm_client_sales_contact_id_e9672697 ON public.crm_client USING btree (sales_contact_id);
 8   DROP INDEX public.crm_client_sales_contact_id_e9672697;
       public            postgres    false    219            ?           1259    18751    crm_contract_client_id_a6b28105    INDEX     ]   CREATE INDEX crm_contract_client_id_a6b28105 ON public.crm_contract USING btree (client_id);
 3   DROP INDEX public.crm_contract_client_id_a6b28105;
       public            postgres    false    221            ?           1259    18752 &   crm_contract_sales_contact_id_0305b5fb    INDEX     k   CREATE INDEX crm_contract_sales_contact_id_0305b5fb ON public.crm_contract USING btree (sales_contact_id);
 :   DROP INDEX public.crm_contract_sales_contact_id_0305b5fb;
       public            postgres    false    221            ?           1259    18768    crm_event_client_id_279d9e47    INDEX     W   CREATE INDEX crm_event_client_id_279d9e47 ON public.crm_event USING btree (client_id);
 0   DROP INDEX public.crm_event_client_id_279d9e47;
       public            postgres    false    222            ?           1259    18769 %   crm_event_support_contact_id_b18d124d    INDEX     i   CREATE INDEX crm_event_support_contact_id_b18d124d ON public.crm_event USING btree (support_contact_id);
 9   DROP INDEX public.crm_event_support_contact_id_b18d124d;
       public            postgres    false    222            ?           1259    18709 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    18710 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    18779 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    223            ?           1259    18778 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    223            ?           2606    18666 J   account_user_groups account_user_groups_group_id_6c71f749_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id;
       public          postgres    false    213    2950    207            ?           2606    18661 K   account_user_groups account_user_groups_user_id_14345e7b_fk_account_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.account_user_groups DROP CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id;
       public          postgres    false    213    2958    211            ?           2606    18680 V   account_user_user_permissions account_user_user_pe_permission_id_66c44191_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm;
       public          postgres    false    215    205    2945            ?           2606    18675 P   account_user_user_permissions account_user_user_pe_user_id_cc42d270_fk_account_u    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.account_user_user_permissions DROP CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u;
       public          postgres    false    211    215    2958            ?           2606    18619 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2945            ?           2606    18614 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    207    2950            ?           2606    18605 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    205    2940            ?           2606    18735 B   crm_client crm_client_sales_contact_id_e9672697_fk_account_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crm_client
    ADD CONSTRAINT crm_client_sales_contact_id_e9672697_fk_account_user_id FOREIGN KEY (sales_contact_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.crm_client DROP CONSTRAINT crm_client_sales_contact_id_e9672697_fk_account_user_id;
       public          postgres    false    219    211    2958            ?           2606    18741 =   crm_contract crm_contract_client_id_a6b28105_fk_crm_client_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crm_contract
    ADD CONSTRAINT crm_contract_client_id_a6b28105_fk_crm_client_id FOREIGN KEY (client_id) REFERENCES public.crm_client(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.crm_contract DROP CONSTRAINT crm_contract_client_id_a6b28105_fk_crm_client_id;
       public          postgres    false    221    2979    219            ?           2606    18746 F   crm_contract crm_contract_sales_contact_id_0305b5fb_fk_account_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crm_contract
    ADD CONSTRAINT crm_contract_sales_contact_id_0305b5fb_fk_account_user_id FOREIGN KEY (sales_contact_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.crm_contract DROP CONSTRAINT crm_contract_sales_contact_id_0305b5fb_fk_account_user_id;
       public          postgres    false    2958    221    211            ?           2606    18758 7   crm_event crm_event_client_id_279d9e47_fk_crm_client_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crm_event
    ADD CONSTRAINT crm_event_client_id_279d9e47_fk_crm_client_id FOREIGN KEY (client_id) REFERENCES public.crm_client(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.crm_event DROP CONSTRAINT crm_event_client_id_279d9e47_fk_crm_client_id;
       public          postgres    false    2979    222    219            ?           2606    18753 ;   crm_event crm_event_contract_id_d0c53cbe_fk_crm_contract_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crm_event
    ADD CONSTRAINT crm_event_contract_id_d0c53cbe_fk_crm_contract_id FOREIGN KEY (contract_id) REFERENCES public.crm_contract(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.crm_event DROP CONSTRAINT crm_event_contract_id_d0c53cbe_fk_crm_contract_id;
       public          postgres    false    221    222    2983            ?           2606    18763 B   crm_event crm_event_support_contact_id_b18d124d_fk_account_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crm_event
    ADD CONSTRAINT crm_event_support_contact_id_b18d124d_fk_account_user_id FOREIGN KEY (support_contact_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.crm_event DROP CONSTRAINT crm_event_support_contact_id_b18d124d_fk_account_user_id;
       public          postgres    false    222    211    2958            ?           2606    18699 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2940    203    217            ?           2606    18704 E   django_admin_log django_admin_log_user_id_c564eba6_fk_account_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id;
       public          postgres    false    211    2958    217            M   ?  x?}?[o?8??ɯ??s?FZHhBR??9??FZ??@?????h???7?saُ?????M???F11???;Ͻ???-?4JEبh???g?????I??A??????{WL??G????k?L?d???>?~?fN?r^??W*?|???<?yI????p?n???Z?[?@????@??Y?ٲ??!?{?|??i?v/?*;??	Ǵ,c???	?ݨ???0?sf??I8 ????DJ??E??????p4?D?????{?#v;??@??6??+?N??!?.?.????^H!L?ݝ?}P?L???gƋ???????x??$?-iġ???J6??e?????Ɏ?In??Q?0jm?????r??????P???|?oǴ.??\?|f?^?G??v? ????䢸f??H?i.ֻ?ll0??&?? 6????lyIه?Ό?Q`!h???? }}$X?Ï??s?b??T?Ġ?ȃ?p[?֏???~]?4?j?i?????
?	f?:?Ɩ??:~?3?_???3m?????}2?>????˜x^???_F??C?'?!???+q???g?~=??^??n˿l?????19v
  ?vb?f?2zZuR?{?Kc?(????S{????'??ռ`???}l2??g?????{ï????	o;???w??$~9?ק"'n#????	n?`?r?h?????Ti'9?fQђd?<?O?XN?E0Q挛S?J?@_,?`xc???F? wH??      O   2   x???  ?????&????Y>?;Y?A??,?E??[?_?Iz?o?      Q      x?????? ? ?      I   ,   x?3?,N?I-?2?,.-(?/*?2??M?KLO?M?+?????? ?v
?      K   N   x?̹?0???(?#?????반`3??Sơ???a0?d^6?Vf_,N0j??bG?x??<QN^(+o??ʭʮ??? &?      G   n  x?]?An?0???}
NP????5*U?)?H?ܾ0~?̰??'??=q???????t+¸?o?̶??ִ??H?ӎ??T?bX??=??-?????7չ???aY?i4??xÞe????"??E??WNT??kr?m??SR }[w?q?] N6%??)	P??\?M???]???T??}ǺJ?0???e??#Q?3?4?*{??K?w[S0V?]e,tf??Ff?K̟8?Ue?r?s	?9S??i???!??@Bb?qL?yһ??ݐ?ķ???jĳH?f;??J@b?3?OШY??n5?<G?Җ??A????PLN?^?X??x??ko(??m?;?#D?r"H?? E???k???C?u      U   ?   x????
?@E?ٯH/ff???ƿ???.#k?m?:nq3?9C?e#?ܟ?T/8??%C??Ƚ?p]J??z/B?=??B?>???xC????jCj???R?j?????s4Š??]?0D-h?A^GTJ=?Q=      W   f   x?u??1Cki
?AQ'?E͒1???k?)?{|$$<p??3?ګAC?\???CkD??????ŋ>????R S?<?-?uy??g??>?\V??BR??/?` ?      X   ?   x?m??
?0Dg?+?u(1??X???K?8???8??J??m????4?? S5{qI?P?Ȇ??>?1vCt$f)+̷???R_?H????J7|?j?CҌ1Sr4Ơ?6
y???5?į???Ԯ???Yk7??-"      S   ?  x??WM??F=ï??&۪???5???C?UN?=x?	?3?a??=Ն?B7F??f??ի?~??8# |??
mM??`????Ќf??펪U_m?????p???_?r?.u??۷O37?9?H?F2?[C????g?}9`-W?z?????ϫ]???f?.~??6'??o?պR???????c????s???KF?"9?ĈF|Fr???hM?|C?os?%#c??f#IbԷ??x?\k@M????I2?7?`??@?????ƚr ?A??`ō M?I,	?5ZG?AKn ??OO??~?)%?%,????6Ĝ??pt?Ý?Ba?1?[K?l,?h?????^?????|?? g?n?n!N?	??@Ԟ0?=\߬?~?x?X=??R&`w??c?c ?JU/U?$,2?V????f???mw?? ?sp[?:?=??ajQ?ܬ?????????????W????}?u8b?ؐ*??=? (0Y???'|???????Z??T?6?c???
v|_???=~T?2???9?{,?`? .e???????1ͩP?O"?? ?ܑs?;?H???i???V??WL???ڲ????t??<?3A??ށ???!?~ևu???lF???t??ŀ??CaO??@?2M??T??Q?'J?.?GǼ{????	W???a??w?þ??s???m??\??????z?޾ޜ?#	P?lbbC%+?t??{???l??t7ɹ???x??????$?T?i??3??-?~\q??????????? j??5?9w)?
u?w???J???C@MW?"g???|}?X k??O0?J|U0{??	F???hH׊?w?ut?B`tq?L1??? Z @??o?ME2x??(ƀ?}???Tl@????OP ??a?????O?      E   q   x?M??
1E׹#??qSbӦ$?0o?Apw?}?)=K?4?$5l??R?5??ݳV7g2?'b?1??4???\օ?.???נ?b?[!??????8?ā????F??#T3?      C   ?  x????n? E?ݯ?{????҄??$(p????Ev?j?????;w??5?????Q?!\?+??0|?????.??%???>???[ٛ?????>?^??JJ?(R???\?au?(s?B{i?(m??Sf?o????Z]?kt̗ӌ"	5????Pz??@j?ʔ???s;f?nA??????y?M???Io?13?eH??=)??1ωG?V??H?uj?.??
o???z??Zcy/??\?EQIXi?2??Z??1?m?}dR?ϡC(?)q???꬙ƃ?&?9? |?E????<^???.F?2?WU_???Y??0?????L?Z?	Bx???0L2????f????H??=!?	??????E?ۛQ?V????????????d??`?p2?h?,?Vs???t:?>3r?      Y      x?????? ? ?     