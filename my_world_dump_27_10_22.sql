PGDMP         %            	    z            my_world %   12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    82661    my_world    DATABASE     ]   CREATE DATABASE my_world WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE my_world;
                postgres    false            �           0    0    DATABASE my_world    ACL     1   GRANT ALL ON DATABASE my_world TO my_world_user;
                   postgres    false    3207            �            1259    82763    alcohol_types    TABLE     i   CREATE TABLE public.alcohol_types (
    id integer NOT NULL,
    type character varying(120) NOT NULL
);
 !   DROP TABLE public.alcohol_types;
       public         heap    my_world_user    false            �            1259    82761    alcohol_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alcohol_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.alcohol_types_id_seq;
       public          my_world_user    false    211            �           0    0    alcohol_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.alcohol_types_id_seq OWNED BY public.alcohol_types.id;
          public          my_world_user    false    210            �            1259    82723    children_types    TABLE     j   CREATE TABLE public.children_types (
    id integer NOT NULL,
    type character varying(120) NOT NULL
);
 "   DROP TABLE public.children_types;
       public         heap    my_world_user    false            �            1259    82721    children_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.children_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.children_types_id_seq;
       public          my_world_user    false    203            �           0    0    children_types_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.children_types_id_seq OWNED BY public.children_types.id;
          public          my_world_user    false    202            �            1259    82802    communities    TABLE     �   CREATE TABLE public.communities (
    id integer NOT NULL,
    name character varying(120),
    creator_id integer NOT NULL,
    created_at timestamp without time zone
);
    DROP TABLE public.communities;
       public         heap    my_world_user    false            �            1259    82800    communities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.communities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.communities_id_seq;
       public          my_world_user    false    219            �           0    0    communities_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.communities_id_seq OWNED BY public.communities.id;
          public          my_world_user    false    218            �            1259    82810    communities_users    TABLE     �   CREATE TABLE public.communities_users (
    community_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone
);
 %   DROP TABLE public.communities_users;
       public         heap    my_world_user    false            �            1259    82743    daily_regime_types    TABLE     n   CREATE TABLE public.daily_regime_types (
    id integer NOT NULL,
    type character varying(120) NOT NULL
);
 &   DROP TABLE public.daily_regime_types;
       public         heap    my_world_user    false            �            1259    82741    daily_regime_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.daily_regime_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.daily_regime_types_id_seq;
       public          my_world_user    false    207            �           0    0    daily_regime_types_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.daily_regime_types_id_seq OWNED BY public.daily_regime_types.id;
          public          my_world_user    false    206            �            1259    82784 
   friendship    TABLE       CREATE TABLE public.friendship (
    id integer NOT NULL,
    requested_by_user_id integer NOT NULL,
    requested_to_user_id integer NOT NULL,
    status_id integer NOT NULL,
    requested_at timestamp without time zone,
    confirmed_at timestamp without time zone
);
    DROP TABLE public.friendship;
       public         heap    my_world_user    false            �            1259    82782    friendship_id_seq    SEQUENCE     �   CREATE SEQUENCE public.friendship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.friendship_id_seq;
       public          my_world_user    false    215            �           0    0    friendship_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.friendship_id_seq OWNED BY public.friendship.id;
          public          my_world_user    false    214            �            1259    82792    friendship_statuses    TABLE     e   CREATE TABLE public.friendship_statuses (
    id integer NOT NULL,
    name character varying(30)
);
 '   DROP TABLE public.friendship_statuses;
       public         heap    my_world_user    false            �            1259    82790    friendship_statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.friendship_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.friendship_statuses_id_seq;
       public          my_world_user    false    217            �           0    0    friendship_statuses_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.friendship_statuses_id_seq OWNED BY public.friendship_statuses.id;
          public          my_world_user    false    216            �            1259    82843    music    TABLE       CREATE TABLE public.music (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);
    DROP TABLE public.music;
       public         heap    my_world_user    false            �            1259    82841    music_id_seq    SEQUENCE     �   CREATE SEQUENCE public.music_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.music_id_seq;
       public          my_world_user    false    226            �           0    0    music_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.music_id_seq OWNED BY public.music.id;
          public          my_world_user    false    225            �            1259    82817    photo    TABLE       CREATE TABLE public.photo (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);
    DROP TABLE public.photo;
       public         heap    my_world_user    false            �            1259    82815    photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.photo_id_seq;
       public          my_world_user    false    222            �           0    0    photo_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;
          public          my_world_user    false    221            �            1259    82733    residence_types    TABLE     k   CREATE TABLE public.residence_types (
    id integer NOT NULL,
    type character varying(120) NOT NULL
);
 #   DROP TABLE public.residence_types;
       public         heap    my_world_user    false            �            1259    82731    residence_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.residence_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.residence_types_id_seq;
       public          my_world_user    false    205            �           0    0    residence_types_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.residence_types_id_seq OWNED BY public.residence_types.id;
          public          my_world_user    false    204            �            1259    82753    smoking_types    TABLE     i   CREATE TABLE public.smoking_types (
    id integer NOT NULL,
    type character varying(120) NOT NULL
);
 !   DROP TABLE public.smoking_types;
       public         heap    my_world_user    false            �            1259    82751    smoking_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.smoking_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.smoking_types_id_seq;
       public          my_world_user    false    209            �           0    0    smoking_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.smoking_types_id_seq OWNED BY public.smoking_types.id;
          public          my_world_user    false    208            �            1259    82856    subscription    TABLE     �   CREATE TABLE public.subscription (
    id integer NOT NULL,
    user_id integer NOT NULL,
    subcription_type_id integer NOT NULL,
    where_signed_id integer NOT NULL,
    when_signed timestamp without time zone NOT NULL
);
     DROP TABLE public.subscription;
       public         heap    my_world_user    false            �            1259    82854    subscription_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.subscription_id_seq;
       public          my_world_user    false    228            �           0    0    subscription_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.subscription_id_seq OWNED BY public.subscription.id;
          public          my_world_user    false    227            �            1259    82864    subscription_type    TABLE     c   CREATE TABLE public.subscription_type (
    id integer NOT NULL,
    type character varying(30)
);
 %   DROP TABLE public.subscription_type;
       public         heap    my_world_user    false            �            1259    82862    subscription_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.subscription_type_id_seq;
       public          my_world_user    false    230            �           0    0    subscription_type_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.subscription_type_id_seq OWNED BY public.subscription_type.id;
          public          my_world_user    false    229            �            1259    82875    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    phone character varying(15)
);
    DROP TABLE public.users;
       public         heap    my_world_user    false            �            1259    82898 
   users_form    TABLE     �   CREATE TABLE public.users_form (
    id integer NOT NULL,
    user_id integer NOT NULL,
    children_id integer,
    residence_id integer,
    daily_regime_id integer,
    smoking_id integer,
    alcohol_id integer,
    languges text
);
    DROP TABLE public.users_form;
       public         heap    my_world_user    false            �            1259    82896    users_form_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_form_id_seq;
       public          my_world_user    false    236            �           0    0    users_form_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_form_id_seq OWNED BY public.users_form.id;
          public          my_world_user    false    235            �            1259    82873    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          my_world_user    false    232            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          my_world_user    false    231            �            1259    82773    users_interests    TABLE     �   CREATE TABLE public.users_interests (
    id integer NOT NULL,
    user_id integer NOT NULL,
    music text,
    sinema text,
    tv text,
    idols text
);
 #   DROP TABLE public.users_interests;
       public         heap    my_world_user    false            �            1259    82771    users_interests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_interests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.users_interests_id_seq;
       public          my_world_user    false    213            �           0    0    users_interests_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.users_interests_id_seq OWNED BY public.users_interests.id;
          public          my_world_user    false    212            �            1259    82887    users_profile    TABLE     4  CREATE TABLE public.users_profile (
    id integer NOT NULL,
    user_id integer NOT NULL,
    birthday timestamp without time zone,
    user_about text,
    education text,
    career text,
    main_photo_id integer,
    last_visit timestamp without time zone,
    created_at timestamp without time zone
);
 !   DROP TABLE public.users_profile;
       public         heap    my_world_user    false            �            1259    82885    users_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_profile_id_seq;
       public          my_world_user    false    234            �           0    0    users_profile_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;
          public          my_world_user    false    233            �            1259    82830    video    TABLE       CREATE TABLE public.video (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);
    DROP TABLE public.video;
       public         heap    my_world_user    false            �            1259    82828    video_id_seq    SEQUENCE     �   CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.video_id_seq;
       public          my_world_user    false    224            �           0    0    video_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;
          public          my_world_user    false    223            �           2604    82766    alcohol_types id    DEFAULT     t   ALTER TABLE ONLY public.alcohol_types ALTER COLUMN id SET DEFAULT nextval('public.alcohol_types_id_seq'::regclass);
 ?   ALTER TABLE public.alcohol_types ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    210    211    211            |           2604    82726    children_types id    DEFAULT     v   ALTER TABLE ONLY public.children_types ALTER COLUMN id SET DEFAULT nextval('public.children_types_id_seq'::regclass);
 @   ALTER TABLE public.children_types ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    202    203    203            �           2604    82805    communities id    DEFAULT     p   ALTER TABLE ONLY public.communities ALTER COLUMN id SET DEFAULT nextval('public.communities_id_seq'::regclass);
 =   ALTER TABLE public.communities ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    219    218    219            ~           2604    82746    daily_regime_types id    DEFAULT     ~   ALTER TABLE ONLY public.daily_regime_types ALTER COLUMN id SET DEFAULT nextval('public.daily_regime_types_id_seq'::regclass);
 D   ALTER TABLE public.daily_regime_types ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    206    207    207            �           2604    82787    friendship id    DEFAULT     n   ALTER TABLE ONLY public.friendship ALTER COLUMN id SET DEFAULT nextval('public.friendship_id_seq'::regclass);
 <   ALTER TABLE public.friendship ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    215    214    215            �           2604    82795    friendship_statuses id    DEFAULT     �   ALTER TABLE ONLY public.friendship_statuses ALTER COLUMN id SET DEFAULT nextval('public.friendship_statuses_id_seq'::regclass);
 E   ALTER TABLE public.friendship_statuses ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    216    217    217            �           2604    82846    music id    DEFAULT     d   ALTER TABLE ONLY public.music ALTER COLUMN id SET DEFAULT nextval('public.music_id_seq'::regclass);
 7   ALTER TABLE public.music ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    225    226    226            �           2604    82820    photo id    DEFAULT     d   ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);
 7   ALTER TABLE public.photo ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    221    222    222            }           2604    82736    residence_types id    DEFAULT     x   ALTER TABLE ONLY public.residence_types ALTER COLUMN id SET DEFAULT nextval('public.residence_types_id_seq'::regclass);
 A   ALTER TABLE public.residence_types ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    204    205    205                       2604    82756    smoking_types id    DEFAULT     t   ALTER TABLE ONLY public.smoking_types ALTER COLUMN id SET DEFAULT nextval('public.smoking_types_id_seq'::regclass);
 ?   ALTER TABLE public.smoking_types ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    209    208    209            �           2604    82859    subscription id    DEFAULT     r   ALTER TABLE ONLY public.subscription ALTER COLUMN id SET DEFAULT nextval('public.subscription_id_seq'::regclass);
 >   ALTER TABLE public.subscription ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    228    227    228            �           2604    82867    subscription_type id    DEFAULT     |   ALTER TABLE ONLY public.subscription_type ALTER COLUMN id SET DEFAULT nextval('public.subscription_type_id_seq'::regclass);
 C   ALTER TABLE public.subscription_type ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    229    230    230            �           2604    82878    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    231    232    232            �           2604    82901    users_form id    DEFAULT     n   ALTER TABLE ONLY public.users_form ALTER COLUMN id SET DEFAULT nextval('public.users_form_id_seq'::regclass);
 <   ALTER TABLE public.users_form ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    236    235    236            �           2604    82776    users_interests id    DEFAULT     x   ALTER TABLE ONLY public.users_interests ALTER COLUMN id SET DEFAULT nextval('public.users_interests_id_seq'::regclass);
 A   ALTER TABLE public.users_interests ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    213    212    213            �           2604    82890    users_profile id    DEFAULT     t   ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);
 ?   ALTER TABLE public.users_profile ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    234    233    234            �           2604    82833    video id    DEFAULT     d   ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);
 7   ALTER TABLE public.video ALTER COLUMN id DROP DEFAULT;
       public          my_world_user    false    224    223    224            h          0    82763    alcohol_types 
   TABLE DATA           1   COPY public.alcohol_types (id, type) FROM stdin;
    public          my_world_user    false    211   /�       `          0    82723    children_types 
   TABLE DATA           2   COPY public.children_types (id, type) FROM stdin;
    public          my_world_user    false    203   j�       p          0    82802    communities 
   TABLE DATA           G   COPY public.communities (id, name, creator_id, created_at) FROM stdin;
    public          my_world_user    false    219   ��       q          0    82810    communities_users 
   TABLE DATA           N   COPY public.communities_users (community_id, user_id, created_at) FROM stdin;
    public          my_world_user    false    220   ��       d          0    82743    daily_regime_types 
   TABLE DATA           6   COPY public.daily_regime_types (id, type) FROM stdin;
    public          my_world_user    false    207   ��       l          0    82784 
   friendship 
   TABLE DATA           {   COPY public.friendship (id, requested_by_user_id, requested_to_user_id, status_id, requested_at, confirmed_at) FROM stdin;
    public          my_world_user    false    215   �       n          0    82792    friendship_statuses 
   TABLE DATA           7   COPY public.friendship_statuses (id, name) FROM stdin;
    public          my_world_user    false    217   ��       w          0    82843    music 
   TABLE DATA           R   COPY public.music (id, url, owner_id, description, uploaded_at, size) FROM stdin;
    public          my_world_user    false    226   [�       s          0    82817    photo 
   TABLE DATA           R   COPY public.photo (id, url, owner_id, description, uploaded_at, size) FROM stdin;
    public          my_world_user    false    222   ��       b          0    82733    residence_types 
   TABLE DATA           3   COPY public.residence_types (id, type) FROM stdin;
    public          my_world_user    false    205    �       f          0    82753    smoking_types 
   TABLE DATA           1   COPY public.smoking_types (id, type) FROM stdin;
    public          my_world_user    false    209   Y�       y          0    82856    subscription 
   TABLE DATA           f   COPY public.subscription (id, user_id, subcription_type_id, where_signed_id, when_signed) FROM stdin;
    public          my_world_user    false    228   ��       {          0    82864    subscription_type 
   TABLE DATA           5   COPY public.subscription_type (id, type) FROM stdin;
    public          my_world_user    false    230   �      }          0    82875    users 
   TABLE DATA           H   COPY public.users (id, first_name, last_name, email, phone) FROM stdin;
    public          my_world_user    false    232   �      �          0    82898 
   users_form 
   TABLE DATA              COPY public.users_form (id, user_id, children_id, residence_id, daily_regime_id, smoking_id, alcohol_id, languges) FROM stdin;
    public          my_world_user    false    236   �      j          0    82773    users_interests 
   TABLE DATA           P   COPY public.users_interests (id, user_id, music, sinema, tv, idols) FROM stdin;
    public          my_world_user    false    213   �                0    82887    users_profile 
   TABLE DATA           �   COPY public.users_profile (id, user_id, birthday, user_about, education, career, main_photo_id, last_visit, created_at) FROM stdin;
    public          my_world_user    false    234   �%      u          0    82830    video 
   TABLE DATA           R   COPY public.video (id, url, owner_id, description, uploaded_at, size) FROM stdin;
    public          my_world_user    false    224   �?      �           0    0    alcohol_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alcohol_types_id_seq', 1, false);
          public          my_world_user    false    210            �           0    0    children_types_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.children_types_id_seq', 1, false);
          public          my_world_user    false    202            �           0    0    communities_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.communities_id_seq', 1, false);
          public          my_world_user    false    218            �           0    0    daily_regime_types_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.daily_regime_types_id_seq', 1, false);
          public          my_world_user    false    206            �           0    0    friendship_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.friendship_id_seq', 1, false);
          public          my_world_user    false    214            �           0    0    friendship_statuses_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.friendship_statuses_id_seq', 1, false);
          public          my_world_user    false    216            �           0    0    music_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.music_id_seq', 1, false);
          public          my_world_user    false    225            �           0    0    photo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.photo_id_seq', 1, false);
          public          my_world_user    false    221            �           0    0    residence_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.residence_types_id_seq', 1, false);
          public          my_world_user    false    204            �           0    0    smoking_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.smoking_types_id_seq', 1, false);
          public          my_world_user    false    208            �           0    0    subscription_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subscription_id_seq', 1, false);
          public          my_world_user    false    227            �           0    0    subscription_type_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.subscription_type_id_seq', 1, false);
          public          my_world_user    false    229            �           0    0    users_form_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_form_id_seq', 1, false);
          public          my_world_user    false    235            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          my_world_user    false    231            �           0    0    users_interests_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.users_interests_id_seq', 1, false);
          public          my_world_user    false    212            �           0    0    users_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_profile_id_seq', 1, false);
          public          my_world_user    false    233            �           0    0    video_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.video_id_seq', 1, false);
          public          my_world_user    false    223            �           2606    82768     alcohol_types alcohol_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.alcohol_types
    ADD CONSTRAINT alcohol_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.alcohol_types DROP CONSTRAINT alcohol_types_pkey;
       public            my_world_user    false    211            �           2606    82770 $   alcohol_types alcohol_types_type_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.alcohol_types
    ADD CONSTRAINT alcohol_types_type_key UNIQUE (type);
 N   ALTER TABLE ONLY public.alcohol_types DROP CONSTRAINT alcohol_types_type_key;
       public            my_world_user    false    211            �           2606    82728 "   children_types children_types_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.children_types
    ADD CONSTRAINT children_types_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.children_types DROP CONSTRAINT children_types_pkey;
       public            my_world_user    false    203            �           2606    82730 &   children_types children_types_type_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.children_types
    ADD CONSTRAINT children_types_type_key UNIQUE (type);
 P   ALTER TABLE ONLY public.children_types DROP CONSTRAINT children_types_type_key;
       public            my_world_user    false    203            �           2606    82809     communities communities_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.communities DROP CONSTRAINT communities_name_key;
       public            my_world_user    false    219            �           2606    82807    communities communities_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.communities DROP CONSTRAINT communities_pkey;
       public            my_world_user    false    219            �           2606    82814 (   communities_users communities_users_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.communities_users
    ADD CONSTRAINT communities_users_pkey PRIMARY KEY (community_id, user_id);
 R   ALTER TABLE ONLY public.communities_users DROP CONSTRAINT communities_users_pkey;
       public            my_world_user    false    220    220            �           2606    82748 *   daily_regime_types daily_regime_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.daily_regime_types
    ADD CONSTRAINT daily_regime_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.daily_regime_types DROP CONSTRAINT daily_regime_types_pkey;
       public            my_world_user    false    207            �           2606    82750 .   daily_regime_types daily_regime_types_type_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.daily_regime_types
    ADD CONSTRAINT daily_regime_types_type_key UNIQUE (type);
 X   ALTER TABLE ONLY public.daily_regime_types DROP CONSTRAINT daily_regime_types_type_key;
       public            my_world_user    false    207            �           2606    82789    friendship friendship_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.friendship DROP CONSTRAINT friendship_pkey;
       public            my_world_user    false    215            �           2606    82799 0   friendship_statuses friendship_statuses_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.friendship_statuses DROP CONSTRAINT friendship_statuses_name_key;
       public            my_world_user    false    217            �           2606    82797 ,   friendship_statuses friendship_statuses_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.friendship_statuses DROP CONSTRAINT friendship_statuses_pkey;
       public            my_world_user    false    217            �           2606    82851    music music_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.music
    ADD CONSTRAINT music_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.music DROP CONSTRAINT music_pkey;
       public            my_world_user    false    226            �           2606    82853    music music_url_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.music
    ADD CONSTRAINT music_url_key UNIQUE (url);
 =   ALTER TABLE ONLY public.music DROP CONSTRAINT music_url_key;
       public            my_world_user    false    226            �           2606    82825    photo photo_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.photo DROP CONSTRAINT photo_pkey;
       public            my_world_user    false    222            �           2606    82827    photo photo_url_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_url_key UNIQUE (url);
 =   ALTER TABLE ONLY public.photo DROP CONSTRAINT photo_url_key;
       public            my_world_user    false    222            �           2606    82738 $   residence_types residence_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.residence_types
    ADD CONSTRAINT residence_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.residence_types DROP CONSTRAINT residence_types_pkey;
       public            my_world_user    false    205            �           2606    82740 (   residence_types residence_types_type_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.residence_types
    ADD CONSTRAINT residence_types_type_key UNIQUE (type);
 R   ALTER TABLE ONLY public.residence_types DROP CONSTRAINT residence_types_type_key;
       public            my_world_user    false    205            �           2606    82758     smoking_types smoking_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.smoking_types
    ADD CONSTRAINT smoking_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.smoking_types DROP CONSTRAINT smoking_types_pkey;
       public            my_world_user    false    209            �           2606    82760 $   smoking_types smoking_types_type_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.smoking_types
    ADD CONSTRAINT smoking_types_type_key UNIQUE (type);
 N   ALTER TABLE ONLY public.smoking_types DROP CONSTRAINT smoking_types_type_key;
       public            my_world_user    false    209            �           2606    82861    subscription subscription_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_pkey;
       public            my_world_user    false    228            �           2606    82869 (   subscription_type subscription_type_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.subscription_type
    ADD CONSTRAINT subscription_type_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.subscription_type DROP CONSTRAINT subscription_type_pkey;
       public            my_world_user    false    230            �           2606    82871 ,   subscription_type subscription_type_type_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.subscription_type
    ADD CONSTRAINT subscription_type_type_key UNIQUE (type);
 V   ALTER TABLE ONLY public.subscription_type DROP CONSTRAINT subscription_type_type_key;
       public            my_world_user    false    230            �           2606    82882    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            my_world_user    false    232            �           2606    82906    users_form users_form_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_pkey;
       public            my_world_user    false    236            �           2606    82781 $   users_interests users_interests_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.users_interests
    ADD CONSTRAINT users_interests_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.users_interests DROP CONSTRAINT users_interests_pkey;
       public            my_world_user    false    213            �           2606    82884    users users_phone_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phone_key;
       public            my_world_user    false    232            �           2606    82880    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            my_world_user    false    232            �           2606    82895     users_profile users_profile_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_profile DROP CONSTRAINT users_profile_pkey;
       public            my_world_user    false    234            �           2606    82838    video video_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.video DROP CONSTRAINT video_pkey;
       public            my_world_user    false    224            �           2606    82840    video video_url_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_url_key UNIQUE (url);
 =   ALTER TABLE ONLY public.video DROP CONSTRAINT video_url_key;
       public            my_world_user    false    224            �           2606    82952 %   communities communities_creator_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_creator_id_fk FOREIGN KEY (creator_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.communities DROP CONSTRAINT communities_creator_id_fk;
       public          my_world_user    false    3014    219    232            �           2606    82957 3   communities_users communities_users_community_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.communities_users
    ADD CONSTRAINT communities_users_community_id_fk FOREIGN KEY (community_id) REFERENCES public.communities(id);
 ]   ALTER TABLE ONLY public.communities_users DROP CONSTRAINT communities_users_community_id_fk;
       public          my_world_user    false    219    2988    220            �           2606    82962 .   communities_users communities_users_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.communities_users
    ADD CONSTRAINT communities_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 X   ALTER TABLE ONLY public.communities_users DROP CONSTRAINT communities_users_user_id_fk;
       public          my_world_user    false    220    232    3014            �           2606    82967 -   friendship friendship_requested_by_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_requested_by_user_id_fk FOREIGN KEY (requested_by_user_id) REFERENCES public.users(id);
 W   ALTER TABLE ONLY public.friendship DROP CONSTRAINT friendship_requested_by_user_id_fk;
       public          my_world_user    false    3014    215    232            �           2606    82972 -   friendship friendship_requested_to_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_requested_to_user_id_fk FOREIGN KEY (requested_to_user_id) REFERENCES public.users(id);
 W   ALTER TABLE ONLY public.friendship DROP CONSTRAINT friendship_requested_to_user_id_fk;
       public          my_world_user    false    3014    232    215            �           2606    82977 "   friendship friendship_status_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_status_id_fk FOREIGN KEY (status_id) REFERENCES public.friendship_statuses(id);
 L   ALTER TABLE ONLY public.friendship DROP CONSTRAINT friendship_status_id_fk;
       public          my_world_user    false    217    215    2984            �           2606    82982    photo photo_owner_id_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.photo DROP CONSTRAINT photo_owner_id_fk;
       public          my_world_user    false    3014    232    222            �           2606    83002 0   subscription subscription_subcription_type_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_subcription_type_id_fk FOREIGN KEY (subcription_type_id) REFERENCES public.subscription_type(id);
 Z   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_subcription_type_id_fk;
       public          my_world_user    false    228    230    3006            �           2606    82997 $   subscription subscription_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_user_id_fk;
       public          my_world_user    false    232    3014    228            �           2606    83012 8   subscription subscription_where_signed_id_communities_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_where_signed_id_communities_fk FOREIGN KEY (where_signed_id) REFERENCES public.communities(id);
 b   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_where_signed_id_communities_fk;
       public          my_world_user    false    219    228    2988            �           2606    83007 2   subscription subscription_where_signed_id_users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_where_signed_id_users_fk FOREIGN KEY (where_signed_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_where_signed_id_users_fk;
       public          my_world_user    false    228    232    3014            �           2606    82942 #   users_form users_form_alcohol_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_alcohol_id_fk FOREIGN KEY (alcohol_id) REFERENCES public.alcohol_types(id);
 M   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_alcohol_id_fk;
       public          my_world_user    false    211    2974    236            �           2606    82922 $   users_form users_form_children_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_children_id_fk FOREIGN KEY (children_id) REFERENCES public.children_types(id);
 N   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_children_id_fk;
       public          my_world_user    false    203    2958    236            �           2606    82932 (   users_form users_form_daily_regime_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_daily_regime_id_fk FOREIGN KEY (daily_regime_id) REFERENCES public.daily_regime_types(id);
 R   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_daily_regime_id_fk;
       public          my_world_user    false    207    2966    236            �           2606    82927 %   users_form users_form_residence_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_residence_id_fk FOREIGN KEY (residence_id) REFERENCES public.residence_types(id);
 O   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_residence_id_fk;
       public          my_world_user    false    2962    205    236            �           2606    82937 #   users_form users_form_smoking_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_smoking_id_fk FOREIGN KEY (smoking_id) REFERENCES public.smoking_types(id);
 M   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_smoking_id_fk;
       public          my_world_user    false    209    2970    236            �           2606    82917 !   users_form users_form_users_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_form
    ADD CONSTRAINT users_form_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.users_form DROP CONSTRAINT users_form_users_id_fk;
       public          my_world_user    false    3014    236    232            �           2606    82947 *   users_interests users_interests_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_interests
    ADD CONSTRAINT users_interests_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.users_interests DROP CONSTRAINT users_interests_user_id_fk;
       public          my_world_user    false    3014    232    213            �           2606    82907 ,   users_profile users_profile_main_photo_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_main_photo_id_fk FOREIGN KEY (main_photo_id) REFERENCES public.photo(id);
 V   ALTER TABLE ONLY public.users_profile DROP CONSTRAINT users_profile_main_photo_id_fk;
       public          my_world_user    false    2992    222    234            �           2606    82912 '   users_profile users_profile_users_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.users_profile DROP CONSTRAINT users_profile_users_id_fk;
       public          my_world_user    false    3014    234    232            �           2606    82987    video video_owner_id_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.video DROP CONSTRAINT video_owner_id_fk;
       public          my_world_user    false    224    3014    232            �           2606    82992    music video_owner_id_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.music
    ADD CONSTRAINT video_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.music DROP CONSTRAINT video_owner_id_fk;
       public          my_world_user    false    3014    232    226            h   +   x�3估��.#�{/l���ef\�$�]�|aW� �h�      `      x�3估��.#�{/l������� j��      p   �
  x��Xێ�}�����/���a'���p�Oyᨵ��R[���9U�Hm��8�>��HT��S��(1�~���F������6/��_��c����e6Q�K��J��kY�7�nFF�a��eߖ�!Zz��3F��LW#F�/��A�w?��}�m�P|�zS�Q�47[�lU+F�>,�D�����b�MW��n��iDQ�y��2�s�'\a���i��6<�t�aݤ����2���HUݪ�*L-�>��������ǰ�~�/��W9�~}�w��W��>��!:.��Ph�fla����p����0!�����*��r�{�x�:���?�rw�H_+^n���>"���nG��?W���mNR�.�����wH�0�x�3/�:]U�R��J�tS�NPz�i�~�,c ͛�(��P�R�����Ӈ���恛���M�������),��A8y��=](�E~r�G���� ��(�:���������TCղ���j�<��	���8����V��DiMa�H@��@pj�XUә��p��R��AoQ�a巎� �]�7x�O�lH%��1��9��z ����J� ,���D�n�w|)��C��{���4X�4Or��C������a�/�BU�"l�G"�jn
��RJ}�?"��a�+h�����l��;���+jJ�.�雪
ۊu�3��ST^�C�H�:മ��OU/<��q��Et_�]Y�G��u���n��ty��s_([�''|��W��JD�n�!�Vgl
��C��Wt��+��w�Jl ΰ�*��?!�(tO��vw�,Pr"���*�7��D( ��҂�A��K��Cb�RP�N�'��CS2�[\�����'X>�C��;"�4,�	�Z��&��:P�ʊ��z߁�ɿ�>��5������.k_�C�s��}A%B�H� ��iS@N� �G��N �r�94�F�H�{���?q�aq[��k��ɑh;�����X��63x��C]T�`&<|T���K�XR��@$�.z�h���)�j����A��k9:�>t�*t� ���%j~RK`��ץ�I�XC��3����PMz���RS9k%�R��f�ߏ�D���5Y{5u��R�k-��{��zjh���mEsP��J#�D!� d��z:C��/o�,���]��VԪ���jZ��Wԕ  ���!N��A��U4Ǜ����Mサ���������%ڍ�+X�$��f�5�;��M��G����������_��E�V�~��_ҜEUw�J.y%ut��GE�mJ�����6��yZj� GsįCk f��\���q�Q��
W-&ٳ��8E�Z�5� W��>��1{�{���h��H#����$�! �	d�y��hl�ͥ!����~}ԋ��ُst^zMo�����M� |�ĵ�r�Io�"��fŗU|Y��Y��!�<0�<���́:� a?�(�J�����Om�Az�YH��:5-�&�̙N�}|��a25{"�j�h:q8yj�A�2]{@�[����uعς�Y����O�Eל�Cfg:O��.���Q�¸���Ѿ>qo��C�k@dxV(���Z<���<-z�ל�I
�>S�W6G��k�~T��.���JRX��X�2t������{��Kz��\��
���r��'�;��m@�P��CP�}�QC�M���Y/JM>5��@�$Ω��\:�[H����1`�P�0cP9%��w��sx�*���r�r�Z�1�Y�ҫ���)�F���DH�t$l���n�U�EW��<�s)��BU��ʒ΢�+���ב��J�:�8As�%P�H��4@1|����(�$M��'���>}Er������'^]�]Urh	�bƅ�gf\�K%x����y�4�mB5$Ws�����2\����%�i<�|��Ǚ����R�
7���a�\��Hꫨ� L���~q롴�<S��Q��E'����i^B��7��D숾09e?��IS��H��J�|sp[�h�0l��9]J���2�p�k�T���y��(�	��r&:��f8�Q�I,hLU����`���V.Y�	��1��T AUqGYA�T�g�%��g
�#��ˡ'\	_��#�r��S\q?�50"j��HK#��
U�?���o7\����;���#�T��U���+�D��)4DO��:�ý�J��işVsKM������?R��w����k�i����3�aqC��׈�����@bL�U�ئ�8�ht״!!=���м!�����B<{C˿#�:U�l�X�*����1�>�>�]<u�Ծ���nq �
3Cm�#6�L	�<QXHA�w8�i^A3Z�-Iqz��0e���om����A6B��G˳��e�Ƶ�d`�����42������t���*%m�4��uT�&q���$��u���c���N�{�ipdyS��ᄪ��h)����;L�i�x�[�� �P�O(�{��iAhknh�V���[F�����#sν\u����=�y��+�
��AK7���L�=^�ml�p�.	�	�� �:�2�;��$z�Q��2��Jt�;������]E��x��~�"mE�&��W:�%4��2@��/y����5�����Λ^��,J�����A�C��𮎄^������S8��T6��������Y(�8M�DA>"����<m`����1��/ffa�A�]��i��׵(�� �7(�      q   -  x�UVݑ�:{��H�������:�D���yZ/ �i=�%+����eeI_R�Y�|�[�6��,��J�=�xC�-����Ufn-���(��%u�/)Y%��� [�L�jU��T�:��	��,o����E/�̆��T�d*��K�RD������xI[:�k.3���x��)#=ॳ�²[��rc��y ��"�.�\��ᩴݨ_�\��k��K!��(���*�~�ۭ��� "�r@��漓�2�x�[�f_����@0,y;���XA�:ra� [�ݓ���V�f#c�3�J���ky9�@=.��6�����N�\U��������2�us�)�M� ��%����Ȝd��~h�T1x�ԾdJrP�R�y�ϻ�Y� L[F��wl����>d�!b$�c�\_���U2 �Ls+��_h`�0���$��5�mp�` �m;�  �h���q��4�Mg!���a��:���s��`�M ����M�詍�6c?P��\[�A9Aڲx1ٌR��u�v�i�Cހ�D�� T���N���ذ#�O�U����;����Ш�����I3���T�����Ɵ2�h�a���s�U0����k�2��<.A�OLg��A���[#4Ь'��` �~_*7Q���hI�i��7�<��C�7*���O���'�c���.���8eӽ׈6���Q�G�Q!j̺�=kR^@�@-{�6��a�#r,̨�(#ɷع�\��z��� &����M,�d���[��'���1l�T^@�A7i؁\�&��h��7g{�y���=5�T*=6p�V輈�S6V�nyv���|��Q%�O���_S��ċ�!pð���Geh��1���P��J���ó�mG�w��;�!���s��� ��~۳��rJ$k����-������u|D`\XA�/�O۞2�sb���dG0�ɍ����//a��~�G%�����a���)C�[�G3D1���2�}�0b�Y���V�f����|��8|����V��'��c5Z`�ɥ�����qa<�@��6#�>�4���9�3��m      d   <   x�3估��.��pa߅�@��ˈ�b#����.c��/6�7\l��(���� �E      l   �  x�]XK��8[ۧ����2�?�Hر�Sի�sBe���K?�?�G�[�+i=��ʣ�-�ڈF�������G�5{�X��O�#��x��TCj���ᕏ�7㚴���R�8�04��������O�z��G�[��#�+��h{�W�:a<aȣ�Eb��Vv��g�Q}���u��t<�^�z�ƾ����\O�>�4<�Np��+�O�!Nx�w|�S�zuLpg������jډ�"R��E�����
G�X�Rw�X��<G�����RI��^�J x�)���C�}D�x8�J�>�=S���T� �-D��m��-Э��Q3�hm�R�����F.�r�QK��/�%1�/��\��h/�A`%�#2�� �|�~�Ij�Z�9�G��U���|]\I F�!i�^8lX*�� 3I� j��M� .�sa�Nq��SIa�d��W'�P��ԇ.~3P.5����d��U�7+��r��,�����3�v ��:P(G�_���V�D_�6��(��|�"ƈ.���cb�0�R� �j8\��#zn�4QD�3�?�{ut�M}q�+�M���U����Tl���	VWy�{�䋝�+c]��1f,/�/������$� p��Q-�VAo��|yhq�9�g"�FP����H ���\�t$`�#F�T	vWu?t� �j��SbQ@�������@�Et�L�� �پdR�A��ݾ)0���
��r�b��ѿ�دI�X��&�T̑�x	J[��z0gee�ѵ�4��`�"p�J�׽?"6t�������_���٧��@:n��!J@�v	�1��S����_��Z�j:�[f���
�C���;�wK�.]�G^�I;-"$��ُ��W��ՕF�K9f��ew�ĸ����k��E`5�mc�`&��g�R��R(JH��%��L��\�@Q#t�z��\������{�OCČ�=Iܒ9U\�4?��%I[!�^nO���|��1� �R�g���3ٴ�P�(�	@�����y�I��d�pDi{��>%L����T�����O�TO�Aę���T5�"=����?��7�T�W�.堐�].��CQɏ�1����D��Ե1V�C����a�p�Or�۞u^��pW#%�\C�:_��0u���0��MhH������$�kH�F-�ӷ1����? l�o�Z!�Rz��=X� 9�����r��
�86�����e0ӑQɌ��Jl���f�������ݰ�U �J�8�~�$o��%�����%�����e���n���XW	��ne�a�G�/.�?��+�R�e|�2�<�̓��c��Vv�S���#��}ӎ�R���T:��5Yq�>���D��8���}1�/c�����:�^ݘ�J����>d]�~�)�axQ6�s�c�p���qq�k����t{��!?�7)mnq�D��cq�\��=�6���bl�9�t
��5���q�Sa�`/�׼[,�*�Z�.$��o�^1��v3l��%/OeN�+~�Y��NC�����Y�Y*�U��i�/��|���УiJy�Y+�/.���y,lzZbG�F�K�w�	uʢ�H�a�x��\�z]˓^���T).1��]{����f3������?RΞg�c�ާ�S������f�������W����^�s�,����	��k���#M�W]�2����k���B/א��ưcąYC�����N�.�Ϗ�Id��߰;���`K��,�;�E2�߽H����a�����,���M��Egc�g���¢wM;�/� �b_~H �詐�b��q��~�z�g��!t�A�La��Ŀf�3��H��%r0{�%s��-�{�3�����H�8��/�0d_�k�؂�\�Q�{����pY�[:��+n�?���֜���E���A��vY��Z��f\����N��H'�{Mn��u� �T���'�����}      n   O   x�3估I���/l��s��b+�煽�*`Js^����/쾰�bǅ�@�;�J/v_l	�q��qqq ��6X      w   Q  x��ZY�㺕~�~���rs�D(4��wp�<�KV��k[n-u����wH��muO4W��Y���R��q��|�����5������e������и��x���zlXeYsm/;~��g{t|hG�.͸cJ(�"Ջ0\���#��s�I��G�����򥹾���}�B0U�fj�Kw�̀��z���Ea�� �2�,�L���oo5V�O�}�ql�����UKf�M�4�x{��Uۆ�]��ھ}�cϧ�/�rYN-X^�<�&�Í���V��jX���t�M�~��U*.�!�?��B�L�1�����u>�{�
�����f��]ݞۡxsBly{�˞���65���q:�v���ڡ����=Mg��ǐ%�H�8h�J!��"��}l/��4Lo_j�_o�� ���;�I��ߦkͧ�7�����ȯ�	������]w���ahk�",E@���e����d�����2U���~:��|�pᰪ/Bq�F�C�X��Ȥ}��8_����Ϯo.!��؝Q �%+_Dα���VQV(�*�{7��[�O{����ZV�����6���g@��H�τ��Uq�pv���L�T]w:7�MQH�+��R���w}�"��uh����M�S�ߧ@2�t�����|q��$�,�/�Oj���0!滸x����ͅ%|�#VF�bE�3�6ү�����L����c�����=��Ի7�t?�P�"}�ks ~TB�Lž���vl�*y<�oM���_������e@���ЌKG�m�	�M�}�IC1��E�TvA�K���T���9P����X��d>���c��C�}�6�����x�c����/nh��i�_���.��M��
���,�����a"z��P�Ӱ�s��Bc�j�:�y >�ZI(qO	���۫1��q�W�(�_]S7WG]K!��p����w��ۄ�6�O��L;��n)��A�í(�6U�����~�i��*\������w��ՋtAM�̬UX6��:dKo����%;{����"�UEX�+�W��%��6�����2~�cH�?�a�"(�-��[SSk.ʃ*�S��̴X6]4o]�[�j�F�t���Mi��(�~"���Ć�kA�hI�a���k�e�叨{����\�[����Z�7!��!����%� ���;y$��gJy%+U.2�6Z��h.;�:�����N�un��� 慆�����"�*!zC:,�(l��_� �F��G>��������p6�	ڣn��u��]c��J�҈U.p���u��/���e�!8�n�k���~����A���������>�-�5��� Pq:0LRgz2�����p
�B䏄)�F�4S(I�lT��I�Q_�w�E���.�練,h$I]_Z�;]�9���H)X�hF��.Q(R[�D��'�<��P��鄎�e�L ��1u���e;C�%B�R��y��eeX�զ�ZA1Hݰ���YI-���NmY��������"3b3�	����-��'Ż��B�B��lk��Y� �?�v޷j���?CA$}�2�>͒*��L��k3�����/Çv�xM��ԃi��Q�������zq"�����X�,�x2Cw���Q�I�7IhZ=e�9X-	-ɣ間΀�j�%A4O$�f4$}k)F��M���0��	p�5 �3u,+� ����>9)h���h6S�?��BT��
�'@���7��[��tb!ءxs]��$.O��#�j�gS��D�5 �=@����Dھ�Ϲ�=�-}nf�Crw�XR{7�`MQ���:?(��L@�zb �؝�NDx'� =VQ3I+�,O��NI���+�g���w?���;{�߯	��>�<N.7�wi�'�XP���JN���I���"I��Ɂ�y��u�0"��~�g��Z�>��ap�'�B�o��+���̺�!��sj/�4��Dl	��r���T�is��}�һ �w�ЙeN ��*3t)�DF+�@�Y�v�y�V���
���PF�9�,���y��D��Y'U%{b��]X{H��Q�-�ZŢr�!��*��b�.�෻GMD���,QgIwB�rk�,/��.q��.�6�W�eJ�G�������^�2�Ow�{�����}��5�j&�i��f��������kC �
�q�Wۂ�SAP=�ga��>c)�>hH4]UV����M
�	����8#-�LHRkd�@�PY!�Q����(��?]�"��y�ۺvKi�)>:NP lX$�lD���=� ��(/�c���ͥ�
�)P�
�
G��U6G��I�ˈ*���?�Ow�e|��Ď����P��9Id��d�f;ѐ؏qC����& Y�hK�Q	I�_�UyV����]�'���d�ֹ&�(i%0�)����w�|��-��l�og��C*��P��,�QZ)�"5��!	�%CfI��[��	@��v�ڥ�*�DI�C6Z J���aZR�|U,\���"�Z�����*�"v��D1�+L�*��dg��}��k�֬Y�{��=��S駧�<>a.��QY)6���>�;O�l�����IL�.�/�v�mQ�4a .���$�OB-������L��/�g�qBؽ9�!C�u[�L�(�Rm���͏9�WӒ���y6�D�E�9�&+.$��J~�d-���9��.�VQz�жĦP����	C-�~R�t��P�RҘ��8ӳ���a�T"+�g����*v7�J��P����ϳ���l?BM��$VK��b��UqYFg�0�y5T�
l�N#�4�.Nc*H�2����MsQ?�� �UL
D�P���[
���n���Ymfm�?.�}�oD�.9�`�

��Y&��͹2�tx��AۧW,��q����o��"�.�C�e�X�Y���8Q��}kF�$ag)x J���tk*�N6T͓�Ln_�	XEv��:�Ijߍ�B|p���`���] m���H�7��.cpH]��F2^��p�d��H2n7�3��57���z��c��n�=��q�Vfv��Ӕ��H����I�ie܏aB%��7lh�JTƏ&�i�D*�Fu�EV�}$��G��z^~:URI�o�G�XQex%��d�P	"?zcyi���F�ĕ�4 ���4ӷ
�%}�E1�6�4��)l�K=�S�:.
�����ԣ�7���cXlY�tP*��Y%�uIt1aXCGR �y��w$} ���MF5�#��+hإ�*J������q�8M[��{���Y��hC?�/�����`�y��!���"�lr�fe=���w�m?z�ы��V�W~뛱�.���~��4�Z�?���O�R�ǯ$a�1wA�^��2G���'���g4���M��B�������4��G'`�e�RdU�/	+s&[�0���<"���_g�0?���[��Ł_">ϹZ�!`�쏁=|òEdɹ-Y�(�j�>`uvI��nnc7���Țk:z�	A5xd$�螷T&ǖ�s�>���0u���l�_�H��֕,�a��.��~؀ӢwG��AE$���ZV��v�K�O8q��DG��?h�R������ب~bX���l�X�P�R�!By�����蟐H�r���x|�2�ZL�y��ze$�,�S ]E����z��
Cȓ��J'
�Ғ�N����!߼@��4F�O��!�oۤ�6����Zi���`=���~s�`�yWm_����4}�����7��΀6�+���c��A��5V��$�$#�����A_Y�����F)�E��/�CA�"��4�X�p��$�yz�ߦ�_���g��7��N��&���P��M�D�7�t�Ҫ9��q��f*�s�#������,�?0�e      s   4  x��Zێ�ȑ}N~E>�IU�L&o
���`c��_XKE�D�y�v���D䍒X�c`�Q7�%��9'"���<_���/��>�/���˷���f�q��(�s7��=��������ɷ�Н���d?�;�ڽ��q����)����J�U�O�PU�h�[}oΗf�y��8,�/5�LE��f9�ؐ|k�S�̲o;y�˳���.��"JK��>+i�,��,\���L��E������T.r%p�gZCc��Ǭ�*��Z�Ą5���/��O��i_�ﭨK1u�l.�,��o�6���V���^g���$k}o橹^m����ej���������؊J��nnZ9��k���p�f��;�.�< �ˡ{]&yn��5r�����˱��
Q�Zj�7zorQ�4)|�OK3"����嫻֩{Qi*t-.�2"�6��{\d�����{Cnm&.͹�����e��L��I�25{U���H����7�ȷ�i�"#8����݀���s�ݹ�\�;
ȱsߺXS�	^yM�Vy�T۱�%�	�*%��u�� I?�1_&���I�.H!���,�po��Bi^_�Qh --T!�Y��nu^l���(�ہ�x���)ޅd�F��>C��P�J�^]���F��m��Ќ�ݎ��۾mz���萓~��"%�����k#�J�P�������䫾��G{�E�uǝ<����$�a�'@�� ա�;��׵D9��8���:��h_��몮ܾ�}3��k��xo$�Ҝz���W�6C�e�4z4�D6��+��s]'*�U�6��P��G�ڡ*�J���̓�����i]�����<;Hn9��T/'Qg��od!@�A�d�w �?-c󊲥�MS��H�'�R��to*aJ "�	 ��Y*@���BDy�wڪ᠍�������@��ڒk+��ZP
�KQ�E�~�c�.�y��G-b�ZV|�����_y���;,���	�']Ry��E�'�|Hh���E����0�؞��V*�
p���NU=��U�S<��(hG�*W]���L�r��%�
Gr�ӹ�=<����K*�Wi��#���h?	�π�4O���D��u�*qP@��H}��1?��xM��T�ܚ�Zm���[�JX�Ed�E\Y�OA{á#�p_�Q�rRsS t ]��ІB|Q�6A��)��B%���ى�C�T��n�i�0:���� �Pī�41עTX�|t��o/�<-��H�`���
+��8Lh��P�߻���5��x�c}A�ѿ/�b�Zy\p��^�C�V����|n.�adGAJ��/�	'{5F�j�p6l�����X���:�o�J~#D��s;�p��A
�!~]�Щ�S�򍯛�I�p�IL��:&��9�c3�R'�f?1�T��hއ��raR1.�t�̠��46������MbG`��p�*���Ln�y� �փ��]��\Y�|@�S!b.X�TT�I��o����Ani�5�Q��"�Ԧ�����$_u���ƭGb��3��T�>.kS"4�A#�����7 ��u�.d'�tp%:�%�ZΠ�C;0L��68Bj8�>�h�E�d��W�K���/�ڴ0Q 'n����l��(Y���n^���4�CHuW$O@@�B�W�����V�ѥ[��fY-���Y�%�u9�l_��؅j@ &��rtGIVl�M4�R���>˿�H��cTZ$��qβ=:������7�mmCU	^� ���z�n$I���W;[� #�GH�F��t+��-���SY��*��ۣoEX����X�E��&�B]ֿ�M/�1wpPIK������/�$+��e�$&�B0�ʕ)���[�(���a�;K$8��������eJ^։	D��6ɩ(
EO�}P�h$���7t\&t�7��(	����#�_Ǧ�ȹ{�8�(XO�_s繏BaH� ��Ҡ-�>+�a)a�KJ��U�ũDI�eq�NB��d��)J��=�'4��\^.���]��G<ZJ�M�b�,1���K]�cG�τ�D�`�������`:�us\���?Z��o#~�Q	;S�0�q��}k��#~��.�٧�p�l�-  JA��T�X����^�Z8���<ML,���^y�?��Pj�ِ�9�Ks��ΰ]Ub� �?�e^^�U��0e-�ٛ�#ќl �:�s {j�7�>1K�tۙ�/]�{:bYr����sF�&�������9���4I�6�;��ڜZP�����#�e.~�rb�Wk4UDlD��(�4�C��@���M�v��ns��������,�F(.q��z��$_9���2)�Q �n.�,��|c��4GC�U�J���&0IEz���r�1-XAQ���;q�1�*��Y��%rt�4Х_ǡ���.���?�1�(4��Ƨ�n����I�S�P��n�ʢ#A�an���GO���u���o#7ɭ(2a]���Ӱ�MuJ��C�O�i��n���������i3�U%��wl��n��zA�蘑��h��;|��/�5+:����r%E��*�D�P�{jg�����r�7��j����Й\%�z��$��/�6�c.��$:�<z�jz����~$<��Tr,���<�Y^�4Q��V�v~;w���V�!�s����p^�k�!��\(�8�h��<)�=��k*�Ơ����R��4ʀ.�mN��{h���iSh�C�X@4�Ӭ�0,�vA��Ov��<M=�ѿ��N��T?<�D@$֤7k�n%d������y5�&%���,�+���4��h��.[W��� e(25
8I���wͰ���T�@�R@��ZԵJ����#�w� W�{�i��~�� N�y�P^�ڄU\|MӨ|���,���`(g��	؎J�I�ݵ-ZO�pϟ̼�p��ފ=W�WI��XkMz4����Ν�	ٙL��1��,)Ͷ&��zYZ.aXˏ�|]�f�	Վ:JO�~\@6�7�cEH�W��L�O^Ѽ���7�ffԭ�v
��t�A�|c�E�Ͷ����7��� ��pO<�I����+	�f_T�b?�N��pO��9n��"АA���|�l�_�A�R��h�4�+�Bf�[�ֽ�D�
1u��f�u����@3�b��{.��d犎͔�b�O�շ�v�~��!�J�}��^�I��Q{U��<�C7���� �Ѝe�J%U��Ǯ�?@�dd��p2��v5���tȚ��k�
+�P÷ �d ���j�07߆���z�T�%��E��/���ZT)66ۂ��Ɂ����fib#O�j����$�@͛v��#�˼��RI�d����ʷ��`]��=#%۹�Ԩ��zJ��-�sO�T4
@��ӻW?��q'�^��c)���S�S���7oE�~�����c����
;d�fi��	��IX��I1�aQ|�1t�[���6nr�Uu�U7�|�j��@����M0�2?]`�1�%M��1 v��#�L�`�!�h5�&���ФN�eR���~��ct4�5�$y���40�I�(����DL�S����$��K���Ӏ�x����CI[��{���gx���� ���0��ka�fʲ�_����'��N��ڧk:	�G�g��%Q<M3ܭ:����m[)2��sG�i����� LƦ9|��'�0����y���{MzaԂ{�V�ox�����0���}�%5��q�rہQ�F)e��s�2�Ju�8����s��ؚZ�W����.Ē�����?�Q%ut��wm1��G,����ċ)Nx+"#z�K��X�~��n��v]�}��I��꓂W~�S�S$������B��L�����UCG�ǉO�5�$C]qiT��$I�����      b   I   x�3�بp��¾[.��ta���/칰��(saPb�mv �{.l�2�^�*�sa/�\�  1'      f      x�3估��.#�{/l������� j��      y     x�MV٭�0���H���+����XRI� �|� Y�H�Zl+ы��O��8[;E���z���az��ҫ�Պ�WT�Q�����Q�"ײ�2j�@�#=*���ʈ�C�l���4��U�*#_���@�?b���?��Gk����zW��ϵv6��La�O��L��gU)���u'���Cک�t��e0<t�eq����UE"�^�.��ۡ�Tcc
���/��dmU����W�
' 2N�sB��.=~���w/�Ѷ'a����Pz�Y��l�꼲]W�e����+��@�h�M���8�Y��j�)�80��6�x�a����huv�����l=m�2I0L��Ā'ȹN9セ�]�<�g�@F�VF0,/�A��i��^2���8�X`��7*��K�<�%����V�����;��9�� ��Η���j�M���ʐ�h,�V=�w�P�A3���L���ѕC��#�W�z1��4ֈ���w�@1�T��G�$� ��(*r��e/6ϞWk�������LVq�c�Lr�{Oj+��|IBj�+{���P&�3y��<�hߠ���g{�Ϩﳯyuj n�p�I��]{%*�� u��c��S������g�����2��DҐpm����uQ�xAb�p[5V�g��
�ӾU*��l<��Ћ�B@�і�@X���*;�g7PMH���J*��:+���ב:g2��Q���Q~*��0��y�}�$�y/���$��A�*\�6l f�m��^B4>S���r`M(�@6@+��ВIq����RYl�Y��$�6+�V��#m�Ƹ�ȦW>���H#��z�p�JX��z�F}軸�IB4�;#���fҌ�ΣB�a��}��>���[׾5nEP	{�U��E�t�l}U@�i�k���"y�T�5?���\���EŲ��2]�Lv&�r5����ư�DA*����	����쬍�.�$Q 8b���6h���{y�2O�����)�1���1���|�+�O�w �A�
A���s�y�� *x���&!=�w�����
y+.]���ՙ��#�녃��$Tvb�|mGi�YS���V׆�bt�M��7� �eG�p>�(�����a46hs��_��0l���\�=<EO� Qr��EA+��~�|�9�9�r��RS>���ϐI��#��oU�W���w�=�
��A[�d��__#j�Yߥk�H��c�/ڬ��h�����ލ�m�� ��BQ��|�N���Q�z��
3�",�]��mD���RT�2ʮ[��ٸ��Wk����      {   .   x�3估�¾[�䎋�6\ثqa�&�煽�*`������ �~ 4      }   �
  x�mX�r�8|.����{��Z^�Nľ@$܍I���l��7�}�[��"d��#+3�������ѻa������b������0�i�^���]���Lj���,q��4yz�����	��Wi����&�$�ک�J�9c�(���Y����a�����ѿڍiNC�c�7dK�RI'4}������<�y�9t�2�ڦy}v3UfN�Jz=��4��#K�~3�s�V��*�DE������C�(���o�<�i=Ҥ�*[eJj#,}	���a����¥icz��۔�\Ud�+���O3}K���:߄�ϯbӥ��O8���D����R�46��.ufum�,��?Ɖ��e��8�o�����j�Ҧkʘ�r�
)��=�}�3�-�ݴ�y��*xQpD#�
}u�˜T�Kq�Oo}�m���Ok��a��i��3c����%}Z�����a����.��'�Zg-R�;��z���M�S��Ā���JHC߷!�i���C�!��r�d�M�U�CXR
Y�m<�t�mlΤ_�36d&�D��U+!-��4�n`7��y��84� ����R��/�{��C�O��㳜oY�/�Em������9Z�C��\�c*�T����ڪ����.�=vq�P���GtÜ�i��W}E��2�ń%�#�����������MD���k�a�D`��<^�R�RB)���"�`��s�4s�2pP�"��m04��;���h[��bn*Z���>^A�;���
�f���#2��S��0B�X�9:O�
]Wdu���g�Z�t��DH��3]H�d�PR�
4��=�лa�|�s��pqˡ-pn��"h��f��c��h��J��U�ʭd�q���-��O%<�u(��Q�ҁ!*Q���Q�7a� �]�T8�O���������̔�@N�VR�}�w[t��o@�7�s��D�B#~�D)��k��@_ӌy���)�F�܀~�UY���R���޷@@J�I p���(c ���b�h�3%�3�"�� ܟ��S~I�Pj�i퐚�o���[L�26[¬�Ϝw�u��)Q��dRb"K��=�1.������,h+�@+����X+ʊ�>rkcפ�����!tᒙu]f�X����G\Eo��0єZ�Pk�b~Ьx2���e-J��z��~���>������,*����q����v߃�C:� Ӳ@�*�������b.N<B3Z��,|�re�Ȕ�Jh	L�#�����!�9Oܩd|���
3�!+�� ���#�r���k������%����u� ��B~�q�<p�R]ڬ�]-��;���A�a��kTϬگ�i�Z��0ehPƀ޽ň��8�?zss�$�s
�j4_WP��/n��.U7���*�MhK�u�~5����B/���A�pdl� ���$݋���H������={��e����p?�,s�N2Y�OOY�N��>�}봅|�Oݻ�6E��j+[��vX�z�3��\�E+TZ�����9�J�t���Vb~6%F�?�������2��b���R�*+
S
�鏐���88�y!�<Z%,�1�/x_ ��oYW�>�)ۊ��(a`'����U�;@q��/T�H�r K�C�#��& ���̖��;[XLհ���~�r��t�C��'��e%��62+d��k.��� ���|�VJ]�����O��/��9z���g��p��<q�?>�K�����*N�ZP�J��F�eT���N�5�<�����_��F��At%���2�#}��U�O�9�@U�
��z�0�M�-#c��?� ���P�ѡ�}�S��߭�)�kь�9g�T�Ɋ��[���W���N�}��
��i4O[�0,}�XXu����/�U�����8�-�*���2`�`�}s�e͖�Daj����Z�4mi 1��ck�0������1��-�-~5�]VEE�
Kɪ�
+�MA�_����"5ǐ���~[����Zu����dxô�;�{lP.f�#��'1JZXP�G�SǶ���#�"\���Ŭ@�,o��z�DTj��ܾ��aO֬�-��~e��F������)�x�m������� Ru��GwuE�l'h�ւ��Ppjs�6uh�3��
X쑎��B�q�I=rEﱎ�Ƿ_9U��.�H����&�mo�&`3���CL�dx�xk�0����!&��B�^�Lx������mG�m!��R=����� F���^���۪�ZV8��=|T���{^�O�0�9Vϻ��T5,������f!�p� �ϼ`ޤe�a���f+>W�}~�V��΀$�D�G ��%������	9T�)>��y�$����U����=�3�ʲj+O�b�ּ*+x3�ت��C�?�7���0� +�/}h�X�N&'H������������7^���Uc`�U�E]�m��mVU���hZ̅��4�R�D-ّ�6��y��ihN����M���᝵��V'q9p) �RYʰ��u�y3��P���a�Ϻ��qhb��9��W�<`ɭ+��5���n��Q�`:*��hH��P�>��4>�?�B3C�iP	h-�usx�	ҜY�9�+�C]�@p���cl�t��qX䀋��/Ӷg���J?!�'�-#7렷W�b��]�RԎ��Ġ�#�/�l�\��SC�}�L�ay�_��K�}��8�,��H�a����M�tXZ��oٷ�R�;B�;NN      �   �  x��X�n�8<�_��]:6z�Ԡ0}�S��lhɒ���'7�U.LM7��"�/���%�Y�
�,ؤ�f��Ӥ�9��C<��y\x�:,*Xi/f��Z�|?�M��a61�}����73�Y�a0�.��/F	u�W�������!F�3����6^�&��v����_���^�e0�E��.j8�"�AA�i��n�(no�II�CL�m��g�aU㏠�Q�}Lr��3!�ݨ���F޲��G� �ޱ�����AP R0��5�M�84á���~�8`_G9�]<�fE���oM���NTC%ĻnbѷW���WV�"��z�����ׂ�95������񙂙m��`_�ޅ�C��9�ۦ��]{�iRˡ(��XI��]�-�;���ħW��!��k�T~G�FBΊ�jXy�=��>m+2_�>21�ˎ�C��QI&��ԇTx�e]KW24J<^妎Mf�E�RuG˟r�舙�M
՝��(n���a�B��M���=��1��������|�d��3���@㑊�tH����/n�\F��>�&���#�a1v�]5x�	�3�	���+�]21� �E�f H��5%�� ɋ�U����jQ�<T�;!��	]^ �elW�l{�CFmB����A/w^Ԭ�c>�o��DY�z4XfuD8W�r#�(���xѰ����������9h�Z�zY�:�x��2���wx��#s��	c�l$�Hr�X��Ϲ��60��9��\N���� L��SZ0=K[ �ST�!#@�'J��\mS�7����$�f�l���Pߜ����2?�̪�{L�%&@��|�wm�f�v�%�ԳS�<����/�_�2z���a5?�R��ۈfp
��r���Q^BQ\$.Հ+R��Pb����U�*�z�d3�B�ק�߇�R�	Э��&zђ�к*��Th��Y�Jd	n�ˆ�e���w*�c��D��8*b�vH�����z����RByT�<"��r�ԙ����I���l��m���G�*)''ԭ��t	��Px۬P^��$)�?{�j��ǡ�+��N�p���@���󗣰�5�}觜�m��:�.f��)B�����09D�\N���>d 2��\ɫ�u�[��Vv��a�4UB�O��}%s-��n:��r��8���@���JXcNFɑ�1��0��&��l,�\�E��ߴ��/]��D��k`�����0��N�5��}��,�i]�6��a���V�ùU�/,�t���ٱj���*I�ԼF�񀁴r�bC�a�,�V�1�+�HbΒ�4�`��3��B��0�]D���7�~d;lErs�� g�ȉ?�~�h�l�nzf��Y�2�+����C��k���MM+���D�D�J�ɯ�1��*�IX�{��]��܋��%r�{����$�C@�l%s��MC��r�PM;`C1eH�J�!w���-���4~��������.�]��z�D���q���F@���q���$���-�5��tS��a����-֖I�B�y�3��t�rH�V��.��� \wQ'�JMc!;���+]g�!$_�oG��m�/�n#w������%k��Y����37�����Zr�q�!���݉�7*xy_�w�)�ZP�M�6���/�w�xe�u�����.�_Yi��:���Ң�h�(a����]X^�⹮zaR��
ֳp]	���E��:��tBwZ{I�����Ι=r�t�_��O}9n�����4�;p�k�&CZ��[��no>�p�lUA�3�ڰ E�����;�;�wY�$���� ^���.������f��ӛ(U�D�]�n��gO��H8Xѥ[ays�
*�nZ�/Xܸ{�
��uJ�!}��d]�`}ź����q��U��]�^&����@����Xm�ù�"�09I�{�ߡcw&��z��oh�@�����XA̯h�y��q���m������Y      j      x��[Ɏ#�=G~E~@�h��Ѱl@�5�!H'_��ROdUK�{ǚ�$�ؤtٵd������s��e�|�ԅ?��P�җ}�CyN���+��:V3�s[V]U���q3x�>����1�ʙ�[UWe�_�������Ay���>
_����N�{����`�f����n�-\�v�����p����8��]�U��2|]�ܜ����_��Gy ��C��������Oe����� \:|�95��B��s�684uW���֧�C�K|��Cpwu��薰_�/Cw��c��W�*���em��5�T5�����h�S�c�z���O%�����Y�-��v�����N'܃,�:��s:�������.D�����D�������?�>�3>����%��]�un�-��>��P��n\J_�v�WU��?ޖ�F��P�|Ңt���,�f��vŸ4���g@�1�c���m�qC�vn����ew@g���#َ6�Qd�5l�����p�m��%^S০}��xG���ƈ��o���������K���!�?7^���D����v�2�%ƪN}U���~o�m�����7���+�5H.�-�ߒ7�7�Ќ���r"�<j˃<A���olU��<��� �P�n�9�l��&o�����i�3����1�g(~�&�d�-�����~Ah5���åb�W�G�[	��s@ᰛ���r@6�9�.C_�Y��Ր���V��)B?C�=#�5��kk�k���$�
�\�@�>@$��9:^��9����=��.��*�C�����\� A���4���EC�Q]���H�I���r&t,"`�g��F������n#��Q�����[�ހˈx]��O�j4�!�ľ�W��d�������0_A8���ju)�CT�p����ȦUG�����
��S��WpСA��li��l�s�8��{u���
��������T����>�����)�c����+�b���G#`穈8V��g ��uQR�jc�}P�ߖ/��]�A�[�s�x�nW��Te�IFd�8� QD�Iֵg�}|+^P��R�!hY���!r` ��l��װJ��SZBؚ�����:�ߪ����V$@�K�U���=�6�~�(��o`9 ��Dd0�Eb�B�Ņ[\�#�fw�m���l����;"n��W�����0�R�f�Fl����)��Ԫ���(L��AJ�db�_���МIB^�P���J���/���M% 1U�"\�g��,�$Hi�`�NѦ&���#�L@�t�=��� �t6YM20���!�G�uU",�#�{���D�*��Y`9Y^�p���$
��/T#/5�3\\�Uc��X�����ʎ�R� �o�,�0$�b��t��Z:,��y�������Qt��ϒ��?l��H�Na	d�	���$,~Ke�����g�h��h���K��*�/�b�$n�����ѷlG%Bm|<�tbd<q��p���g��\?"�l-&_��)����b���Sm���a���l$�3�(�K�.Vģ(�Ds�s^:���SD�k��zU\�r.\�YPW���"�1>#��-ְ^��@���D۪,,�2�Ax�n�������<����*����ʞ":�b�ow������oG5�#)��Nk����4+鐼$�+��s�1�e+�F�/�6W�	$�(�!�}�ّ#k$���V!Ⱦ�{�Sq^Fq"a��3��c�����	���^���o��\|���D��Kfa��4�~��@^쭷�U(ƕTZ�H����JuE�b�؊���M'.���71|JR+�>uFtg����gĳ�-���3݋iZ��S�>���p��c⚁r����s�Ybe�����,�&��*�u1�9|{]��jT�=7�P�+m�&�[� �&FϠSY&\��g��
1�L��W�@ұ�R�p�4ZN���r����?�R��t��3x����w�m&K6�_���~����6�VL������j��f<^)~'��?�J�%�m�6>8@�VM}
�F�0A�rG��"�&��W��&#<��l��+lO5$��c�e3�na0a��5O�:�r�����(4ehc-��3�dNH���O�d��@�i7&�K<��q�r	�H�	nm
�J_2���[�a7�_�"���S�/�?(���BP��Kz��E�[\�Po�82B�t_��D��r����`�p�@�[-i�cm#ڛ)VyH���HHjR�ٶ���CS�����ƱAF�o���
�T�=S���b)��Y;����	J�j�7���hK��� �qV�ڀ���1QJ�\S��f�*5Zd�O�|�,��0���́�yś�Y`%)S�ʑsa������7���d���,�Ov^�p���XԽh/ �(2�[��I[p�J��V:NB�o$D����xO�3�	QH�L���!ʭ��Y�ͦ�	�W�Yw�	���Ӵ�r�rOS[���!q�o������~��BN��T:�����Lj��Y'an5�Qc�t1�P$c�M���[/`7�
M4���Se�m�Vj%1wR�Z�'�h�$H��q��2m?��vH��:"�H�~IM�H�����ۦʠ���*����l�aEG���޼	��'��f��Ԛ�z�5įr��#�0qpi� f��䣽)�	�c�ƩdC�pI�+mcy��N�y�zC]�;r� "�����ƒ	E8@\�%�~�zKG;���
/Z����[�H�%�R�L͌���HX�&}��{@�?5��:2"a�d� S����F�0N��	�A)"5�r��Hm�:/�>�p�9�N!7��+ ���E����n���ݛp�@7UYK��X��L��_�jF/�f	@�@D���U	�������pCO��kŜWRR�:��<=��"�����$�Li���	2d-��9,������3<}t��GHS�Oe2��!���K�f(41=$���S@hg�@�f�%f=��mm�f"-�������la�������3@���"ֹ��ֲ=FJ��%v�
��Z�bڡ�,��ؒ�� 5�sR�H�1r�û&8��2Iv�q��%�U�v��i!6q�=<>T~i:�*r�S�)Y5R|'*}�ʊCnu�X�޹�`��eTI�<6�2H�D�S�<)��� ��� n;��Q\J:-��`є�J�kC��z�(0M*]ᯕBbO�!$��	V��J-A�?6_���m9b�t���>q� zq�ͣ��V0-�qQ�麽]�,���4�&��e��,4�l}h���_�5H�+����y5�]��-���3xW�:��_���p<�q��&I����N�mQ�h�cд�Cc���!_jQ��{�v�����qUS����ȣ��gh9~R��� T6�;R��Nrr����k:B]�X���e��+o�G�BA��Z�-V��r�y��!�B�����q������>���F�S1�0�ڛ�چ��)
"���~�ذ�}�m���z9*{i�RȺ�dŭ<�T�W�����R_��s���Nr��Y�G��X\[�G�4 `r2Ǘ��p;��Ox#�b������86L���U��qgn��3����l�����	{�~.N�ڣ�8n$�P�$�N��vkf�r�e�c��%�͹�U�DsL�+I֞6��״S�lɦ}G��v��dUF0��G�&�7���ݖB��.-�� ?��=�W��_�`ܞ���X~s$�v�?���3�Z�2�(1����)#����>"+������8>�v֋�λ�)��u�Fj��vp5b�Ӊ|$�Op[i��Ÿ��6��R~��0��p�O>���r	w��g����!=sA��F"�h��nzB��YM9�a�z���t��(��g�㏑���@�6w+�a��9��1$mv�����)Stg�3��G9���?֦Sbb�ئ �   ��4<4�6���Y��M��|�x`5��;�\hGY9�&��)�n�Ńoe5�Ғ"q��¯Z�W�4��xxL@����ta��7�&� `�� ��Q �#����4�.��t�������^"�"�a��@(f��tYL\��H�h+%�kYc���`��}b�21�Ik�멄���ǈ,�!QG╏��2"fU���#7{�#��3��6^.��	�ss��������3s��H)�t            x��\ێ�H�}N~?@.0y��=3@��^4v���V�6�TK����='"2��*�����a�$132.眈,��ƕEY}(�e���W�jp�9�t�ϟ��q�O�;��鶌��O��C���>}���w��t[N��.�����_�?��CQ�������_h?�"/�5_f��;�?��./�}���ލ�|<�,�=�:w���������O�΅�.����2��q9�/�]~^��ŕ��<.3~2��tzZn��r�o�t�����ߗ��t~�o�)�����}�=��䷝��}�\S�ɺ����M�n�����hƢ��eV�~�7{1��7���n����_��>\��)_���喟/�|:ϧ�p9�.�7��C�o4�xrO��>��glyz���r�8�,��r=�\(�.��h������g�	���e�w\�^�>��x��}>���|��ϟ�)�/�'n�׳�Q%�}�O�M��*(v\�}���wq�%���Ű�����9���|�o8����m���	���s�����x��G����x��4�.�K�}�rxɧ�0�ŷ̓{q�~�T\e��������Ezs��nߴ��tr�9�����.�#��y���j>��pp��8]����x�x��U��g�ݱ�^y��N\���?e��}�p`��NB�ʱ(<�2�ZY8��&/���!IϠ���y���v5��=-W<|<��]n0���^�d���<���~~� �a��#��Ӵ|�G���ӣ<ț[Ӯ����6w�t�|��U�u��mC�&�;jy*�bq,(��1]o~ttާ�qr���~p<��V�M�+�}�{qd��}����f��+}?��p�����3���3��t��	����ton���yb�]�����s�q90j�Vq�}�����7���4�]���0ߗG��8#&���q��0t�>_ǯ32��"�{����.�{>����7�e��3-�1�%�]�6�l��lpmaGY���=��U����q:�yt��I�y�E�|��{��[9A��G����K�0:��ް�TM��ro����2�Kh<�N��W>����V�k��,�ƺ���͏;����i\v<]������u�y�j�L����[xy�H��莵J=��^�#�\���� ZW� U��v:\P��3IJ�����e�K��1�}ɰ�a�P P�v�Zh�}����u�;VQ,,����w�Jj�/���r�N���<\�pp
g��	n�r�����t9�>Ӄ�>U]�;f�����-��{C���E^��?t#C���҂�3vV�����n�f�\��+�{�co1�����b	�UE$��W���0O-�j��"��j��u�Y��?B4���:Y�0-Z�I��m�W�����C���4��c�W\���&,Tn�O@.�e���&�S�.���9�������xh�8�Ƿ~t�}���`��l�Z�_glN�$�L�O���<i�X�>�l����J�@J��T(X]��^��[�X#!���x����t�;��>K^�`�E8NJ���������3R�� ڭ�Mx��R�̔�7��a��WX�/,��!���}������q5�R|t�i!�~Y� 6�+�~p�#�1���BB]� ;�d���(�P�]@���P��ϰ���	��,���(*Fs
o��d�E� n���߻���V�ē���m&�^=�U%���'�ʻ�b�,A��;��)MLe��ꅣE�#��6�@\]��DAG���Z�_�pL[v�p&Ǉ�2J���4�t��r�����I��o��,}y�Q�3�hV�� �:��l�z���+Zq�?~Y�2��w�3�¬2�W�]n�5�W3E�d��+��#��b���QW�A��m��|hl��R8~[��+|��:# n��5)��@B�%�./t��Ί&�S@����Z�Ud�j2�����vό�*%^*6T��v����yU�1�`(n�*�Rʀ��־�GY���$&�κRD�x�%��\�Jzg�`���/?��B"��d#��G��*8��*�έ7,^
QA�Y%��oGu+���%a������⸊a���0݈��6s�h�d�P�BAOQ ��Z��ћ~��=�_B�V�6<;8cc@��IcS%�`ǵ�>� A �vP�X閁N�戁h����eH��S�n��'i��CQ�q}��-�(C�4��\ߖ���_GDY��f17TIo�Ʋ'y�q�������6��%�Y,��D�Zp�pJ��c:F�,�i���$\7�g�����^����������uAg�~p��7������a�Ey�v�U?�����B�iAg��d���}�+�k�X��E�@�	���y�>C���"�M*������u�R�R�AW�1�E��C��;���*�8��(t�Ƙpn�g�E�D3@����EC��M�u����	���k���jӑn(RRjd�7ĴI�3��@�ϑYR%{3�^F�d#)�rnHT� r�׹����dY��K%�w�U�Ű��d|��{-@yg��(�Bs*.iuW��\��4��l9 �0�k�Uk��l�R��t����sC�
�g~��H�:T5d��!�jK]@�H�o�OS���)�X�0"b����b�V.f�?�^x�&%U�z֩��ϸ�*i�1��w������/�!@�ArGI�Y��k�7j�4x|�.��+���
ox��9�#�XG��O�2���Y��h
a�0ĵ:���A���PZ̺!��T����%	�̣�B��
��uw�u�Цv�ݍG���.�uGѦcq�u�����'�B�эd$�xS~&�-/
B����h���-_�j�04�+�5O�TE�� B������l@�uP���$.W�f@Q{C�PI|waË�-} .�5�]Qu%�n(�+I�	Z�%[EZҗ/�Fi�m�BhM(=0]����q�П)ĩ:��o2�z�x%e�V��ƉTa)@�]H��+%��@brq�6Jd�ʲ��vJ�[F�l�;W�1pٺ?(��
1s/ZF�aC���$D�da��Y7~��'�w]��[gUT;Iުa-�͐����LܨZ��i5��Nȃ�t��#�_�W�r5Ĩ�kL�T�v������u��
�l��5X�ȿC���x6�'i60W�V�LU)�c�,BsRDm�� T�� @d��<��>�^�u�<�]	0t�P�B�E8�H5��f�Z/�'aEj%�hL�Рך滘J��+�:b^U��IS������m�P�b�����~b�
�\��^�w�ǮDj�a"p��y��P� v��Uk1���Km�Y�A�p�`�s�~��+�p��b��&��!�a�i�s��S�_�5h������ŋo-�H����J��P.3F� ��n�]���[P���d�2m)�e��&CΫ�T� Q�w�ɧ��"��MZN���fC�L�F�H�5�B�8Y��S����z+s��K"��3NO�qkLgl��&��䂔b��μC�r����FV]f�,x�HGهl�!��TU|-tX��>c�9�Œg@�_?�h�-bxU7��)�z�f�!*��-����.6Ao M��ʅ��U��6NBܟ
���ۨ��_U���*��0�h�
��7��P��^��深�s��%�A�qQr����P4Vg-�&�y/�� 4�3�/m�BQ�Y=�*�ܑ<RR C�A�&�9����q�>�J�W�B�����bt�@Q7(*cV�u��p��\�M���L�����RT��R&\3�ks���BRHhq����ZFK��j3�bqc��4N�>1b�x�J"�փ��#�	�V���X���~R��������vj�r�����6�����#>�2�x�M�� g��n���
�S�d�� Bǃ�Ԙ�V78�S:�q�[�e���TN~��.1�7n]�z��������K��ݡ��{2�����e�Z�Θ��`ʕ{�;��U���X�ǝ�Di~X�m�rV5���W}/h��H����^oϮ�AkD�!߽֛� �	  J���R��]1x���A�>�V��D� 2��v�����I�P�u�Y��x��R��1�&��)����HB��	������&4ᛐ3�]�k�x:��|��w$��Mܳn����'=��k�Im�(�騀h,V���P�3  r-�����R���nX�lA��MB��P%�Ԃ�~ b�6[q)��umә�V��Ht���M�G�4�b<� ���wˡUЭLT��	��ኊ���k��RAشh_����ҳ2�֪0�,�Ld���r�A�L������đ��(����׆�y�����2�m�J��t�
�8�ʁ����y@�ao6�T�1��:�Oŝ趓i�.CtTmZ�t�T�""�jmώN��EJ�$�K��Y���)ʐ\�A��_�nI�F��)\w��$jR5��+2���	��4�f@LgYz&�ik�z��2��X��<�m �t�n+�bK	�K������������EE�1W�{�rȥ��?%��$�:Ւ^Jw���ZSz�CA�)��q}��GG:���\���zƉb��MI?�.=T{2��	��tښ�ʬm]�
���������.mH�MjY(�N��6�TD篵�������h�5�}O�Sem�&J��
'��������ʈ��Һ�=���ӈ���uV�[�;f�4{n�N�k�k��̞z6��c/\�S��a���$%	^����ˤAw��.�����of�ɰTkn3�'���Ut^��#���#�(�C���(��8���NM�d��X�������qzi'�(TY����"�e*D�:��B6�w^����&�w��~_m��ت��iO�."����p�PU�����$L�1��ey��Z�����@"ŸG��z^;�df�KÑ�v����n % qf�M{n���5ax�� h9��vV�A���Ԩ/�
w��)��Ņql3F���m���%��I֕��C&��Bn^UsW�	��)k��P[~��o�P�(OnLH�Sw�8.xW��q��W���{)��㕥w�TEhc`��X���7Ɉ��P�B�@��%6�yWs�4���V�q��O�h��mR y�,g%�ysK�L�T�WI43�����OAm�]�C

T�%_��dL�B��iҥr�X�Kǭ��^�
T8�6�@�Yi��u�6SpNXһ���+ӕQ��4�ȅ���	Z�$ (��v�ꩴ��5�UɚU�&7��o��t�+��7�]��zK�\&��̼��`	�6۬�=�lW��S%�y;��-��`n3�rƀ�X�ؽ����$������`⠊�2Ơ7�^��o�����J����R/�lc�YS-���e`摜ks�`�@m��+��Q�!�v��ؑS`�T�R# M�_��lP��6R�!I�)��T}!�������}*�}e���$LO��X�1��큆y@v%�r�'�����k�n�i��=�Q��1Z�M��C�Q҇�/�"�I1�^��Wp
��nu����' g����"vL.IFԄ�YCO|�J�xŎ�:	���ҔP#�[��v���f*i�"w�C۷��U���n��镅W���dQJ.6Q������P�	�B	����7_�x�
C���AJ�gƖTN8��]��M�/�߻���J�� �V*��I%��4A[1�C"�$ߞC0��%��r:g�����@���[2hޜ�HS��ᄺ�C�v	���kC���z�c)�]��Qtk������G
��X�5�Nv�$J�5c��	',W�A�^D�7\��DE塀� ��1����8B�����H��l��V��z쥎�))e��Z/\a�4�e����{�� ��g�n'8cʰP��F����&�]�%�I�e�fh��\1�nWؕp/�q�l`e
�n�Bˈ:�ⶒ�'���'�M�z���W��)9�os�,y�ZӪo�u�!ܛF	�yAj�5ay�[��F�H�Zutm	�1��M�4��'��*�8}����j����P�F�Dl*�*t�V[�9���[xg2�Ec?��k��&w@@a��wr�L��~�àГ4&t4)�W�P�U;W K%�.ړ��0]��e]x���J��y�� �e����:@)y����ܭ3N=�ވ�x�Z!I��A광�bv�w1�2�:M�V�2·y��m�.�[y�|X�؃�cY(8�5���m�ְJ�lN�;��XIZ�9�z�f�k+�� ��9��Q�u���]������ �k��TA�)����*�)�ś�<�B���w'�t�Hې�4�n4px��b϶f%���5Q/�rNK5���H I�H4J�@������:Y�����j��?���]� Z��5���p����u�)����g�`��K��ej���{��]hޏv���;�o.I�Qq���u�Uke�Y�C�׭&��B?ܵ^i��������q�?��r�����5��`o���&0��(6��Ʌ,k!1"=t�e���e����      u   N  x��ZɎ�]K_��[���$�
� A�,� HV��6ۥ<�rk���m�*_��Q�%)R�ruzQSs��.͊�i��>}��2u7n�哻>�ϧgV�b��K��~3wc�kΟj�T���;�wB���,�����O���v��O�����	VX]���}��K�v�^��<��i[�a>���؝��8v�m���ܵ�۱'Ɵ8�3;�w�R)U
�������y����gWh^��s5�í�ղy{�������s���g��﮸i�ûM�)3�;��`�B�r��۷����-�,��a�q��/"�j��l��N�o
��R����nX�th���Oϼ.DS���|�kuu_gO�Ś��]�w���kӔM�ƭ�Nnp㔎ukO����2�	�l�۹=P6U;�f����ե?�u��BR}Eґ��<�Vc��y��"ĎI���ˍ��8�����3���B����^��K^)��Z���H�NH��^�t��%����3c������:��|�-ּ��󲦪�N��j
�j-J�.}��!}طA��$,�jZy�z
�ԍa%�?n�v�,%��u8-ꂉⵛZ��S)�	y=l��rsñ[�=���.��:���r�Ѝ��D3,{��˹�{
��{fu]���{`��␽�K{��݈����]�	Y��,ˑ�Տ/���g�c7\����_���N4;�]hcK�S�~i_�>E��^��h�o�� ^վp)s��=���p���wS̅)�s��>׶B5и�R�/�_��o���{DB��l
�kՔLf�x�d1D�(�k�T5\P�I�C�J�y]�Ա��;�~�yt�'�j�������_Gw�p7��qVq���1 &6F욄�����}� ����C;V���6O��*��f�e��O�#��;��k�e�R/���/�y�צ�jQ/��@������ �3-��Ո@�T�no��;�X�-A3���KHk)��b�%�%�|*�,�l�һ��mlo��fi举�t;0��j��ُa��3�C_�����h?��\l>��nL9�{�C[�zZ� ��N%�� ��g��<��inѭ-U�v�i����g�@W6���U���eJ�r���4�݊���5Z�ҎcK�8�
���|���I@p�N��:�g.Z�)g�F ����`�=�����DÙ.yj���n�bs�~�x) ?|}>���(Pb�X�R�9Q�� <�~x_Z}�OI(���d�kp.w'NA2�F$�V%��s�&�.���
� mZ�T�3�pj>`��؃��m+!��7� U��_[�c��ct��j�Ep+@9u��#ι#���r�@�������D��;&\-2�� V�?���	I����#b3�7Fǅ�ԓ��}��~`Pk<��\P�d���$C�S��~MHȷgg�'-tN�V�E�����Y��KQ�EF�����^�a�Vu�q�t�4;�&0Z�R���0��l���;Q=F1�]�+e�Z��)KEejL�Q�C�)�V�1Y��yQ�)�&m#K!>�O��4r~v�M%�]ś� 8�q`S�L���?�ݚ�}aS�6�eHU��l��"H3���2hrD>,��bd ��W�2�#������.��?X^D5s� �D�oU�$@��"�z9���/U.��(K�.�&��M*!��|$�) �B?�[(�8e�U��@%�%`�'v(Ef|n�bܑt6-x����z\ �����آ��b��h�Z�SS�AV��dϰ̓Ғ�5J�(�T�XS�J-8/e��{���&V1L�;�ͼv��� ��0�XQJ�A!/��T�]f}��WR�)s��vwM���\�6V֥�2�.C]�D��~f'+�AR��>`4�S'���e"�UF����E �M��oبټ~��nR�����`��ag��������B
=V���$E'���5����
�������~\� %$�l�e����CQ�8l�L̻���*4��M��x}��8���uOD\��@[��lSޜQI�@5��Q��� z�>ID�+�L��l��t��!^�y F�_�h@F��|�HAB���.U렻.����(QXƘ��>V.ou<j'O�����6 :�7�>���$��i#�2FT������� ��0O)ݿ��DZ 2}��+���F�R�E����l��!aha��`�b���������d�/�����T�;$O��j?(�V�F��Xs' /t_@Z2_U��������6S��?���Pz���|�֦X*=D����%��������h��C
@M��nas����!��
bQ�#�X�UA�-]j@��mꗶ��d�C�����5�U@X����}E�>��nh^-i�vn����7�i!,ɼK�Lf��z(�}��n
?����nV�F�`���ܜnq�D�����1%e��[%�w�/����p�p���sJ�eff��3�N��	�}B��h(:!�C���}�X�t�D��B3#Y��_κ6?>*O�3	�U�\�tUU����,P�+Q6�Q�Dz4��(Α����q�'&��`i���l2�7R�Bp3zw�ќ%���(GO�&���~䄤i��*�,��&/3L� (��m���x��Dƈ���Z7���v=�	��q��@Û��h@^�f�������� N��5+`��h>�'�D��o)6���1�"h[�.B�MB��Q"�G�~�(��l�9���h��@�������D�ѝ!(��T��{$��,�@���j��������G�k�[%�ޝ�s��������L�hY�(��o�/���DE����|Ƽ�����+0֞��,�� ��hZ[���R�����b�呡"�GDP�$��/��r3E(�MT�g�W���H�+vl�׃]�� ��?�7o�ll|u�MOӵM\������X��I+��j|k�2���w;��y��p�Sx�*�����������˱վ8�0݅��|S����pWn!��{�ԥV����Bj�8���k���BQ�8 &���b�+��>�՜�����F�V����J��.hny�J_g���=~'����W�cPi�M�.*�L��4�2^�\�.=���l���b�@��!KU/�;@`x�䥶�~N�,l��c%�`~̦	-+8�|���6O�.�c�G){k�W�����>u�Xi ����<�0֫��$�zn)�<�� ��a��I�JhW���!y���������Q�σ��?���}�z�����NxK[�$���3U��{��4�
}�0:ɒh��G/My!b�'N���8�]G0ݔ&K��_�	v��R\D�H`���:�%!� �fT
����뿳�!�03ɵ�dg��n��Q�B��J��U�XZF,�G	��
QI�Y9̬F9%�ph��;�j���8��<��K�%� 2����d�j˕)�GOq�O}�c�3��kM=.�M��F�Ҿ����(��Ic���&��Q��~FQ+U�<&L���V�u�3v�--G�l���Y�P��g�fyL|����m�'��G�j�YU e�~���H1j�����\Mo���k����YF��KA�\��K~��5���m�Y&K�.�f�ɭ��}q��I���4��%Ć@j�Z��L ��>>��E��8W�/-�
9�S�x#J�(��@&�-ғ���J4H�ct���y]��{�,`�,ڠ����>�B�.�	c��V����A��������VjzVњsVZ�P+���K{�������e�w ��i,��R��'��v�w
��4�X��X����ǿn˲�/=���     