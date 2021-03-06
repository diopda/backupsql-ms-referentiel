PGDMP     #                    y            referentiel    13.2    13.2 9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16628    referentiel    DATABASE     `   CREATE DATABASE referentiel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE referentiel;
             
   macbookpro    false            ?            1259    16631    cuvette    TABLE     O  CREATE TABLE public.cuvette (
    id bigint NOT NULL,
    nbre_union bigint,
    nom character varying(255),
    president character varying(255),
    secretaireg character varying(255),
    secretairegadj character varying(255),
    superficie bigint,
    tresorier character varying(255),
    tresorier_adj character varying(255)
);
    DROP TABLE public.cuvette;
       public         heap    diop    false            ?            1259    16629    cuvette_id_seq    SEQUENCE     w   CREATE SEQUENCE public.cuvette_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cuvette_id_seq;
       public          diop    false    201                       0    0    cuvette_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cuvette_id_seq OWNED BY public.cuvette.id;
          public          diop    false    200            ?            1259    16642 
   groupement    TABLE     ?   CREATE TABLE public.groupement (
    id bigint NOT NULL,
    chef character varying(255),
    nbre_paysan bigint,
    nom character varying(255),
    superficie_att bigint,
    idsection bigint NOT NULL
);
    DROP TABLE public.groupement;
       public         heap    diop    false            ?            1259    16640    groupement_id_seq    SEQUENCE     z   CREATE SEQUENCE public.groupement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.groupement_id_seq;
       public          diop    false    203                       0    0    groupement_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.groupement_id_seq OWNED BY public.groupement.id;
          public          diop    false    202            ?            1259    16653    machine    TABLE     k  CREATE TABLE public.machine (
    id bigint NOT NULL,
    consommation_gazoil bigint,
    frais_entretien bigint,
    fraisdepanage bigint,
    id_conducteur bigint NOT NULL,
    id_cuvette bigint,
    id_union bigint,
    matricule character varying(255),
    nom character varying(255),
    recette bigint,
    saison bigint,
    type character varying(255)
);
    DROP TABLE public.machine;
       public         heap    diop    false            ?            1259    16651    machine_id_seq    SEQUENCE     w   CREATE SEQUENCE public.machine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.machine_id_seq;
       public          diop    false    205                       0    0    machine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.machine_id_seq OWNED BY public.machine.id;
          public          diop    false    204            ?            1259    24928    magasin    TABLE     ?  CREATE TABLE public.magasin (
    id bigint NOT NULL,
    nom character varying(255),
    reference character varying(255),
    reference_gestionnaire character varying(255),
    stock_herbicideg bigint,
    stock_herbicidel bigint,
    stock_herbicidep bigint,
    stock_herbicidet bigint,
    stock_herbicidew bigint,
    stock_paddyr bigint,
    stockengrais_dap bigint,
    stockengrais_uree bigint,
    stocksemence_nt bigint,
    stocksemencet bigint,
    unionproprietaire bigint
);
    DROP TABLE public.magasin;
       public         heap    diop    false            ?            1259    24926    magasin_id_seq    SEQUENCE     w   CREATE SEQUENCE public.magasin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.magasin_id_seq;
       public          diop    false    213                       0    0    magasin_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.magasin_id_seq OWNED BY public.magasin.id;
          public          diop    false    212            ?            1259    16675    section    TABLE     ?  CREATE TABLE public.section (
    id bigint NOT NULL,
    nbre_groupement bigint,
    nom character varying(255),
    president character varying(255),
    secretaireg character varying(255),
    secretaire_gadj character varying(255),
    superficie_att bigint,
    tresorier character varying(255),
    tresorier_adj character varying(255),
    vice_president character varying(255),
    id_union_local bigint NOT NULL
);
    DROP TABLE public.section;
       public         heap    diop    false            ?            1259    16673    section_id_seq    SEQUENCE     w   CREATE SEQUENCE public.section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.section_id_seq;
       public          diop    false    207                       0    0    section_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.section_id_seq OWNED BY public.section.id;
          public          diop    false    206            ?            1259    16686 
   unionlocal    TABLE     ?  CREATE TABLE public.unionlocal (
    id bigint NOT NULL,
    nbre_section bigint,
    nom character varying(255),
    president character varying(255),
    secretaireg character varying(255),
    secretaire_gadj character varying(255),
    superficie_att bigint,
    tresorier character varying(255),
    trsorier_adj character varying(255),
    vice_president character varying(255),
    idvillage bigint
);
    DROP TABLE public.unionlocal;
       public         heap    diop    false            ?            1259    16684    unionlocal_id_seq    SEQUENCE     z   CREATE SEQUENCE public.unionlocal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.unionlocal_id_seq;
       public          diop    false    209            	           0    0    unionlocal_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.unionlocal_id_seq OWNED BY public.unionlocal.id;
          public          diop    false    208            ?            1259    16697    village    TABLE     ?   CREATE TABLE public.village (
    id bigint NOT NULL,
    nom character varying(255),
    population bigint,
    population_att bigint,
    superficie_ex real,
    superficieph real,
    idcuvette bigint NOT NULL
);
    DROP TABLE public.village;
       public         heap    diop    false            ?            1259    16695    village_id_seq    SEQUENCE     w   CREATE SEQUENCE public.village_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.village_id_seq;
       public          diop    false    211            
           0    0    village_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.village_id_seq OWNED BY public.village.id;
          public          diop    false    210            U           2604    16634 
   cuvette id    DEFAULT     h   ALTER TABLE ONLY public.cuvette ALTER COLUMN id SET DEFAULT nextval('public.cuvette_id_seq'::regclass);
 9   ALTER TABLE public.cuvette ALTER COLUMN id DROP DEFAULT;
       public          diop    false    201    200    201            V           2604    16645    groupement id    DEFAULT     n   ALTER TABLE ONLY public.groupement ALTER COLUMN id SET DEFAULT nextval('public.groupement_id_seq'::regclass);
 <   ALTER TABLE public.groupement ALTER COLUMN id DROP DEFAULT;
       public          diop    false    203    202    203            W           2604    16656 
   machine id    DEFAULT     h   ALTER TABLE ONLY public.machine ALTER COLUMN id SET DEFAULT nextval('public.machine_id_seq'::regclass);
 9   ALTER TABLE public.machine ALTER COLUMN id DROP DEFAULT;
       public          diop    false    205    204    205            [           2604    24931 
   magasin id    DEFAULT     h   ALTER TABLE ONLY public.magasin ALTER COLUMN id SET DEFAULT nextval('public.magasin_id_seq'::regclass);
 9   ALTER TABLE public.magasin ALTER COLUMN id DROP DEFAULT;
       public          diop    false    212    213    213            X           2604    16678 
   section id    DEFAULT     h   ALTER TABLE ONLY public.section ALTER COLUMN id SET DEFAULT nextval('public.section_id_seq'::regclass);
 9   ALTER TABLE public.section ALTER COLUMN id DROP DEFAULT;
       public          diop    false    207    206    207            Y           2604    16689    unionlocal id    DEFAULT     n   ALTER TABLE ONLY public.unionlocal ALTER COLUMN id SET DEFAULT nextval('public.unionlocal_id_seq'::regclass);
 <   ALTER TABLE public.unionlocal ALTER COLUMN id DROP DEFAULT;
       public          diop    false    208    209    209            Z           2604    16700 
   village id    DEFAULT     h   ALTER TABLE ONLY public.village ALTER COLUMN id SET DEFAULT nextval('public.village_id_seq'::regclass);
 9   ALTER TABLE public.village ALTER COLUMN id DROP DEFAULT;
       public          diop    false    211    210    211            ?          0    16631    cuvette 
   TABLE DATA           ?   COPY public.cuvette (id, nbre_union, nom, president, secretaireg, secretairegadj, superficie, tresorier, tresorier_adj) FROM stdin;
    public          diop    false    201   ?C       ?          0    16642 
   groupement 
   TABLE DATA           [   COPY public.groupement (id, chef, nbre_paysan, nom, superficie_att, idsection) FROM stdin;
    public          diop    false    203   ?D       ?          0    16653    machine 
   TABLE DATA           ?   COPY public.machine (id, consommation_gazoil, frais_entretien, fraisdepanage, id_conducteur, id_cuvette, id_union, matricule, nom, recette, saison, type) FROM stdin;
    public          diop    false    205    E       ?          0    24928    magasin 
   TABLE DATA             COPY public.magasin (id, nom, reference, reference_gestionnaire, stock_herbicideg, stock_herbicidel, stock_herbicidep, stock_herbicidet, stock_herbicidew, stock_paddyr, stockengrais_dap, stockengrais_uree, stocksemence_nt, stocksemencet, unionproprietaire) FROM stdin;
    public          diop    false    213   ?E       ?          0    16675    section 
   TABLE DATA           ?   COPY public.section (id, nbre_groupement, nom, president, secretaireg, secretaire_gadj, superficie_att, tresorier, tresorier_adj, vice_president, id_union_local) FROM stdin;
    public          diop    false    207   YF       ?          0    16686 
   unionlocal 
   TABLE DATA           ?   COPY public.unionlocal (id, nbre_section, nom, president, secretaireg, secretaire_gadj, superficie_att, tresorier, trsorier_adj, vice_president, idvillage) FROM stdin;
    public          diop    false    209   ?F       ?          0    16697    village 
   TABLE DATA           n   COPY public.village (id, nom, population, population_att, superficie_ex, superficieph, idcuvette) FROM stdin;
    public          diop    false    211   +H                  0    0    cuvette_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cuvette_id_seq', 46, true);
          public          diop    false    200                       0    0    groupement_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.groupement_id_seq', 3, true);
          public          diop    false    202                       0    0    machine_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.machine_id_seq', 1, false);
          public          diop    false    204                       0    0    magasin_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.magasin_id_seq', 1, false);
          public          diop    false    212                       0    0    section_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.section_id_seq', 6, true);
          public          diop    false    206                       0    0    unionlocal_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.unionlocal_id_seq', 1, false);
          public          diop    false    208                       0    0    village_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.village_id_seq', 106, true);
          public          diop    false    210            ]           2606    16639    cuvette cuvette_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cuvette
    ADD CONSTRAINT cuvette_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cuvette DROP CONSTRAINT cuvette_pkey;
       public            diop    false    201            _           2606    16650    groupement groupement_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.groupement
    ADD CONSTRAINT groupement_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.groupement DROP CONSTRAINT groupement_pkey;
       public            diop    false    203            a           2606    16661    machine machine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.machine
    ADD CONSTRAINT machine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.machine DROP CONSTRAINT machine_pkey;
       public            diop    false    205            i           2606    24936    magasin magasin_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.magasin
    ADD CONSTRAINT magasin_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.magasin DROP CONSTRAINT magasin_pkey;
       public            diop    false    213            c           2606    16683    section section_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.section
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.section DROP CONSTRAINT section_pkey;
       public            diop    false    207            e           2606    16694    unionlocal unionlocal_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.unionlocal
    ADD CONSTRAINT unionlocal_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.unionlocal DROP CONSTRAINT unionlocal_pkey;
       public            diop    false    209            g           2606    16702    village village_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.village
    ADD CONSTRAINT village_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.village DROP CONSTRAINT village_pkey;
       public            diop    false    211            k           2606    16708 #   section fk7x4si2sjqo1ekq6wb39rd50ce    FK CONSTRAINT     ?   ALTER TABLE ONLY public.section
    ADD CONSTRAINT fk7x4si2sjqo1ekq6wb39rd50ce FOREIGN KEY (id_union_local) REFERENCES public.unionlocal(id);
 M   ALTER TABLE ONLY public.section DROP CONSTRAINT fk7x4si2sjqo1ekq6wb39rd50ce;
       public          diop    false    3173    207    209            j           2606    16703 &   groupement fkcfp4r6ygvy0d84jirnqswdb21    FK CONSTRAINT     ?   ALTER TABLE ONLY public.groupement
    ADD CONSTRAINT fkcfp4r6ygvy0d84jirnqswdb21 FOREIGN KEY (idsection) REFERENCES public.section(id);
 P   ALTER TABLE ONLY public.groupement DROP CONSTRAINT fkcfp4r6ygvy0d84jirnqswdb21;
       public          diop    false    3171    203    207            l           2606    16713 %   unionlocal fkjcaawijhlxfb47uifm942r0h    FK CONSTRAINT     ?   ALTER TABLE ONLY public.unionlocal
    ADD CONSTRAINT fkjcaawijhlxfb47uifm942r0h FOREIGN KEY (idvillage) REFERENCES public.village(id);
 O   ALTER TABLE ONLY public.unionlocal DROP CONSTRAINT fkjcaawijhlxfb47uifm942r0h;
       public          diop    false    209    211    3175            m           2606    16718 #   village fkkvqdetw0hp3lqa6uhbvp2899y    FK CONSTRAINT     ?   ALTER TABLE ONLY public.village
    ADD CONSTRAINT fkkvqdetw0hp3lqa6uhbvp2899y FOREIGN KEY (idcuvette) REFERENCES public.cuvette(id);
 M   ALTER TABLE ONLY public.village DROP CONSTRAINT fkkvqdetw0hp3lqa6uhbvp2899y;
       public          diop    false    211    3165    201            ?   ?   x?%?A?0D??Sp(.eA?5q??S??&P???f3?^?cx˲Ht?O????ɂ??q???,9??C,к:??0??/?.???J3????kOG?V???-??E?߆???.u	?
Ӟ/?Mݠn?,?|cz?????SJ}2?      ?   ?   x?]?1?0E??S?(?I?K ?X?I?Ё??v???{(??G!?Z?????????ne{??^??T?Ke>`???"Zjꖺ?u?v9?	/?i?&ܟ???eӡ;?e@?l?5??)?qĮ'"?<C=>      ?   ?   x?}??? ?s?0??6??????????2???ń?&F8?P~?6`"K?*'???\?(?_ϳ!??~t??9[?????6ZQSp?_?i?????)?\B???E??t?Fj?X?q(??T?Y7??k?u??8W??\~??v+D|g4D~      ?   ~   x???;?0D??a????jo@?
Q@??%???8?hF??y??ޞ???!8?n
?9CjX????ַU=(q(?Ea????? a?9$?Ш?Aàp-:???{??7??????z??`???:;\      ?   ?   x?}?=?0???>AE?K??????@??I?e?bٖ??ո#?5bX?$?^??&????0???R?I????#Sg?v2???н??>,4?;????8>?X????VM??`?3e????^???U??(??Y<??'??ySJm??U      ?     x?u??N? ?ח??	???6?t?+&?db??"?2?OC?Lx{?б&???=|έ????zíה?s8xE??K;?????K4j?5? U??p??,?B? ??9?Q^????|???X_ ??X6z-?]???jf?	j????貿??I椢W???Q???{8???=eH??	?ca7?????jc7w??VclE???~k?%]D??%ʛ??A?hT????P?sC?>&???/jG?H}?G??I?e΍?5?[gYG??ltp??*?Hu??R??????˲?      ?   ?   x?=O1n?@?y??K'?r{3]?d?rF?&hcv?|?: ? )???6?????_?Q??s? ??(8e|?ڣ-PZ????L??????? U2?
Y?j!0???
??l(,4??X?v??m{??²f
$?ǥ??o펪;dvH?+?x?=??]al??~.??))QD?+jO?M)?'j3?     