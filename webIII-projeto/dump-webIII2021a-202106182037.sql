PGDMP     #    %                y            webIII2021a    13.2    13.2 M    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16532    webIII2021a    DATABASE     m   CREATE DATABASE "webIII2021a" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "webIII2021a";
                postgres    false            ?            1259    33021 	   categoria    TABLE     ?   CREATE TABLE public.categoria (
    id integer DEFAULT nextval('public.categoria_id_seq'::regclass) NOT NULL,
    descricao character(100) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            ?            1259    33054    endereco    TABLE     ?   CREATE TABLE public.endereco (
    id integer NOT NULL,
    rua character(100) NOT NULL,
    numero integer NOT NULL,
    cidade character(100) NOT NULL,
    cep character(15) NOT NULL,
    estado_id integer NOT NULL
);
    DROP TABLE public.endereco;
       public         heap    postgres    false            ?            1259    33052    endereco_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.endereco_id_seq;
       public          postgres    false    212            '           0    0    endereco_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;
          public          postgres    false    211            ?            1259    33062    estado    TABLE     Z   CREATE TABLE public.estado (
    id integer NOT NULL,
    nome character(100) NOT NULL
);
    DROP TABLE public.estado;
       public         heap    postgres    false            ?            1259    33060    estado_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.estado_id_seq;
       public          postgres    false    214            (           0    0    estado_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;
          public          postgres    false    213            ?            1259    41284    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            ?            1259    41282    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221            )           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    220            ?            1259    41256 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            ?            1259    41254    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            *           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            ?            1259    41275    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            ?            1259    41298    personal_access_tokens    TABLE     ?  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            ?            1259    41296    personal_access_tokens_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    223            +           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    222            ?            1259    33036    produto    TABLE       CREATE TABLE public.produto (
    descricao character(100) NOT NULL,
    valorunitario character(100) NOT NULL,
    embalagem character(100) NOT NULL,
    estoque character(100) NOT NULL,
    categoria_id integer NOT NULL,
    id integer NOT NULL,
    imagem character(50)
);
    DROP TABLE public.produto;
       public         heap    postgres    false            ?            1259    33044    produto_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          postgres    false    209            ,           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          postgres    false    210            ?            1259    41310    sessions    TABLE     ?   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            ?            1259    41264    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    current_team_id bigint,
    profile_photo_path character varying(2048),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    two_factor_secret text,
    two_factor_recovery_codes text
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    41262    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            -           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            ?            1259    24762    usuario    TABLE     ~   CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character(100) NOT NULL,
    senha character(32) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    24760    usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    207            .           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    206            e           2604    33057    endereco id    DEFAULT     j   ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);
 :   ALTER TABLE public.endereco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            f           2604    33065 	   estado id    DEFAULT     f   ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);
 8   ALTER TABLE public.estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            i           2604    41287    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            g           2604    41259    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            k           2604    41301    personal_access_tokens id    DEFAULT     ?   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            d           2604    33046 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            h           2604    41267    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            b           2604    24765 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                      0    33021 	   categoria 
   TABLE DATA           2   COPY public.categoria (id, descricao) FROM stdin;
    public          postgres    false    208                      0    33054    endereco 
   TABLE DATA           K   COPY public.endereco (id, rua, numero, cidade, cep, estado_id) FROM stdin;
    public          postgres    false    212                      0    33062    estado 
   TABLE DATA           *   COPY public.estado (id, nome) FROM stdin;
    public          postgres    false    214                      0    41284    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221                      0    41256 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216                      0    41275    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    219                      0    41298    personal_access_tokens 
   TABLE DATA           ?   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223                      0    33036    produto 
   TABLE DATA           i   COPY public.produto (descricao, valorunitario, embalagem, estoque, categoria_id, id, imagem) FROM stdin;
    public          postgres    false    209                       0    41310    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    224                      0    41264    users 
   TABLE DATA           ?   COPY public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) FROM stdin;
    public          postgres    false    218                      0    24762    usuario 
   TABLE DATA           3   COPY public.usuario (id, email, senha) FROM stdin;
    public          postgres    false    207            /           0    0    endereco_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.endereco_id_seq', 26, true);
          public          postgres    false    211            0           0    0    estado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.estado_id_seq', 6, true);
          public          postgres    false    213            1           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    220            2           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);
          public          postgres    false    215            3           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    222            4           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produto_id_seq', 11, true);
          public          postgres    false    210            5           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    217            6           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 3, true);
          public          postgres    false    206            o           2606    33026    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    208            s           2606    33059    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public            postgres    false    212            u           2606    33067    estado estado_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    214            ~           2606    41293    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221            ?           2606    41295 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221            w           2606    41261    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            ?           2606    41306 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    223            ?           2606    41309 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    223            q           2606    33051    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    209            ?           2606    41317    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    224            y           2606    41274    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            {           2606    41272    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            m           2606    24770    usuario usuario_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (email);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    207            |           1259    41281    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    219            ?           1259    41307 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     ?   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    223    223            ?           1259    41319    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    224            ?           1259    41318    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    224            ?           2606    33039    produto cod_categoria    FK CONSTRAINT     }   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT cod_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 ?   ALTER TABLE ONLY public.produto DROP CONSTRAINT cod_categoria;
       public          postgres    false    208    2927    209            ?           2606    33077    endereco cod_estado    FK CONSTRAINT        ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT cod_estado FOREIGN KEY (estado_id) REFERENCES public.estado(id) NOT VALID;
 =   ALTER TABLE ONLY public.endereco DROP CONSTRAINT cod_estado;
       public          postgres    false    2933    212    214               O   x?34?LK,??;?095?X?f??И35/'?$1??? ?1?L/:?hI?BrjQb&?l?24?tJM?LI??w????qqq :?AF         ?   x???;?0??9E.P?<???0?0??4?"Ѥ?
??,\?t`o?`?_?ɲ5??]O??_??'?u?B?cr?m??2{?X!?7f?????N%a?7<Qt~|?
:YjJ%4?Y???[?=ق???4́??|_??GD?r[?d??????H??x?;?1,[ˢƿ??Ue????]v????         H   x?3??M,?Wp/?/.?W??2B?&%_!?4?֘r^???X?C;? ?1?H,J?;??????????? ?z@?            x?????? ? ?         ?   x?]???0F??a?:~??b??l%A'3???&Q?^?ꜞ?I+j@
??>??`?"?NNT?=H??1.>X??6??+zU?Z??c`?|??n~NY????W??>??X?}??튗ך??w???؁??XR?6?˦&??[?*U͘????۹??7?%_?            x?????? ? ?            x?????? ? ?         A  x????n?0???} cZ?
?|?s??Iv? V
B????Q?b3[?? +????s~9&k(??פ?9???:!H??!s?A??H??"?{^ ????h?u?p??*W??Y0ˋ?C?K4?'}\?[6?J?[??UU??&???3?<-???9?L??% ??䌱,U` >??[Cq?3O?^??f۟"שNb[?4Λ??r????g#Z?E$?}????-????{{?[???r??M??n????o??\ġ??4Z??'?\`N9???lL???G?? ???\^??????[??T?s?m??????????}?(?7?#?            x?=P?r?0<?_?1?ڲ%"?T?y?B?e???
ƕ?????-F?3??=?(??>???P????bO??S????_??
?? ?@<8#?Tq~\? =?չ?n?JP??%`?Y??(??/?2{???*kK????~H?jJ?.??{????k???.?(2X ???x:?W?h??_j??P[@M?%a鹟h?`??@?z?U??O FW??j?s_?А??5??^?,7	L??ڦ??bj?Sd1D"??#ZmOi;???(21?/w|?5??o̸h??dꪬ??N?3Z블?J̪w?|??E˯Ł|s??:0oo??6??2Plt?WrYf?k.{??????=n?????"?y???'H?-#S?RۯI??i݈?&???VT?LE놌'??ɤ?????y??y?1??{n[S.׼?OG??Z+9??/o???T?X?@?~s?e?????&M?????<~y?mC?"?+??ްT??[h?84?]|v??:?@??^^f#`?0????? .??T         ?   x?m?A?0 F??Wt??l??<?L(6??ZImf?V?D?ח???wx<?X?*??x?<??????
?8P?KEPvy?k?:??J????'?fM????????[??QS?	n?T2?8?c^xA?Tpw#?K':?????J???u?3?Wk??u???:????0?h?12GX??a??_?????(?ɚ:?         C   x?3?LL???sH?M???K??U??L54HLI6?4?LJ4?LLJJ55K505O32H??0N?????? U?|      M    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16532    webIII2021a    DATABASE     m   CREATE DATABASE "webIII2021a" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "webIII2021a";
                postgres    false            ?            1259    33021 	   categoria    TABLE     ?   CREATE TABLE public.categoria (
    id integer DEFAULT nextval('public.categoria_id_seq'::regclass) NOT NULL,
    descricao character(100) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            ?            1259    33054    endereco    TABLE     ?   CREATE TABLE public.endereco (
    id integer NOT NULL,
    rua character(100) NOT NULL,
    numero integer NOT NULL,
    cidade character(100) NOT NULL,
    cep character(15) NOT NULL,
    estado_id integer NOT NULL
);
    DROP TABLE public.endereco;
       public         heap    postgres    false            ?            1259    33052    endereco_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.endereco_id_seq;
       public          postgres    false    212            '           0    0    endereco_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;
          public          postgres    false    211            ?            1259    33062    estado    TABLE     Z   CREATE TABLE public.estado (
    id integer NOT NULL,
    nome character(100) NOT NULL
);
    DROP TABLE public.estado;
       public         heap    postgres    false            ?            1259    33060    estado_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.estado_id_seq;
       public          postgres    false    214            (           0    0    estado_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;
          public          postgres    false    213            ?            1259    41284    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            ?            1259    41282    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221            )           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    220            ?            1259    41256 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            ?            1259    41254    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            *           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            ?            1259    41275    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            ?            1259    41298    personal_access_tokens    TABLE     ?  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            ?            1259    41296    personal_access_tokens_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    223            +           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    222            ?            1259    33036    produto    TABLE       CREATE TABLE public.produto (
    descricao character(100) NOT NULL,
    valorunitario character(100) NOT NULL,
    embalagem character(100) NOT NULL,
    estoque character(100) NOT NULL,
    categoria_id integer NOT NULL,
    id integer NOT NULL,
    imagem character(50)
);
    DROP TABLE public.produto;
       public         heap    postgres    false            ?            1259    33044    produto_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          postgres    false    209            ,           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          postgres    false    210            ?            1259    41310    sessions    TABLE     ?   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            ?            1259    41264    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    current_team_id bigint,
    profile_photo_path character varying(2048),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    two_factor_secret text,
    two_factor_recovery_codes text
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    41262    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            -           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            ?            1259    24762    usuario    TABLE     ~   CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character(100) NOT NULL,
    senha character(32) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    24760    usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    207            .           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    206            e           2604    33057    endereco id    DEFAULT     j   ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);
 :   ALTER TABLE public.endereco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            f           2604    33065 	   estado id    DEFAULT     f   ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);
 8   ALTER TABLE public.estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            i           2604    41287    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            g           2604    41259    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            k           2604    41301    personal_access_tokens id    DEFAULT     ?   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            d           2604    33046 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            h           2604    41267    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            b           2604    24765 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                      0    33021 	   categoria 
   TABLE DATA           2   COPY public.categoria (id, descricao) FROM stdin;
    public          postgres    false    208   \                 0    33054    endereco 
   TABLE DATA           K   COPY public.endereco (id, rua, numero, cidade, cep, estado_id) FROM stdin;
    public          postgres    false    212   Y                  0    33062    estado 
   TABLE DATA           *   COPY public.estado (id, nome) FROM stdin;
    public          postgres    false    214   ?                  0    41284    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221   R                  0    41256 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216                     0    41275    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    219   ?                  0    41298    personal_access_tokens 
   TABLE DATA           ?   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223                     0    33036    produto 
   TABLE DATA           i   COPY public.produto (descricao, valorunitario, embalagem, estoque, categoria_id, id, imagem) FROM stdin;
    public          postgres    false    209                      0    41310    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    224   K                 0    41264    users 
   TABLE DATA           ?   COPY public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) FROM stdin;
    public          postgres    false    218                    0    24762    usuario 
   TABLE DATA           3   COPY public.usuario (id, email, senha) FROM stdin;
    public          postgres    false    207   ?        /           0    0    endereco_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.endereco_id_seq', 26, true);
          public          postgres    false    211            0           0    0    estado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.estado_id_seq', 6, true);
          public          postgres    false    213            1           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    220            2           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);
          public          postgres    false    215            3           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    222            4           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produto_id_seq', 11, true);
          public          postgres    false    210            5           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    217            6           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 3, true);
          public          postgres    false    206            o           2606    33026    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    208            s           2606    33059    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public            postgres    false    212            u           2606    33067    estado estado_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    214            ~           2606    41293    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221            ?           2606    41295 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221            w           2606    41261    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            ?           2606    41306 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    223            ?           2606    41309 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    223            q           2606    33051    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    209            ?           2606    41317    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    224            y           2606    41274    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            {           2606    41272    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            m           2606    24770    usuario usuario_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (email);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    207            |           1259    41281    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    219            ?           1259    41307 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     ?   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    223    223            ?           1259    41319    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    224            ?           1259    41318    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    224            ?           2606    33039    produto cod_categoria    FK CONSTRAINT     }   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT cod_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 ?   ALTER TABLE ONLY public.produto DROP CONSTRAINT cod_categoria;
       public          postgres    false    208    2927    209            ?           2606    33077    endereco cod_estado    FK CONSTRAINT        ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT cod_estado FOREIGN KEY (estado_id) REFERENCES public.estado(id) NOT VALID;
 =   ALTER TABLE ONLY public.endereco DROP CONSTRAINT cod_estado;
       public          postgres    false    2933    212    214           