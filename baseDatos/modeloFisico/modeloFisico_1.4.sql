--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2016-12-08 16:21:05 ECT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "gp3.1";
--
-- TOC entry 2440 (class 1262 OID 2289346)
-- Name: gp3.1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "gp3.1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE "gp3.1" OWNER TO postgres;

\connect "gp3.1"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2441 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 8 (class 2615 OID 2289398)
-- Name: residuosPeligrosos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "residuosPeligrosos";


ALTER SCHEMA "residuosPeligrosos" OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12623)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2443 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = "residuosPeligrosos", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 2294563)
-- Name: Cantones; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "Cantones" (
    "idCantones" integer NOT NULL,
    "Canton" character(45) NOT NULL,
    "Codigo" character(10) NOT NULL,
    "idProvincia" integer NOT NULL
);


ALTER TABLE "Cantones" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 2301098)
-- Name: ClasesEstablecimiento; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "ClasesEstablecimiento" (
    "idClases" integer NOT NULL,
    "Clase" character(60) NOT NULL
);


ALTER TABLE "ClasesEstablecimiento" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 2304076)
-- Name: ClasesTiposEs; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "ClasesTiposEs" (
    "idClaseTipo" integer NOT NULL,
    "idClase" integer NOT NULL,
    "idTipo" integer NOT NULL
);


ALTER TABLE "ClasesTiposEs" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 2302197)
-- Name: EntidadEstablecimiento; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "EntidadEstablecimiento" (
    "idEntidad" integer NOT NULL,
    "Entidad" character(50) NOT NULL
);


ALTER TABLE "EntidadEstablecimiento" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 2304278)
-- Name: EntidadSectorEs; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "EntidadSectorEs" (
    "idEntidadSector" integer NOT NULL,
    "idEntidad" integer NOT NULL,
    "idSector" integer NOT NULL
);


ALTER TABLE "EntidadSectorEs" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 2296110)
-- Name: Parroquias; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "Parroquias" (
    "idParroquias" integer NOT NULL,
    "Parroquia" character(200) NOT NULL,
    "idCanton" integer NOT NULL
);


ALTER TABLE "Parroquias" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 2292786)
-- Name: Provincias; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "Provincias" (
    "idProvincias" integer NOT NULL,
    "Provincia" character(45),
    "CodigoProvincia" character(9),
    "LongitudProvincia" character(15) NOT NULL,
    "LatitudProvincia" character(15) NOT NULL,
    "idRegion" integer
);


ALTER TABLE "Provincias" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 2292617)
-- Name: Regiones; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "Regiones" (
    "idRegiones" integer NOT NULL,
    "Region" character(30)
);


ALTER TABLE "Regiones" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 2304769)
-- Name: Salud; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "Salud" (
    "idSalud" integer NOT NULL,
    "idClasesTipos" integer NOT NULL,
    "idEntidadSector" integer NOT NULL
);


ALTER TABLE "Salud" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 2301520)
-- Name: SectorEstablecimiento; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "SectorEstablecimiento" (
    "idSector" integer NOT NULL,
    "Sector" character(40) NOT NULL
);


ALTER TABLE "SectorEstablecimiento" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 2300859)
-- Name: TipoEstablecimiento; Type: TABLE; Schema: residuosPeligrosos; Owner: postgres
--

CREATE TABLE "TipoEstablecimiento" (
    "idTipo" integer NOT NULL,
    "Tipo" character(40) NOT NULL
);


ALTER TABLE "TipoEstablecimiento" OWNER TO postgres;

--
-- TOC entry 2427 (class 0 OID 2294563)
-- Dependencies: 184
-- Data for Name: Cantones; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (1, 'Cuenca                                       ', '101       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (2, 'Girón                                        ', '102       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (3, 'Gualaceo                                     ', '103       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (4, 'Santa Isabel                                 ', '108       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (5, 'Sigsig                                       ', '109       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (6, 'Paute                                        ', '105       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (7, 'Nabón                                        ', '104       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (8, 'Oña                                          ', '110       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (9, 'San Fernando                                 ', '107       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (10, 'Chordeleg                                    ', '111       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (11, 'Guachapala                                   ', '114       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (12, 'El Pan                                       ', '112       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (13, 'Sevilla De Oro                               ', '113       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (14, 'Camilo Ponce Enríquez                        ', '115       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (15, 'Pucará                                       ', '106       ', 1);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (16, 'Guaranda                                     ', '201       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (17, 'San Miguel                                   ', '205       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (18, 'Chillanes                                    ', '202       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (19, 'Echeandía                                    ', '204       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (20, 'Las Naves                                    ', '207       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (21, 'Chimbo                                       ', '203       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (22, 'Caluma                                       ', '206       ', 2);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (23, 'Azogues                                      ', '301       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (24, 'Cañar                                        ', '303       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (25, 'Déleg                                        ', '306       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (26, 'Biblián                                      ', '302       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (27, 'El Tambo                                     ', '305       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (28, 'La Troncal                                   ', '304       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (29, 'Suscal                                       ', '307       ', 3);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (30, 'Tulcán                                       ', '401       ', 4);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (31, 'Espejo                                       ', '403       ', 4);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (32, 'Montúfar                                     ', '405       ', 4);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (33, 'San Pedro De Huaca                           ', '406       ', 4);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (34, 'Mira                                         ', '404       ', 4);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (35, 'Bolívar                                      ', '402       ', 4);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (36, 'Latacunga                                    ', '501       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (37, 'Pangua                                       ', '503       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (38, 'Pujilí                                       ', '504       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (39, 'Salcedo                                      ', '505       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (40, 'Sigchos                                      ', '507       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (41, 'La Maná                                      ', '502       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (42, 'Saquisilí                                    ', '506       ', 5);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (43, 'Riobamba                                     ', '601       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (44, 'Alausi                                       ', '602       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (45, 'Colta                                        ', '603       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (46, 'Chunchi                                      ', '605       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (47, 'Guamote                                      ', '606       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (48, 'Chambo                                       ', '604       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (49, 'Cumandá                                      ', '610       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (50, 'Guano                                        ', '607       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (51, 'Penipe                                       ', '609       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (52, 'Pallatanga                                   ', '608       ', 6);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (53, 'Machala                                      ', '701       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (54, 'Pasaje                                       ', '709       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (55, 'Arenillas                                    ', '702       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (56, 'Piñas                                        ', '710       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (57, 'Santa Rosa                                   ', '712       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (58, 'Zaruma                                       ', '713       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (59, 'El Guabo                                     ', '706       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (60, 'Chilla                                       ', '705       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (61, 'Marcabelí                                    ', '708       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (62, 'Balsas                                       ', '704       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (63, 'Atahualpa                                    ', '703       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (64, 'Portovelo                                    ', '711       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (65, 'Las Lajas                                    ', '714       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (66, 'Huaquillas                                   ', '707       ', 7);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (67, 'Esmeraldas                                   ', '801       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (68, 'Eloy Alfaro                                  ', '802       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (69, 'San Lorenzo                                  ', '805       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (70, 'Muisne                                       ', '803       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (71, 'Quinindé                                     ', '804       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (72, 'Atacames                                     ', '806       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (73, 'Rioverde                                     ', '807       ', 8);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (74, 'Guayaquil                                    ', '901       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (75, 'Milagro                                      ', '902       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (76, 'El Empalme                                   ', '903       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (77, 'San Jacinto De Yaguachi                      ', '904       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (78, 'Durán                                        ', '905       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (79, 'Playas                                       ', '906       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (80, 'Balzar                                       ', '907       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (81, 'Daule                                        ', '908       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (82, 'Naranjal                                     ', '909       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (83, 'Coronel Marcelino Maridueña                  ', '910       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (84, 'El Triunfo                                   ', '911       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (85, 'Salitre (urbina Jado)                        ', '912       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (86, 'Naranjito                                    ', '913       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (87, 'Balao                                        ', '914       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (88, 'Colimes                                      ', '915       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (89, 'Isidro Ayora                                 ', '916       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (90, 'Nobol                                        ', '917       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (91, 'Lomas De Sargentillo                         ', '918       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (92, 'Palestina                                    ', '919       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (93, 'Pedro Carbo                                  ', '920       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (94, 'Santa Lucía                                  ', '921       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (95, 'General Antonio Elizalde (bucay)             ', '922       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (96, 'Samborondón                                  ', '923       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (97, 'Alfredo Baquerizo Moreno (jujin)             ', '924       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (98, 'Simón Bolívar                                ', '925       ', 9);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (99, 'Ibarra                                       ', '1001      ', 10);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (100, 'Antonio Ante                                 ', '1002      ', 10);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (101, 'Cotacachi                                    ', '1003      ', 10);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (102, 'Otavalo                                      ', '1004      ', 10);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (103, 'San Miguel De Urcuquí                        ', '1005      ', 10);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (104, 'Pimampiro                                    ', '1006      ', 10);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (105, 'Loja                                         ', '1101      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (106, 'Calvas                                       ', '1102      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (107, 'Macará                                       ', '1103      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (108, 'Paltas                                       ', '1104      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (109, 'Puyango                                      ', '1105      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (110, 'Saraguro                                     ', '1106      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (111, 'Espíndola                                    ', '1107      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (112, 'Catamayo                                     ', '1108      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (113, 'Celica                                       ', '1109      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (114, 'Zapotillo                                    ', '1110      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (115, 'Pindal                                       ', '1111      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (116, 'Quilanga                                     ', '1112      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (117, 'Gonzanamá                                    ', '1113      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (118, 'Chaguarpamba                                 ', '1114      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (119, 'Olmedo                                       ', '1115      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (120, 'Sozoranga                                    ', '1116      ', 11);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (121, 'Babahoyo                                     ', '1201      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (122, 'Quevedo                                      ', '1202      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (123, 'Urdaneta                                     ', '1203      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (124, 'Vinces                                       ', '1204      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (125, 'Ventanas                                     ', '1205      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (126, 'Baba                                         ', '1206      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (127, 'Montalvo                                     ', '1207      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (128, 'Puebloviejo                                  ', '1208      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (129, 'Mocache                                      ', '1209      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (130, 'Buena Fé                                     ', '1210      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (131, 'Valencia                                     ', '1211      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (132, 'Quinsaloma                                   ', '1212      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (133, 'Palenque                                     ', '1213      ', 12);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (134, 'Portoviejo                                   ', '1301      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (135, 'Bolívar                                      ', '1302      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (136, 'Chone                                        ', '1303      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (137, 'Jipijapa                                     ', '1304      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (138, 'Manta                                        ', '1305      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (139, 'Sucre                                        ', '1306      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (140, 'El Carmen                                    ', '1307      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (141, 'Paján                                        ', '1308      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (142, 'Rocafuerte                                   ', '1309      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (143, 'Pichincha                                    ', '1310      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (144, 'Flavio Alfaro                                ', '1311      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (145, 'Puerto López                                 ', '1312      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (146, 'Junín                                        ', '1313      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (147, 'Montecristi                                  ', '1314      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (148, 'Jaramijó                                     ', '1315      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (149, 'Tosagua                                      ', '1316      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (150, 'Santa Ana                                    ', '1317      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (151, 'Olmedo                                       ', '1318      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (152, 'San Vicente                                  ', '1319      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (153, 'Pedernales                                   ', '1320      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (154, 'Jama                                         ', '1321      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (155, '24 De Mayo                                   ', '1322      ', 13);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (156, 'Morona                                       ', '1401      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (157, 'Gualaquiza                                   ', '1402      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (158, 'Limón Indanza                                ', '1403      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (159, 'Santiago                                     ', '1404      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (160, 'Sucúa                                        ', '1405      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (161, 'Taisha                                       ', '1406      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (162, 'Huamboya                                     ', '1407      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (163, 'Pablo Sexto                                  ', '1408      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (164, 'Palora                                       ', '1409      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (165, 'Tiwintza                                     ', '1410      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (166, 'Logroño                                      ', '1411      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (167, 'San Juan Bosco                               ', '1412      ', 14);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (168, 'Tena                                         ', '1501      ', 15);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (169, 'Archidona                                    ', '1502      ', 15);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (170, 'El Chaco                                     ', '1503      ', 15);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (171, 'Quijos                                       ', '1504      ', 15);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (172, 'Carlos Julio Arosemena Tola                  ', '1505      ', 15);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (173, 'Pastaza                                      ', '1601      ', 16);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (174, 'Mera                                         ', '1602      ', 16);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (175, 'Arajuno                                      ', '1603      ', 16);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (176, 'Santa Clara                                  ', '1604      ', 16);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (177, 'Quito                                        ', '1701      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (178, 'Cayambe                                      ', '1702      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (179, 'Mejía                                        ', '1703      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (180, 'Rumiñahui                                    ', '1704      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (181, 'San Miguel De Los Bancos                     ', '1705      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (182, 'Pedro Vicente Maldonado                      ', '1706      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (183, 'Puerto Quito                                 ', '1707      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (184, 'Pedro Moncayo                                ', '1708      ', 17);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (185, 'Ambato                                       ', '1801      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (186, 'San Pedro De Pelileo                         ', '1802      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (187, 'Santiago De Píllaro                          ', '1803      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (188, 'Cevallos                                     ', '1804      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (189, 'Mocha                                        ', '1805      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (190, 'Tisaleo                                      ', '1806      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (191, 'Baños De Agua Santa                          ', '1807      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (192, 'Patate                                       ', '1808      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (193, 'Quero                                        ', '1809      ', 18);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (194, 'Zamora                                       ', '1901      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (195, 'Yantzaza (yanzatza)                          ', '1902      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (196, 'Chinchipe                                    ', '1903      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (197, 'Centinela Del Cóndor                         ', '1904      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (198, 'Nangaritza                                   ', '1905      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (199, 'El Pangui                                    ', '1906      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (200, 'Paquisha                                     ', '1907      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (201, 'Palanda                                      ', '1908      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (202, 'Yacuambí                                     ', '1909      ', 19);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (203, 'San Cristóbal                                ', '2001      ', 20);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (204, 'Santa Cruz                                   ', '2002      ', 20);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (205, 'Isabela                                      ', '2003      ', 20);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (206, 'Lago Agrio                                   ', '2101      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (207, 'Shushufindi                                  ', '2102      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (208, 'Cascales                                     ', '2103      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (209, 'Gonzalo Pizarro                              ', '2104      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (210, 'Sucumbíos                                    ', '2105      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (211, 'Cuyabeno                                     ', '2106      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (212, 'Putumayo                                     ', '2107      ', 21);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (213, 'Aguarico                                     ', '2201      ', 22);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (214, 'Orellana                                     ', '2202      ', 22);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (215, 'La Joya De Los Sachas                        ', '2203      ', 22);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (216, 'Loreto                                       ', '2204      ', 22);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (217, 'La Concordia                                 ', '2301      ', 23);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (218, 'Santo Domingo                                ', '3202      ', 23);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (219, 'Salinas                                      ', '2401      ', 24);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (220, 'La Libertad                                  ', '2402      ', 24);
INSERT INTO "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") VALUES (221, 'Santa Elena                                  ', '2403      ', 24);


--
-- TOC entry 2430 (class 0 OID 2301098)
-- Dependencies: 187
-- Data for Name: ClasesEstablecimiento; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (1, 'Centro Clinico-quirurgico Ambulatorio (hospital Del Dia)    ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (2, 'Centro De Especialidades                                    ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (3, 'Centro De Salud A                                           ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (4, 'Centro De Salud B                                           ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (5, 'Centro De Salud C                                           ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (6, 'Centros Especializados                                      ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (7, 'Clínica General                                             ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (8, 'Clínica Privada Especializada En Gineco-obstetricia         ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (9, 'Clínica Privada Especializada En Pediátrica                 ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (10, 'Clínica Privada Especializada En Psiquiatría                ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (11, 'Clínica Privada Especializada En Traumatología              ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (12, 'Consultorio General                                         ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (13, 'Dispensario Médico (policlínico)                            ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (14, 'Hospital Básico                                             ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (15, 'Hospital De Especialidades                                  ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (16, 'Hospital De Infectologia                                    ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (17, 'Hospital Dermatológico (leprocomios)                        ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (18, 'Hospital General                                            ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (19, 'Hospital Geriátrico                                         ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (20, 'Hospital Gineco-obstetrico                                  ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (21, 'Hospital Neumológico (antituberculoso)                      ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (22, 'Hospital Oncológico                                         ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (23, 'Hospital Pediátrico                                         ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (24, 'Hospital Psiquiátrico Y Sanatorio De Alcóholicos            ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (25, 'Otras Clínicas Especializadas                               ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (26, 'Otros Establecimientos Sin Internación                      ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (27, 'Puesto De Salud                                             ');
INSERT INTO "ClasesEstablecimiento" ("idClases", "Clase") VALUES (28, 'Subcentro De Salud                                          ');


--
-- TOC entry 2433 (class 0 OID 2304076)
-- Dependencies: 190
-- Data for Name: ClasesTiposEs; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (1, 1, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (2, 2, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (3, 3, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (4, 4, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (5, 5, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (6, 6, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (7, 7, 2);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (8, 8, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (9, 9, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (10, 10, 3);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (11, 11, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (12, 12, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (13, 13, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (14, 14, 5);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (15, 15, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (16, 16, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (17, 17, 3);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (18, 18, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (19, 19, 3);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (20, 20, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (21, 21, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (22, 22, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (23, 23, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (24, 24, 3);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (25, 25, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (26, 25, 2);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (27, 26, 1);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (28, 27, 4);
INSERT INTO "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") VALUES (29, 28, 4);


--
-- TOC entry 2432 (class 0 OID 2302197)
-- Dependencies: 189
-- Data for Name: EntidadEstablecimiento; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (1, 'Privados Con Fines De Lucro                       ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (2, 'Ministerio De Salud Pública                       ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (3, 'Instituto Ecuatoriano De Seguridad Social         ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (4, 'Ministerio De Defensa Nacional                    ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (5, 'Privados Sin Fines De Lucro                       ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (6, 'Anexos Al Seguro Social                           ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (7, 'Ministerio De Justicia Y De Gobierno Y Policía    ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (8, 'Universidades Y Politécnicas                      ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (9, 'Consejos Provinciales                             ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (10, 'Municipios                                        ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (11, 'Ministerio De Educación                           ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (12, 'Junta De Beneficiencia De Guayaquil               ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (13, 'Otros Públicos                                    ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (14, 'Sociedad De Lucha Contra El Cáncer                ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (15, 'Otros Ministerios                                 ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (16, 'Cruz Roja Ecuatoriana                             ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (17, 'Fisco Misionales                                  ');
INSERT INTO "EntidadEstablecimiento" ("idEntidad", "Entidad") VALUES (18, 'Seguro Social Campesino                           ');


--
-- TOC entry 2434 (class 0 OID 2304278)
-- Dependencies: 191
-- Data for Name: EntidadSectorEs; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (1, 13, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (2, 10, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (3, 11, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (4, 15, 3);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (5, 2, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (6, 5, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (7, 9, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (8, 14, 2);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (9, 17, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (10, 18, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (11, 6, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (12, 7, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (13, 8, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (14, 12, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (15, 3, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (16, 1, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (17, 16, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (18, 4, 1);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (19, 16, 3);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (20, 18, 2);
INSERT INTO "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") VALUES (21, 18, 3);


--
-- TOC entry 2428 (class 0 OID 2296110)
-- Dependencies: 185
-- Data for Name: Parroquias; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (1, 'Cuenca                                                                                                                                                                                                  ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (2, 'Girón                                                                                                                                                                                                   ', 2);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (3, 'Gualaceo                                                                                                                                                                                                ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (4, 'Santa Isabel (Chaguarurco)                                                                                                                                                                              ', 4);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (5, 'Sigsig                                                                                                                                                                                                  ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (6, 'Paute                                                                                                                                                                                                   ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (7, 'Molleturo                                                                                                                                                                                               ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (8, 'Checa (Jidcay)                                                                                                                                                                                          ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (9, 'Quingeo                                                                                                                                                                                                 ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (10, 'Sidcay                                                                                                                                                                                                  ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (11, 'Nulti                                                                                                                                                                                                   ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (12, 'Cumbe                                                                                                                                                                                                   ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (13, 'Chaucha                                                                                                                                                                                                 ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (14, 'Ricaurte                                                                                                                                                                                                ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (15, 'Sinincay                                                                                                                                                                                                ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (16, 'Tarqui                                                                                                                                                                                                  ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (17, 'Nabón                                                                                                                                                                                                   ', 7);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (18, 'San Felipe de Oña                                                                                                                                                                                       ', 8);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (19, 'San Fernando                                                                                                                                                                                            ', 9);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (20, 'Asunción                                                                                                                                                                                                ', 2);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (21, 'Cochapata                                                                                                                                                                                               ', 7);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (22, 'San Juan                                                                                                                                                                                                ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (23, 'Jadán                                                                                                                                                                                                   ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (24, 'Mariano Moreno                                                                                                                                                                                          ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (25, 'Chordeleg                                                                                                                                                                                               ', 10);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (26, 'Principal                                                                                                                                                                                               ', 10);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (27, 'Guachapala                                                                                                                                                                                              ', 11);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (28, 'Guarainag                                                                                                                                                                                               ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (29, 'El Pan                                                                                                                                                                                                  ', 12);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (30, 'Palmas                                                                                                                                                                                                  ', 13);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (31, 'San Vicente                                                                                                                                                                                             ', 12);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (32, 'Camilo Ponce Enríquez                                                                                                                                                                                   ', 14);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (33, 'Pucará                                                                                                                                                                                                  ', 15);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (34, 'Zhaglli (Shaglli)                                                                                                                                                                                       ', 4);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (35, 'Gima                                                                                                                                                                                                    ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (36, 'San Bartolomé                                                                                                                                                                                           ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (37, 'Ludo                                                                                                                                                                                                    ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (38, 'Sayausi                                                                                                                                                                                                 ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (39, 'Valle                                                                                                                                                                                                   ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (40, 'San Joaquín                                                                                                                                                                                             ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (41, 'Chiquintad                                                                                                                                                                                              ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (42, 'Octavio Cordero Palacios (Santa Rosa)                                                                                                                                                                   ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (43, 'Santa Ana                                                                                                                                                                                               ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (44, 'Paccha                                                                                                                                                                                                  ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (45, 'El Carmen de Pijilí                                                                                                                                                                                     ', 14);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (46, 'El Progreso (Cab. en Zhota)                                                                                                                                                                             ', 7);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (47, 'Las Nieves (Chaya)                                                                                                                                                                                      ', 7);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (48, 'Abdón Calderón  (La Unión)                                                                                                                                                                              ', 4);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (49, 'Susudel                                                                                                                                                                                                 ', 8);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (50, 'San Rafael de Shurug                                                                                                                                                                                    ', 15);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (51, 'Sevilla de Oro                                                                                                                                                                                          ', 13);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (52, 'San Cristóbal (Carlos Ordóñez Lazo)                                                                                                                                                                     ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (53, 'Amaluza                                                                                                                                                                                                 ', 13);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (54, 'Victoria del Portete (Irquis)                                                                                                                                                                           ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (55, 'Guel                                                                                                                                                                                                    ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (56, 'Cuchil (Cutchil)                                                                                                                                                                                        ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (57, 'Chumblín                                                                                                                                                                                                ', 9);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (58, 'Guaranda                                                                                                                                                                                                ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (59, 'San Miguel                                                                                                                                                                                              ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (60, 'Chillanes                                                                                                                                                                                               ', 18);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (61, 'Echeandía                                                                                                                                                                                               ', 19);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (62, 'Facundo Vela                                                                                                                                                                                            ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (63, 'Las Naves                                                                                                                                                                                               ', 20);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (64, 'San Lorenzo                                                                                                                                                                                             ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (65, 'Simiátug                                                                                                                                                                                                ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (66, 'Salinas                                                                                                                                                                                                 ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (67, 'San Simón (Yacoto)                                                                                                                                                                                      ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (68, 'San José del Tambo (Tambopamba)                                                                                                                                                                         ', 18);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (69, 'San José de Chimbo                                                                                                                                                                                      ', 21);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (70, 'Caluma                                                                                                                                                                                                  ', 22);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (71, 'Magdalena (Chapacoto)                                                                                                                                                                                   ', 21);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (72, 'Asunción (Asancoto)                                                                                                                                                                                     ', 21);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (73, 'Telimbela                                                                                                                                                                                               ', 21);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (74, 'Balsapamba                                                                                                                                                                                              ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (75, 'Santiago                                                                                                                                                                                                ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (76, 'San Pablo  (San Pablo de Atenas)                                                                                                                                                                        ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (77, 'San Vicente                                                                                                                                                                                             ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (78, 'Bilován                                                                                                                                                                                                 ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (79, 'Santa Fé (Santa Fé)                                                                                                                                                                                     ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (80, 'San Luis de Pambil                                                                                                                                                                                      ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (81, 'Julio E. Moreno (Catanahuán Grande)                                                                                                                                                                     ', 16);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (82, 'Azogues                                                                                                                                                                                                 ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (83, 'Cañar                                                                                                                                                                                                   ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (84, 'Déleg                                                                                                                                                                                                   ', 25);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (85, 'Pindilig                                                                                                                                                                                                ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (86, 'Solano                                                                                                                                                                                                  ', 25);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (87, 'Rivera                                                                                                                                                                                                  ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (88, 'Javier Loyola (Chuquipata)                                                                                                                                                                              ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (89, 'Guapán                                                                                                                                                                                                  ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (90, 'Cojitambo                                                                                                                                                                                               ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (91, 'Luis Cordero                                                                                                                                                                                            ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (92, 'San Miguel                                                                                                                                                                                              ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (93, 'Biblián                                                                                                                                                                                                 ', 26);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (94, 'Nazón (Cab. en Pampa de Domínguez)                                                                                                                                                                      ', 26);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (95, 'El Tambo                                                                                                                                                                                                ', 27);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (96, 'General Morales (Socarte)                                                                                                                                                                               ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (97, 'Gualleturo                                                                                                                                                                                              ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (98, 'Manuel J. Calle                                                                                                                                                                                         ', 28);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (99, 'Suscal                                                                                                                                                                                                  ', 29);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (100, 'Ingapirca                                                                                                                                                                                               ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (101, 'Chontamarca                                                                                                                                                                                             ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (102, 'Pancho Negro                                                                                                                                                                                            ', 28);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (103, 'Honorato Vásquez (Tambo Viejo)                                                                                                                                                                          ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (104, 'Ducur                                                                                                                                                                                                   ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (105, 'San Antonio                                                                                                                                                                                             ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (106, 'Ventura                                                                                                                                                                                                 ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (107, 'Chorocopte                                                                                                                                                                                              ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (108, 'Juncal                                                                                                                                                                                                  ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (109, 'La Troncal                                                                                                                                                                                              ', 28);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (110, 'Taday                                                                                                                                                                                                   ', 23);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (111, 'Zhud                                                                                                                                                                                                    ', 24);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (112, 'San Francisco de Sageo                                                                                                                                                                                  ', 26);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (113, 'Tulcán                                                                                                                                                                                                  ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (114, 'El Ángel                                                                                                                                                                                                ', 31);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (115, 'San Gabriel                                                                                                                                                                                             ', 32);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (116, 'El Carmelo (El Pun)                                                                                                                                                                                     ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (117, 'Julio Andrade (Orejuela)                                                                                                                                                                                ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (118, 'Maldonado                                                                                                                                                                                               ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (119, 'Tufiño                                                                                                                                                                                                  ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (120, 'Urbina (Taya)                                                                                                                                                                                           ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (121, 'Huaca                                                                                                                                                                                                   ', 33);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (122, 'El Goaltal                                                                                                                                                                                              ', 31);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (123, 'Jijón y Caamaño (Cab. en Río Blanco)                                                                                                                                                                    ', 34);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (124, 'Juan Montalvo (San Ignacio de Quil)                                                                                                                                                                     ', 34);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (125, 'Concepción                                                                                                                                                                                              ', 34);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (126, 'La Libertad (Alizo)                                                                                                                                                                                     ', 31);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (127, 'Mira (Chontahuasi)                                                                                                                                                                                      ', 34);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (128, 'San Isidro                                                                                                                                                                                              ', 31);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (129, 'San Vicente de Pusir                                                                                                                                                                                    ', 35);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (130, 'Cristóbal Colón                                                                                                                                                                                         ', 32);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (131, 'Monte Olivo                                                                                                                                                                                             ', 35);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (132, 'Bolívar                                                                                                                                                                                                 ', 35);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (133, 'La Paz                                                                                                                                                                                                  ', 32);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (134, 'García Moreno                                                                                                                                                                                           ', 35);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (135, 'San Rafael                                                                                                                                                                                              ', 35);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (136, 'El Chical                                                                                                                                                                                               ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (137, 'Santa Martha de Cuba                                                                                                                                                                                    ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (138, 'Pioter                                                                                                                                                                                                  ', 30);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (139, 'Los Andes                                                                                                                                                                                               ', 35);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (140, 'Chitán de Navarrete                                                                                                                                                                                     ', 32);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (141, 'Fernández Salvador                                                                                                                                                                                      ', 32);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (142, 'Piartal                                                                                                                                                                                                 ', 32);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (143, 'La Matriz                                                                                                                                                                                               ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (144, 'El Corazón                                                                                                                                                                                              ', 37);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (145, 'Pujilí                                                                                                                                                                                                  ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (146, 'San Miguel                                                                                                                                                                                              ', 39);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (147, 'Latacunga                                                                                                                                                                                               ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (148, 'Guaitacama (Guaytacama)                                                                                                                                                                                 ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (149, 'Mulaló                                                                                                                                                                                                  ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (150, 'Las Pampas                                                                                                                                                                                              ', 40);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (151, 'Joseguango Bajo                                                                                                                                                                                         ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (152, 'Pucayacu                                                                                                                                                                                                ', 41);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (153, 'San Juan de Pastocalle                                                                                                                                                                                  ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (154, 'Sigchos                                                                                                                                                                                                 ', 40);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (155, 'Toacaso                                                                                                                                                                                                 ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (156, 'Belisario Quevedo (Guanailín)                                                                                                                                                                           ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (157, 'Tanicuchí                                                                                                                                                                                               ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (158, 'Poaló                                                                                                                                                                                                   ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (159, 'Alaques (Alaquez)                                                                                                                                                                                       ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (160, '11 de Noviembre (Ilinchisi)                                                                                                                                                                             ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (161, 'Moraspungo                                                                                                                                                                                              ', 37);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (162, 'Angamarca                                                                                                                                                                                               ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (163, 'La Maná                                                                                                                                                                                                 ', 41);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (164, 'Pilaló                                                                                                                                                                                                  ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (165, 'Tingo                                                                                                                                                                                                   ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (166, 'Zumbahua                                                                                                                                                                                                ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (167, 'La Victoria                                                                                                                                                                                             ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (168, 'Guasaganda (Cab. en Guasaganda)                                                                                                                                                                         ', 41);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (169, 'Mulalillo                                                                                                                                                                                               ', 39);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (170, 'Antonio José Holguén  (Santa Lucía)                                                                                                                                                                     ', 39);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (171, 'Cusubamba                                                                                                                                                                                               ', 39);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (172, 'Mulliquindil (Santa Ana)                                                                                                                                                                                ', 39);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (173, 'Pansaleo                                                                                                                                                                                                ', 39);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (174, 'Saquisilí                                                                                                                                                                                               ', 42);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (175, 'Chugchillán                                                                                                                                                                                             ', 40);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (176, 'Isinliví (Isinliví)                                                                                                                                                                                     ', 40);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (177, 'Ramón Campaña                                                                                                                                                                                           ', 37);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (178, 'Pinllopata                                                                                                                                                                                              ', 37);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (179, 'Guangaje                                                                                                                                                                                                ', 38);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (180, 'Canchagua                                                                                                                                                                                               ', 42);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (181, 'Lizarzaburu                                                                                                                                                                                             ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (182, 'Veloz                                                                                                                                                                                                   ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (183, 'Velasco                                                                                                                                                                                                 ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (184, 'Alausí                                                                                                                                                                                                  ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (185, 'Villa La Unión (Cajabamba)                                                                                                                                                                              ', 45);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (186, 'Chunchi                                                                                                                                                                                                 ', 46);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (187, 'Guamote                                                                                                                                                                                                 ', 47);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (188, 'Riobamba                                                                                                                                                                                                ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (189, 'Chambo                                                                                                                                                                                                  ', 48);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (190, 'Licto                                                                                                                                                                                                   ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (191, 'Flores                                                                                                                                                                                                  ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (192, 'Punín                                                                                                                                                                                                   ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (193, 'San Luis                                                                                                                                                                                                ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (194, 'Quimiag                                                                                                                                                                                                 ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (195, 'San Juan                                                                                                                                                                                                ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (196, 'Calpi                                                                                                                                                                                                   ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (197, 'Pungalá                                                                                                                                                                                                 ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (198, 'Cubijíes                                                                                                                                                                                                ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (199, 'Tixán                                                                                                                                                                                                   ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (200, 'Sibambe                                                                                                                                                                                                 ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (201, 'Achupallas                                                                                                                                                                                              ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (202, 'Huigra                                                                                                                                                                                                  ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (203, 'Cumandá                                                                                                                                                                                                 ', 49);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (204, 'Guasuntos                                                                                                                                                                                               ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (205, 'Guano                                                                                                                                                                                                   ', 50);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (206, 'Penipe                                                                                                                                                                                                  ', 51);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (207, 'San Andrés                                                                                                                                                                                              ', 50);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (208, 'San Isidro de Patulú                                                                                                                                                                                    ', 50);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (209, 'Matus                                                                                                                                                                                                   ', 51);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (210, 'Columbe                                                                                                                                                                                                 ', 45);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (211, 'Juan de Velasco (Pangor)                                                                                                                                                                                ', 45);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (212, 'Pallatanga                                                                                                                                                                                              ', 52);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (213, 'Palmira                                                                                                                                                                                                 ', 47);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (214, 'Cebadas                                                                                                                                                                                                 ', 47);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (215, 'Capzol                                                                                                                                                                                                  ', 46);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (216, 'Gonzol                                                                                                                                                                                                  ', 46);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (217, 'Ilapo                                                                                                                                                                                                   ', 50);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (218, 'San Gerardo de Pacaicaguán                                                                                                                                                                              ', 50);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (219, 'Cacha (Cab. en Machángara)                                                                                                                                                                              ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (220, 'Multitud                                                                                                                                                                                                ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (221, 'Compud                                                                                                                                                                                                  ', 46);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (222, 'Llagos                                                                                                                                                                                                  ', 46);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (223, 'Santiago de Quito (Cab. en San Antonio de Quito)                                                                                                                                                        ', 45);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (224, 'Sevilla                                                                                                                                                                                                 ', 44);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (225, 'Machala                                                                                                                                                                                                 ', 53);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (226, 'Pasaje                                                                                                                                                                                                  ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (227, 'Arenillas                                                                                                                                                                                               ', 55);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (228, 'Piñas                                                                                                                                                                                                   ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (229, 'Santa Rosa                                                                                                                                                                                              ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (230, 'Zaruma                                                                                                                                                                                                  ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (231, 'El Guabo                                                                                                                                                                                                ', 59);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (232, 'Tendales (Cab. en Puerto Tendales)                                                                                                                                                                      ', 59);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (233, 'Barbones (Sucre)                                                                                                                                                                                        ', 59);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (234, 'Chilla                                                                                                                                                                                                  ', 60);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (235, 'Uzhcurrumi                                                                                                                                                                                              ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (236, 'Buenavista                                                                                                                                                                                              ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (237, 'La Peaña                                                                                                                                                                                                ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (238, 'Progreso                                                                                                                                                                                                ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (239, 'Casacay                                                                                                                                                                                                 ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (240, 'Marcabelí                                                                                                                                                                                               ', 61);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (241, 'Moromoro (Cab. en El Vado)                                                                                                                                                                              ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (242, 'Balsas                                                                                                                                                                                                  ', 62);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (243, 'Capiro (Cab. en La Capilla de Capiro)                                                                                                                                                                   ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (244, 'La Bocana                                                                                                                                                                                               ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (245, 'San Roque (Ambrosio Maldonado)                                                                                                                                                                          ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (246, 'Saracay                                                                                                                                                                                                 ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (247, 'Victoria                                                                                                                                                                                                ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (248, 'Chacras                                                                                                                                                                                                 ', 55);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (249, 'Palmales                                                                                                                                                                                                ', 55);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (250, 'Ayapamba                                                                                                                                                                                                ', 63);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (251, 'Guizhaguiña                                                                                                                                                                                             ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (252, 'Paccha                                                                                                                                                                                                  ', 63);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (253, 'Huertas                                                                                                                                                                                                 ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (254, 'Malvas                                                                                                                                                                                                  ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (255, 'Portovelo                                                                                                                                                                                               ', 64);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (256, 'Salatí                                                                                                                                                                                                  ', 64);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (257, 'Curtincapa                                                                                                                                                                                              ', 64);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (258, 'Bellavista                                                                                                                                                                                              ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (259, 'San Antonio                                                                                                                                                                                             ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (260, 'La Avanzada                                                                                                                                                                                             ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (261, 'Cañaquemada                                                                                                                                                                                             ', 54);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (262, 'Guanazán                                                                                                                                                                                                ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (263, 'Jambelí                                                                                                                                                                                                 ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (264, 'Bellamaría                                                                                                                                                                                              ', 57);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (265, 'San Isidro                                                                                                                                                                                              ', 65);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (266, 'Huaquillas                                                                                                                                                                                              ', 66);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (267, 'Piedras                                                                                                                                                                                                 ', 56);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (268, 'Salvias                                                                                                                                                                                                 ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (269, 'La Iberia                                                                                                                                                                                               ', 59);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (270, 'La Victoria                                                                                                                                                                                             ', 65);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (271, 'Esmeraldas                                                                                                                                                                                              ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (272, 'Valdez (Limones)                                                                                                                                                                                        ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (273, 'San Lorenzo                                                                                                                                                                                             ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (274, 'Muisne                                                                                                                                                                                                  ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (275, 'Rosa Zárate (Quinindé)                                                                                                                                                                                  ', 71);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (276, 'Borbon                                                                                                                                                                                                  ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (277, 'Atacames                                                                                                                                                                                                ', 72);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (278, 'Rocafuerte                                                                                                                                                                                              ', 73);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (279, 'Chinca                                                                                                                                                                                                  ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (280, 'La Unión                                                                                                                                                                                                ', 72);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (281, 'Majua                                                                                                                                                                                                   ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (282, 'Rioverde                                                                                                                                                                                                ', 73);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (283, 'San Mateo                                                                                                                                                                                               ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (284, 'Tabiazo                                                                                                                                                                                                 ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (285, 'Tachina                                                                                                                                                                                                 ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (286, 'Tonchigue                                                                                                                                                                                               ', 72);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (287, 'Vuelta Larga                                                                                                                                                                                            ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (288, 'Chontaduro                                                                                                                                                                                              ', 73);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (289, 'Camarones (Cab. en San Vicente)                                                                                                                                                                         ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (290, 'Montalvo (Cab. en Horqueta)                                                                                                                                                                             ', 73);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (291, 'Mataje (Cab. en Santander)                                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (292, 'Súa  (Cab. en La Bocana)                                                                                                                                                                                ', 72);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (293, 'Colón Eloy del María                                                                                                                                                                                    ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (294, 'Ancón (Pichangal) (Cab. en Palma Real)                                                                                                                                                                  ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (295, 'Calderón                                                                                                                                                                                                ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (296, '5 de Junio (Cab. en Uimbi)                                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (297, 'Concepción                                                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (298, 'La Tola                                                                                                                                                                                                 ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (299, 'Luis Vargas Torres (Cab. en Playa de Oro)                                                                                                                                                               ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (300, 'Maldonado                                                                                                                                                                                               ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (301, 'San Francisco de Onzole                                                                                                                                                                                 ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (302, 'Chumundé                                                                                                                                                                                                ', 73);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (303, 'San Javier de Cachaví (Cab. en San Javier)                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (304, 'Santa Rita                                                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (305, 'Urbina                                                                                                                                                                                                  ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (306, 'San Gregorio                                                                                                                                                                                            ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (307, 'Bolívar                                                                                                                                                                                                 ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (308, 'Daule                                                                                                                                                                                                   ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (309, 'Galera                                                                                                                                                                                                  ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (310, 'San Francisco                                                                                                                                                                                           ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (311, 'San José de Chamanga (Cab. en Chamanga)                                                                                                                                                                 ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (312, 'Cube                                                                                                                                                                                                    ', 71);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (313, 'Malimpia                                                                                                                                                                                                ', 71);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (314, 'Viche                                                                                                                                                                                                   ', 71);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (315, 'La Unión                                                                                                                                                                                                ', 71);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (316, 'Atahualpa (Cab. en Camarones)                                                                                                                                                                           ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (317, 'Selva Alegre                                                                                                                                                                                            ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (318, 'Santo Domingo de Onzole                                                                                                                                                                                 ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (319, 'Crnel. Carlos Concha Torres (Cab. en Huele)                                                                                                                                                             ', 67);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (320, 'Tululbí (Cab. en Ricaurte)                                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (321, 'Lagarto                                                                                                                                                                                                 ', 73);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (322, 'Telembi                                                                                                                                                                                                 ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (323, 'Chura (Chancama) (Cab. en El Yerbero)                                                                                                                                                                   ', 71);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (324, 'Tambillo                                                                                                                                                                                                ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (325, 'Guayaquil                                                                                                                                                                                               ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (326, 'Milagro                                                                                                                                                                                                 ', 75);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (327, 'Velasco Ibarra (El Empalme)                                                                                                                                                                             ', 76);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (328, 'San Jacinto de Yaguachi                                                                                                                                                                                 ', 77);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (329, 'José Luis Tamayo (Muey)                                                                                                                                                                                 ', 219);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (330, 'Eloy Alfaro (Durán)                                                                                                                                                                                     ', 78);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (331, 'General Villamil (Playas)                                                                                                                                                                               ', 79);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (332, 'Tenguel                                                                                                                                                                                                 ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (333, 'Balzar                                                                                                                                                                                                  ', 80);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (334, 'Daule                                                                                                                                                                                                   ', 81);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (335, 'Naranjal                                                                                                                                                                                                ', 82);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (336, 'La Libertad                                                                                                                                                                                             ', 220);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (337, 'San José de Ancón                                                                                                                                                                                       ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (338, 'Manglaralto                                                                                                                                                                                             ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (339, 'Coronel Marcelino Maridueña (San Carlos)                                                                                                                                                                ', 83);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (340, 'El Triunfo                                                                                                                                                                                              ', 84);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (341, 'El Salitre (Las Ramas)                                                                                                                                                                                  ', 85);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (342, 'Salinas                                                                                                                                                                                                 ', 219);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (343, 'Naranjito                                                                                                                                                                                               ', 86);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (344, 'Juan Gómez Rendón (Progreso)                                                                                                                                                                            ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (345, 'Posorja                                                                                                                                                                                                 ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (346, 'Puná                                                                                                                                                                                                    ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (347, 'Balao                                                                                                                                                                                                   ', 87);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (348, 'Colimes                                                                                                                                                                                                 ', 88);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (349, 'Isidro Ayora                                                                                                                                                                                            ', 89);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (350, 'Narcisa de Jesús (Nobol)                                                                                                                                                                                ', 90);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (351, 'Los Lojas (Enrique Baquerizo Moreno)                                                                                                                                                                    ', 81);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (352, 'Lomas de Sargentillo                                                                                                                                                                                    ', 91);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (353, 'Palestina                                                                                                                                                                                               ', 92);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (354, 'Pedro Carbo                                                                                                                                                                                             ', 93);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (355, 'Santa Lucía                                                                                                                                                                                             ', 94);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (356, 'Guayas (Pueblo Nuevo)                                                                                                                                                                                   ', 76);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (357, 'General Antonio Elizalde (Bucay)                                                                                                                                                                        ', 95);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (358, 'Mariscal Sucre (Huaques)                                                                                                                                                                                ', 75);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (359, 'Taura                                                                                                                                                                                                   ', 82);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (360, 'Samborondón                                                                                                                                                                                             ', 96);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (361, 'Tarifa                                                                                                                                                                                                  ', 96);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (362, 'Santa Elena                                                                                                                                                                                             ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (363, 'Chanduy                                                                                                                                                                                                 ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (364, 'Atahualpa                                                                                                                                                                                               ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (365, 'Colonche                                                                                                                                                                                                ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (366, 'Junquillal                                                                                                                                                                                              ', 85);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (367, 'Gral. Vernaza (Dos Esteros)                                                                                                                                                                             ', 85);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (368, 'La Victoria (Ñauza)                                                                                                                                                                                     ', 85);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (369, 'Alfredo Baquerizo Moreno (Jujín)                                                                                                                                                                        ', 97);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (370, 'Simón Bolívar                                                                                                                                                                                           ', 98);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (371, 'Gral. Pedro J. Montero (Boliche)                                                                                                                                                                        ', 77);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (372, 'Yaguachi Viejo (Cone)                                                                                                                                                                                   ', 77);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (373, 'Anconcito                                                                                                                                                                                               ', 219);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (374, 'Limonal                                                                                                                                                                                                 ', 81);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (375, 'Valle de la Virgen                                                                                                                                                                                      ', 93);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (376, 'Laurel                                                                                                                                                                                                  ', 81);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (377, 'Sabanilla                                                                                                                                                                                               ', 93);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (378, 'Crnel.Lorenzo de Garaicoa (Pedregal)                                                                                                                                                                    ', 98);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (379, 'Morro                                                                                                                                                                                                   ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (380, 'Roberto Astudillo (Cab. en Cruce de Venecia)                                                                                                                                                            ', 75);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (381, 'Santa Rosa de Flandes                                                                                                                                                                                   ', 82);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (382, 'Jesús María                                                                                                                                                                                             ', 82);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (383, 'Virgen de Fátima                                                                                                                                                                                        ', 77);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (384, 'San Miguel de Ibarra                                                                                                                                                                                    ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (385, 'Atuntaqui                                                                                                                                                                                               ', 100);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (386, 'Cotacachi                                                                                                                                                                                               ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (387, 'Otavalo                                                                                                                                                                                                 ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (388, 'Ambuquí                                                                                                                                                                                                 ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (389, 'Cahuasquí                                                                                                                                                                                               ', 103);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (390, 'Carolina                                                                                                                                                                                                ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (391, 'La Esperanza                                                                                                                                                                                            ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (392, 'Lita                                                                                                                                                                                                    ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (393, 'Mariano Acosta                                                                                                                                                                                          ', 104);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (394, 'Pablo Arenas                                                                                                                                                                                            ', 103);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (395, 'Pimampiro                                                                                                                                                                                               ', 104);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (396, 'San Antonio                                                                                                                                                                                             ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (397, 'Tumbabiro                                                                                                                                                                                               ', 103);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (398, 'Urcuquí                                                                                                                                                                                                 ', 103);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (399, 'La Merced de Buenos Aires                                                                                                                                                                               ', 103);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (400, 'Angochagua                                                                                                                                                                                              ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (401, 'San Francisco de Sigsipamba                                                                                                                                                                             ', 104);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (402, 'Chugá                                                                                                                                                                                                   ', 104);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (403, 'San Blas                                                                                                                                                                                                ', 103);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (404, 'Salinas                                                                                                                                                                                                 ', 99);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (405, 'San José de Chaltura                                                                                                                                                                                    ', 100);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (406, 'San Roque                                                                                                                                                                                               ', 100);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (407, 'San Francisco de Natabuela                                                                                                                                                                              ', 100);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (408, 'Imbaya (San Luis de Cobuendo)                                                                                                                                                                           ', 100);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (409, '6 de Julio de Cuellaje (Cab. en Cuellaje)                                                                                                                                                               ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (410, 'Apuela                                                                                                                                                                                                  ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (411, 'García Moreno (Llurimagua)                                                                                                                                                                              ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (412, 'Imantag                                                                                                                                                                                                 ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (413, 'Peñaherrera                                                                                                                                                                                             ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (414, 'Vacas Galindo (El Churo) (Cab.en San Miguel Alto)                                                                                                                                                       ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (415, 'Quiroga                                                                                                                                                                                                 ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (416, 'San Pablo                                                                                                                                                                                               ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (417, 'San Rafael                                                                                                                                                                                              ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (418, 'Selva Alegre (Cab. en San Miguel de Pamplona)                                                                                                                                                           ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (419, 'San Juan de Ilumán                                                                                                                                                                                      ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (420, 'Eugenio Espejo (Calpaquí)                                                                                                                                                                               ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (421, 'San José de Quichinche                                                                                                                                                                                  ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (422, 'Dr. Miguel Egas Cabezas (Peguche)                                                                                                                                                                       ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (423, 'González Suárez                                                                                                                                                                                         ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (424, 'Plaza Gutiérrez (Calvario)                                                                                                                                                                              ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (425, 'Pataquí                                                                                                                                                                                                 ', 102);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (426, 'Loja                                                                                                                                                                                                    ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (427, 'Cariamanga                                                                                                                                                                                              ', 106);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (428, 'Macará                                                                                                                                                                                                  ', 107);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (429, 'Catacocha                                                                                                                                                                                               ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (430, 'Alamor                                                                                                                                                                                                  ', 109);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (431, 'Vilcabamba  (Victoria)                                                                                                                                                                                  ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (432, 'Saraguro                                                                                                                                                                                                ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (433, 'Amaluza                                                                                                                                                                                                 ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (434, 'Catamayo (La Toma)                                                                                                                                                                                      ', 112);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (435, 'Malacatos (Valladolid)                                                                                                                                                                                  ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (436, 'San Lucas                                                                                                                                                                                               ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (437, 'Yangana (Arsenio Castillo)                                                                                                                                                                              ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (438, 'Chuquiribamba                                                                                                                                                                                           ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (439, 'El Cisne                                                                                                                                                                                                ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (440, 'El Tambo                                                                                                                                                                                                ', 112);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (441, 'San Pedro de la Bendita                                                                                                                                                                                 ', 112);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (442, 'Zambi                                                                                                                                                                                                   ', 112);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (443, 'Santiago                                                                                                                                                                                                ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (444, 'Taquil (Miguel Riofrío)                                                                                                                                                                                 ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (445, 'Gualel                                                                                                                                                                                                  ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (446, 'Guayquichuma                                                                                                                                                                                            ', 112);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (447, 'Jimbilla                                                                                                                                                                                                ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (448, 'El Lucero                                                                                                                                                                                               ', 106);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (449, 'Celica                                                                                                                                                                                                  ', 113);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (450, 'Zapotillo                                                                                                                                                                                               ', 114);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (451, '12 de Diciembre (Cab. en Achiotes)                                                                                                                                                                      ', 115);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (452, 'Pindal                                                                                                                                                                                                  ', 115);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (453, 'Cruzpamba (Cab. en Carlos Bustamante)                                                                                                                                                                   ', 113);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (454, 'Pozul (San Juan de Pozul)                                                                                                                                                                               ', 113);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (455, 'Sabanilla                                                                                                                                                                                               ', 113);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (456, 'Jimbura                                                                                                                                                                                                 ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (457, 'Quilanga                                                                                                                                                                                                ', 116);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (458, 'Gonzanamá                                                                                                                                                                                               ', 117);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (459, 'Changaimina (La Libertad)                                                                                                                                                                               ', 117);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (460, 'Purunuma (Eguiguren)                                                                                                                                                                                    ', 117);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (461, 'Sacapalca                                                                                                                                                                                               ', 117);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (462, 'Nambacola                                                                                                                                                                                               ', 117);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (463, 'San Antonio de Las Aradas (Cab. en Las Aradas)                                                                                                                                                          ', 116);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (464, 'Sabiango (La Capilla)                                                                                                                                                                                   ', 107);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (465, 'Larama                                                                                                                                                                                                  ', 107);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (466, 'La Victoria                                                                                                                                                                                             ', 107);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (467, 'Chaguarpamba                                                                                                                                                                                            ', 118);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (468, 'Olmedo                                                                                                                                                                                                  ', 151);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (469, 'Cangonamá                                                                                                                                                                                               ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (470, 'Orianga                                                                                                                                                                                                 ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (471, 'Buenavista                                                                                                                                                                                              ', 118);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (472, 'El Rosario                                                                                                                                                                                              ', 118);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (473, 'Lauro Guerrero                                                                                                                                                                                          ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (474, 'Casanga                                                                                                                                                                                                 ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (475, 'Selva Alegre                                                                                                                                                                                            ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (476, 'La Tingue                                                                                                                                                                                               ', 119);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (477, 'Santa Rufina                                                                                                                                                                                            ', 118);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (478, 'Guachanamá                                                                                                                                                                                              ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (479, 'Mangahurco                                                                                                                                                                                              ', 114);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (480, 'El Limo (Mariana de Jesús)                                                                                                                                                                              ', 109);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (481, 'Vicentino                                                                                                                                                                                               ', 109);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (482, 'Paletillas                                                                                                                                                                                              ', 114);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (483, 'Ciano                                                                                                                                                                                                   ', 109);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (484, 'Manú                                                                                                                                                                                                    ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (485, 'San Antonio de Qumbe (Cumbe)                                                                                                                                                                            ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (486, 'Urdaneta (Paquishapa)                                                                                                                                                                                   ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (487, 'El Paraíso de Celén                                                                                                                                                                                     ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (488, 'San Sebastián de Yúluc                                                                                                                                                                                  ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (489, 'Tacamoros                                                                                                                                                                                               ', 120);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (490, 'San Pablo de Tenta                                                                                                                                                                                      ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (491, 'Nueva Fátima                                                                                                                                                                                            ', 120);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (492, 'Santa Teresita                                                                                                                                                                                          ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (493, 'Sozoranga                                                                                                                                                                                               ', 120);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (494, 'San Antonio                                                                                                                                                                                             ', 108);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (495, 'Mercadillo                                                                                                                                                                                              ', 109);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (496, 'Chaquinal                                                                                                                                                                                               ', 115);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (497, 'Babahoyo                                                                                                                                                                                                ', 121);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (498, 'Quevedo                                                                                                                                                                                                 ', 122);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (499, 'Ricaurte                                                                                                                                                                                                ', 123);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (500, 'Vinces                                                                                                                                                                                                  ', 124);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (501, 'La Unión                                                                                                                                                                                                ', 121);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (502, 'Ventanas                                                                                                                                                                                                ', 125);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (503, 'Baba                                                                                                                                                                                                    ', 126);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (504, 'Febres Cordero (Las Juntas) (Cab. en Mata de Cacao)                                                                                                                                                     ', 121);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (505, 'Pimocha                                                                                                                                                                                                 ', 121);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (506, 'Montalvo                                                                                                                                                                                                ', 127);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (507, 'Caracol                                                                                                                                                                                                 ', 121);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (508, 'Guare                                                                                                                                                                                                   ', 126);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (509, 'Isla de Bejuca                                                                                                                                                                                          ', 126);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (510, 'San Juan                                                                                                                                                                                                ', 128);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (511, 'Puerto Pechiche                                                                                                                                                                                         ', 128);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (512, 'Puebloviejo                                                                                                                                                                                             ', 128);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (513, 'Mocache                                                                                                                                                                                                 ', 129);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (514, 'San Carlos                                                                                                                                                                                              ', 122);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (515, 'San Jacinto de Buena Fé                                                                                                                                                                                 ', 130);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (516, 'Valencia                                                                                                                                                                                                ', 131);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (517, 'Quinsaloma                                                                                                                                                                                              ', 132);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (518, 'Palenque                                                                                                                                                                                                ', 133);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (519, 'Antonio Sotomayor (Cab. en Playas de Vinces)                                                                                                                                                            ', 124);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (520, 'Catarama                                                                                                                                                                                                ', 123);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (521, 'Zapotal                                                                                                                                                                                                 ', 125);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (522, 'Patricia Pilar                                                                                                                                                                                          ', 130);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (523, 'Los Ángeles                                                                                                                                                                                             ', 125);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (524, 'Portoviejo                                                                                                                                                                                              ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (525, 'Calceta                                                                                                                                                                                                 ', 135);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (526, 'Chone                                                                                                                                                                                                   ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (527, 'Jipijapa                                                                                                                                                                                                ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (528, 'Manta                                                                                                                                                                                                   ', 138);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (529, 'Bahía de Caraquez                                                                                                                                                                                       ', 139);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (530, 'El Carmen                                                                                                                                                                                               ', 140);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (531, 'Paján                                                                                                                                                                                                   ', 141);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (532, 'Rocafuerte                                                                                                                                                                                              ', 142);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (533, 'Abdón Calderón (San Francisco)                                                                                                                                                                          ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (534, 'Alhajuela (Bajo Grande)                                                                                                                                                                                 ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (535, 'Pueblo Nuevo                                                                                                                                                                                            ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (536, 'Riochico (Río Chico)                                                                                                                                                                                    ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (537, 'San Plácido                                                                                                                                                                                             ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (538, 'Crucita                                                                                                                                                                                                 ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (539, 'Pichincha                                                                                                                                                                                               ', 143);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (540, 'Quiroga                                                                                                                                                                                                 ', 135);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (541, 'Boyacá                                                                                                                                                                                                  ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (542, 'Canuto                                                                                                                                                                                                  ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (543, 'Convento                                                                                                                                                                                                ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (544, 'Eloy Alfaro                                                                                                                                                                                             ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (545, 'Flavio Alfaro                                                                                                                                                                                           ', 144);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (546, 'Ricaurte                                                                                                                                                                                                ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (547, 'San Antonio                                                                                                                                                                                             ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (548, 'América                                                                                                                                                                                                 ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (549, 'El Anegado (Cab. en Eloy Alfaro)                                                                                                                                                                        ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (550, 'Julcuy                                                                                                                                                                                                  ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (551, 'Machalilla                                                                                                                                                                                              ', 145);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (552, 'Pedro Pablo Gómez                                                                                                                                                                                       ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (553, 'Puerto López                                                                                                                                                                                            ', 145);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (554, 'Junín                                                                                                                                                                                                   ', 146);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (555, 'San Lorenzo                                                                                                                                                                                             ', 138);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (556, 'Montecristi                                                                                                                                                                                             ', 147);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (557, 'Jaramijó                                                                                                                                                                                                ', 148);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (558, 'Campozano (La Palma de Paján)                                                                                                                                                                           ', 141);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (559, 'Cascol                                                                                                                                                                                                  ', 141);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (560, 'Guale                                                                                                                                                                                                   ', 141);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (561, 'Lascano                                                                                                                                                                                                 ', 141);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (562, 'Bachillero                                                                                                                                                                                              ', 149);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (563, 'Ángel Pedro Giler (La Estancilla)                                                                                                                                                                       ', 149);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (564, 'Tosagua                                                                                                                                                                                                 ', 149);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (565, 'Santa Ana de Vuelta Larga, Cabecera Cantonal                                                                                                                                                            ', 150);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (566, 'Ayacucho                                                                                                                                                                                                ', 150);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (567, 'Honorato Vásquez (Cab. en Vásquez)                                                                                                                                                                      ', 150);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (568, 'San Pablo (Cab. en Pueblo Nuevo)                                                                                                                                                                        ', 150);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (569, 'Canoa                                                                                                                                                                                                   ', 152);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (570, 'Cojimíes                                                                                                                                                                                                ', 153);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (571, 'Charapotó                                                                                                                                                                                               ', 139);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (572, '10 de Agosto                                                                                                                                                                                            ', 153);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (573, 'Jama                                                                                                                                                                                                    ', 154);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (574, 'Pedernales                                                                                                                                                                                              ', 153);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (575, 'San Isidro                                                                                                                                                                                              ', 139);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (576, 'San Vicente                                                                                                                                                                                             ', 152);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (577, 'Bellavista                                                                                                                                                                                              ', 155);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (578, 'Noboa                                                                                                                                                                                                   ', 155);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (579, 'Sucre                                                                                                                                                                                                   ', 155);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (580, 'Chirijos                                                                                                                                                                                                ', 134);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (581, 'Membrillo                                                                                                                                                                                               ', 135);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (582, 'La Unión                                                                                                                                                                                                ', 150);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (583, 'Atahualpa                                                                                                                                                                                               ', 153);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (584, 'Membrillal                                                                                                                                                                                              ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (585, 'Barraganete                                                                                                                                                                                             ', 143);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (586, 'San Sebastián                                                                                                                                                                                           ', 143);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (587, 'Wilfrido Loor Moreira (Maicito)                                                                                                                                                                         ', 140);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (588, 'La Unión                                                                                                                                                                                                ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (589, 'Macas                                                                                                                                                                                                   ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (590, 'Gualaquiza                                                                                                                                                                                              ', 157);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (591, 'General Leonidas Plaza Gutiérrez (Limón)                                                                                                                                                                ', 158);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (592, 'Santiago de Méndez                                                                                                                                                                                      ', 159);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (593, 'Sucúa                                                                                                                                                                                                   ', 160);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (594, 'Taisha                                                                                                                                                                                                  ', 161);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (595, 'Sevilla Don Bosco                                                                                                                                                                                       ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (596, 'Chiguaza                                                                                                                                                                                                ', 162);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (597, 'Cuchaentza                                                                                                                                                                                              ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (598, 'Alshi (Cab. en 9 de Octubre)                                                                                                                                                                            ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (599, 'Macuma                                                                                                                                                                                                  ', 161);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (600, 'Sinaí                                                                                                                                                                                                   ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (601, 'Pablo Sexto                                                                                                                                                                                             ', 163);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (602, 'Chiguinda                                                                                                                                                                                               ', 157);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (603, 'Palora (Metzera)                                                                                                                                                                                        ', 164);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (604, 'Santiago                                                                                                                                                                                                ', 165);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (605, 'Patuca                                                                                                                                                                                                  ', 159);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (606, 'Shimpis                                                                                                                                                                                                 ', 166);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (607, 'Yaupi                                                                                                                                                                                                   ', 166);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (608, 'Bomboiza                                                                                                                                                                                                ', 157);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (609, 'San Juan Bosco                                                                                                                                                                                          ', 167);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (610, 'Logroño                                                                                                                                                                                                 ', 166);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (611, 'Huambi                                                                                                                                                                                                  ', 160);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (612, 'Santa Susana de Chiviaza (Cab. en Chiviaza)                                                                                                                                                             ', 158);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (613, 'Tuutinentza                                                                                                                                                                                             ', 161);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (614, 'Yunganza (Cab. en El Rosario)                                                                                                                                                                           ', 158);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (615, 'Copal                                                                                                                                                                                                   ', 159);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (616, 'Tayuza                                                                                                                                                                                                  ', 159);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (617, 'San José de Morona                                                                                                                                                                                      ', 165);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (618, 'Indanza                                                                                                                                                                                                 ', 158);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (619, 'Nueva Tarqui                                                                                                                                                                                            ', 157);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (620, 'San Luis de El Acho (Cab. en El Acho)                                                                                                                                                                   ', 159);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (621, 'Huamboya                                                                                                                                                                                                ', 162);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (622, 'Huasaga (Cab. en Wampuik)                                                                                                                                                                               ', 161);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (623, 'Tena                                                                                                                                                                                                    ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (624, 'Archidona                                                                                                                                                                                               ', 169);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (625, 'Nuevo Rocafuerte                                                                                                                                                                                        ', 213);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (626, 'Puerto Francisco de Orellana (El Coca)                                                                                                                                                                  ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (627, 'El Chaco                                                                                                                                                                                                ', 170);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (628, 'Baeza                                                                                                                                                                                                   ', 171);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (629, 'Puerto Misahualli                                                                                                                                                                                       ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (630, 'Cuyuja                                                                                                                                                                                                  ', 171);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (631, 'Ahuano                                                                                                                                                                                                  ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (632, 'La Joya de los Sachas                                                                                                                                                                                   ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (633, 'Chontapunta                                                                                                                                                                                             ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (634, 'Carlos Julio Arosemena Tola                                                                                                                                                                             ', 172);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (635, 'Cotundo                                                                                                                                                                                                 ', 169);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (636, 'Loreto                                                                                                                                                                                                  ', 216);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (637, 'Cosanga                                                                                                                                                                                                 ', 171);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (638, 'San Francisco de Borja (Virgilio Dávila)                                                                                                                                                                ', 171);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (639, 'Puerto Murialdo                                                                                                                                                                                         ', 216);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (640, 'Tálag                                                                                                                                                                                                   ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (641, 'San Carlos                                                                                                                                                                                              ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (642, 'Puerto Napo                                                                                                                                                                                             ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (643, 'San Sebastián del Coca                                                                                                                                                                                  ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (644, 'Santa Rosa                                                                                                                                                                                              ', 170);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (645, 'Sardinas                                                                                                                                                                                                ', 170);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (646, 'Dayuma                                                                                                                                                                                                  ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (647, 'Puyo                                                                                                                                                                                                    ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (648, 'Mera                                                                                                                                                                                                    ', 174);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (649, 'Madre Tierra                                                                                                                                                                                            ', 174);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (650, 'Shell                                                                                                                                                                                                   ', 174);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (651, 'Curaray                                                                                                                                                                                                 ', 175);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (652, 'Diez de Agosto                                                                                                                                                                                          ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (653, 'Fátima                                                                                                                                                                                                  ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (654, 'Veracruz  (Cab. en Indillama)                                                                                                                                                                           ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (655, 'Montalvo (Andoas)                                                                                                                                                                                       ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (656, 'Tarqui                                                                                                                                                                                                  ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (657, 'Teniente Hugo Ortiz                                                                                                                                                                                     ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (658, 'Arajuno                                                                                                                                                                                                 ', 175);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (659, 'Pomona                                                                                                                                                                                                  ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (660, 'Canelos                                                                                                                                                                                                 ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (661, 'Simón Bolívar  (Cab. en Mushullacta)                                                                                                                                                                    ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (662, 'Sarayacu                                                                                                                                                                                                ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (663, 'Santa Clara                                                                                                                                                                                             ', 176);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (664, 'El Triunfo                                                                                                                                                                                              ', 173);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (665, 'Quito Distrito Metropolitano                                                                                                                                                                            ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (666, 'Alangasí                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (667, 'Conocoto                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (668, 'Nanegalito                                                                                                                                                                                              ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (669, 'Cayambe                                                                                                                                                                                                 ', 178);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (670, 'Machachi                                                                                                                                                                                                ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (671, 'Sangolquí                                                                                                                                                                                               ', 180);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (672, 'Santo Domingo de los Colorados                                                                                                                                                                          ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (673, 'Yaruquí                                                                                                                                                                                                 ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (674, 'Amaguaña                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (675, 'Atahualpa                                                                                                                                                                                               ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (676, 'Calderón                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (677, 'Calacalí                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (678, 'Cumbayá                                                                                                                                                                                                 ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (679, 'Checa (Chilpa)                                                                                                                                                                                          ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (680, 'Guayllabamba                                                                                                                                                                                            ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (681, 'Gualea                                                                                                                                                                                                  ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (682, 'Mindo                                                                                                                                                                                                   ', 181);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (683, 'Nanegal                                                                                                                                                                                                 ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (684, 'Nono                                                                                                                                                                                                    ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (685, 'Pacto                                                                                                                                                                                                   ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (686, 'Pedro Vicente Maldonado                                                                                                                                                                                 ', 182);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (687, 'Pifo                                                                                                                                                                                                    ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (688, 'Píntag                                                                                                                                                                                                  ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (689, 'Pomasqui                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (690, 'Puéllaro                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (691, 'Puembo                                                                                                                                                                                                  ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (692, 'El Quinche                                                                                                                                                                                              ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (693, 'San Antonio                                                                                                                                                                                             ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (694, 'San José de Minas                                                                                                                                                                                       ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (695, 'San Miguel de los Bancos                                                                                                                                                                                ', 181);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (696, 'Tumbaco                                                                                                                                                                                                 ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (697, 'Zámbiza                                                                                                                                                                                                 ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (698, 'Nayón                                                                                                                                                                                                   ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (699, 'Puerto Quito                                                                                                                                                                                            ', 183);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (700, 'Cangahua                                                                                                                                                                                                ', 178);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (701, 'Olmedo (Pesillo)                                                                                                                                                                                        ', 178);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (702, 'Otón                                                                                                                                                                                                    ', 178);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (703, 'Ascázubi                                                                                                                                                                                                ', 178);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (704, 'Alóag                                                                                                                                                                                                   ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (705, 'Manuel Cornejo Astorga (Tandapi)                                                                                                                                                                        ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (706, 'Tambillo                                                                                                                                                                                                ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (707, 'Uyumbicho                                                                                                                                                                                               ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (708, 'Aloasí                                                                                                                                                                                                  ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (709, 'Tabacundo                                                                                                                                                                                               ', 184);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (710, 'La Esperanza                                                                                                                                                                                            ', 184);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (711, 'Malchinguí                                                                                                                                                                                              ', 184);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (712, 'Tocachi                                                                                                                                                                                                 ', 184);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (713, 'Cotogchoa                                                                                                                                                                                               ', 180);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (714, 'La Concordia                                                                                                                                                                                            ', 217);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (715, 'Alluriquín                                                                                                                                                                                              ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (716, 'San Jacinto del Bua                                                                                                                                                                                     ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (717, 'Tupigachi                                                                                                                                                                                               ', 184);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (718, 'El Chaupi                                                                                                                                                                                               ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (719, 'Santa Rosa de Cuzubamba                                                                                                                                                                                 ', 178);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (720, 'Lloa                                                                                                                                                                                                    ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (721, 'Llano Chico                                                                                                                                                                                             ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (722, 'Tababela                                                                                                                                                                                                ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (723, 'Perucho                                                                                                                                                                                                 ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (724, 'Chavezpamba                                                                                                                                                                                             ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (725, 'La Merced                                                                                                                                                                                               ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (726, 'Santa María del Toachi                                                                                                                                                                                  ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (727, 'Luz de América                                                                                                                                                                                          ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (728, 'Guangopolo                                                                                                                                                                                              ', 177);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (729, 'Cutuglahua                                                                                                                                                                                              ', 179);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (730, 'Valle Hermoso                                                                                                                                                                                           ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (731, 'Matriz                                                                                                                                                                                                  ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (732, 'Atocha - Ficoa                                                                                                                                                                                          ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (733, 'La Merced                                                                                                                                                                                               ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (734, 'Pelileo                                                                                                                                                                                                 ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (735, 'Píllaro                                                                                                                                                                                                 ', 187);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (736, 'San Francisco                                                                                                                                                                                           ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (737, 'Huachi Loreto                                                                                                                                                                                           ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (738, 'Augusto N. Martínez (Mundugleo)                                                                                                                                                                         ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (739, 'Cevallos                                                                                                                                                                                                ', 188);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (740, 'Mocha                                                                                                                                                                                                   ', 189);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (741, 'Pasa                                                                                                                                                                                                    ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (742, 'Pilaguín (Pilahuín)                                                                                                                                                                                     ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (743, 'Quisapincha (Quizapincha)                                                                                                                                                                               ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (744, 'Atahualpa (Chisalata)                                                                                                                                                                                   ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (745, 'Constantino Fernández (Cab. en Cullitahua)                                                                                                                                                              ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (746, 'Izamba                                                                                                                                                                                                  ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (747, 'Picaigua                                                                                                                                                                                                ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (748, 'Santa Rosa                                                                                                                                                                                              ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (749, 'Tisaleo                                                                                                                                                                                                 ', 190);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (750, 'Juan Benigno Vela                                                                                                                                                                                       ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (751, 'Ambatillo                                                                                                                                                                                               ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (752, 'Huachi Grande                                                                                                                                                                                           ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (753, 'Totoras                                                                                                                                                                                                 ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (754, 'Quinchicoto                                                                                                                                                                                             ', 190);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (755, 'Río Negro                                                                                                                                                                                               ', 191);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (756, 'Río Verde                                                                                                                                                                                               ', 191);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (757, 'Patate                                                                                                                                                                                                  ', 192);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (758, 'Cotaló                                                                                                                                                                                                  ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (759, 'Guambaló (Huambaló)                                                                                                                                                                                     ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (760, 'Salasaca                                                                                                                                                                                                ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (761, 'Benítez (Pachanlica)                                                                                                                                                                                    ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (762, 'San José de Poalo                                                                                                                                                                                       ', 187);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (763, 'San Miguelito                                                                                                                                                                                           ', 187);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (764, 'San Andrés                                                                                                                                                                                              ', 187);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (765, 'Quero                                                                                                                                                                                                   ', 193);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (766, 'Yanayacu - Mochapata (Cab. en Yanayacu)                                                                                                                                                                 ', 193);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (767, 'Cunchibamba                                                                                                                                                                                             ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (768, 'Unamuncho                                                                                                                                                                                               ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (769, 'Montalvo                                                                                                                                                                                                ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (770, 'Huachi Chico                                                                                                                                                                                            ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (771, 'Celiano Monge                                                                                                                                                                                           ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (772, 'Chiquicha (Cab. en Chiquicha Grande)                                                                                                                                                                    ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (773, 'Sucre (Cab. en Sucre-Patate Urcu)                                                                                                                                                                       ', 192);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (774, 'El Triunfo                                                                                                                                                                                              ', 192);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (775, 'San Fernando (Pasa San Fernando)                                                                                                                                                                        ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (776, 'García Moreno (Chumaqui)                                                                                                                                                                                ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (777, 'El Rosario (Rumichaca)                                                                                                                                                                                  ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (778, 'Bolívar                                                                                                                                                                                                 ', 186);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (779, 'Emilio María Terán (Rumipamba)                                                                                                                                                                          ', 187);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (780, 'Pishilata                                                                                                                                                                                               ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (781, 'Baños de Agua Santa                                                                                                                                                                                     ', 191);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (782, 'La Península                                                                                                                                                                                            ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (783, 'Zamora                                                                                                                                                                                                  ', 194);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (784, 'Yantzaza (Yanzatza)                                                                                                                                                                                     ', 195);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (785, ' Zumba                                                                                                                                                                                                  ', 196);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (786, 'Cumbaratza                                                                                                                                                                                              ', 194);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (787, 'Los Encuentros                                                                                                                                                                                          ', 195);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (788, 'Zumbi                                                                                                                                                                                                   ', 197);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (789, 'Guadalupe                                                                                                                                                                                               ', 194);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (790, 'Guayzimi                                                                                                                                                                                                ', 198);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (791, 'Imbana (La Victoria de Imbana)                                                                                                                                                                          ', 194);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (792, 'El Pangui                                                                                                                                                                                               ', 199);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (793, 'Paquisha                                                                                                                                                                                                ', 200);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (794, 'Chito                                                                                                                                                                                                   ', 196);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (795, 'El Chorro                                                                                                                                                                                               ', 196);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (796, 'Palanda                                                                                                                                                                                                 ', 201);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (797, 'Valladolid                                                                                                                                                                                              ', 201);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (798, 'La Chonta                                                                                                                                                                                               ', 196);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (799, 'El Porvenir del Carmen                                                                                                                                                                                  ', 201);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (800, '28 de Mayo (San José de Yacuambi)                                                                                                                                                                       ', 202);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (801, 'Tutupali                                                                                                                                                                                                ', 202);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (802, 'San Carlos de las Minas                                                                                                                                                                                 ', 194);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (803, 'San Francisco del Vergel                                                                                                                                                                                ', 201);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (804, 'La Paz                                                                                                                                                                                                  ', 202);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (805, 'Chicaña                                                                                                                                                                                                 ', 195);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (806, 'El Guisme                                                                                                                                                                                               ', 199);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (807, 'Puerto Baquerizo Moreno                                                                                                                                                                                 ', 203);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (808, 'Puerto Ayora                                                                                                                                                                                            ', 204);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (809, 'Isla Santa María (Floreana) (Cab. en  Pto. Velasco Ibarra)                                                                                                                                              ', 203);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (810, 'Puerto Villamil                                                                                                                                                                                         ', 205);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (811, 'El Progreso                                                                                                                                                                                             ', 203);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (812, 'Bellavista                                                                                                                                                                                              ', 204);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (813, 'Nueva Loja                                                                                                                                                                                              ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (814, 'Shushufindi                                                                                                                                                                                             ', 207);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (815, 'El Dorado de Cascales                                                                                                                                                                                   ', 208);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (816, 'Lumbaquí                                                                                                                                                                                                ', 209);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (817, 'El Playón de San Francisco                                                                                                                                                                              ', 210);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (818, 'Limoncocha                                                                                                                                                                                              ', 207);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (819, 'Tarapoa                                                                                                                                                                                                 ', 211);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (820, 'La Bonita                                                                                                                                                                                               ', 210);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (821, 'Sevilla                                                                                                                                                                                                 ', 208);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (822, 'Santa Bárbara                                                                                                                                                                                           ', 210);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (823, 'Puerto El Carmen del Putumayo                                                                                                                                                                           ', 212);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (824, 'Palma Roja                                                                                                                                                                                              ', 212);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (825, 'Jambelí                                                                                                                                                                                                 ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (826, 'Pacayacu                                                                                                                                                                                                ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (827, 'General Farfán                                                                                                                                                                                          ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (828, 'San Roque (Cab. en San Vicente)                                                                                                                                                                         ', 207);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (829, 'El Reventador                                                                                                                                                                                           ', 209);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (830, 'Santa Cecilia                                                                                                                                                                                           ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (831, 'Llacao                                                                                                                                                                                                  ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (832, 'Turi                                                                                                                                                                                                    ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (833, 'San Gerardo                                                                                                                                                                                             ', 2);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (834, 'Daniel Córdova Toral (El Oriente)                                                                                                                                                                       ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (835, 'Zhidmad                                                                                                                                                                                                 ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (836, 'Bulán(José Víctor Izquierdo)                                                                                                                                                                            ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (837, 'Chicán (Guillermo Ortega)                                                                                                                                                                               ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (838, 'El Cabo                                                                                                                                                                                                 ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (839, 'Tomebamba                                                                                                                                                                                               ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (840, 'San José de Raranga                                                                                                                                                                                     ', 5);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (841, 'Palo Quemado                                                                                                                                                                                            ', 40);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (842, 'Guanando                                                                                                                                                                                                ', 50);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (843, 'Puela                                                                                                                                                                                                   ', 51);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (844, 'Quingue (Olmedo Perdomo Franco)                                                                                                                                                                         ', 70);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (845, 'Carondelet                                                                                                                                                                                              ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (846, 'Tonsupa                                                                                                                                                                                                 ', 72);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (847, 'Chantaco                                                                                                                                                                                                ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (848, 'San Pedro de Vilcabamba                                                                                                                                                                                 ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (849, 'Quinara                                                                                                                                                                                                 ', 105);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (850, 'Utuana                                                                                                                                                                                                  ', 106);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (851, 'El Tablón                                                                                                                                                                                               ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (852, 'Garzareal                                                                                                                                                                                               ', 114);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (853, 'Limones                                                                                                                                                                                                 ', 114);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (854, 'Fundochamba                                                                                                                                                                                             ', 116);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (855, 'Chibunga                                                                                                                                                                                                ', 136);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (856, 'San Francisco de Novillo (Cab. en Novillo)                                                                                                                                                              ', 144);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (857, 'Puerto de Cayo                                                                                                                                                                                          ', 137);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (858, 'San Isidro                                                                                                                                                                                              ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (859, 'Sangay (Cab. en Nayamanaca)                                                                                                                                                                             ', 164);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (860, '16 de Agosto                                                                                                                                                                                            ', 164);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (861, 'Pano                                                                                                                                                                                                    ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (862, 'Pachicutza                                                                                                                                                                                              ', 199);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (863, 'Dureno                                                                                                                                                                                                  ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (864, 'Enokanqui                                                                                                                                                                                               ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (865, 'La Belleza                                                                                                                                                                                              ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (866, 'San José de Guayusa                                                                                                                                                                                     ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (867, 'Puerto Limón                                                                                                                                                                                            ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (868, 'El Paraíso                                                                                                                                                                                              ', 65);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (869, 'El Rosario                                                                                                                                                                                              ', 157);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (870, 'Lluzhapa                                                                                                                                                                                                ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (871, 'Colaisaca                                                                                                                                                                                               ', 106);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (872, 'San Francisco de Chinimbimi                                                                                                                                                                             ', 159);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (873, 'Papallacta                                                                                                                                                                                              ', 171);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (874, 'Gonzalo Díaz de Pineda (El Bombón)                                                                                                                                                                      ', 170);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (875, 'Timbara                                                                                                                                                                                                 ', 194);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (876, 'San Pedro de Suma                                                                                                                                                                                       ', 140);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (877, 'Dug Dug                                                                                                                                                                                                 ', 6);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (878, 'Jerusalén                                                                                                                                                                                               ', 26);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (879, 'Sanguillín                                                                                                                                                                                              ', 106);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (880, 'El Ingenio                                                                                                                                                                                              ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (881, 'Bellavista                                                                                                                                                                                              ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (882, '27 de Abril (Cab. en La Naranja)                                                                                                                                                                        ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (883, 'San José de Payamino                                                                                                                                                                                    ', 216);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (884, 'San José de Dahuano                                                                                                                                                                                     ', 216);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (885, 'San Pablo de Ushpayacu                                                                                                                                                                                  ', 169);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (886, 'San Pedro de Los Cofanes                                                                                                                                                                                ', 207);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (887, 'Simón Bolívar (Julio Moreno)                                                                                                                                                                            ', 221);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (888, 'Salango                                                                                                                                                                                                 ', 145);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (889, 'Anchayacu                                                                                                                                                                                               ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (890, 'El Esfuerzo                                                                                                                                                                                             ', 218);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (891, 'Puerto Libre                                                                                                                                                                                            ', 209);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (892, 'Baños                                                                                                                                                                                                   ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (893, 'Bellavista                                                                                                                                                                                              ', 200);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (894, 'San Andrés                                                                                                                                                                                              ', 196);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (895, 'Río Bonito                                                                                                                                                                                              ', 59);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (896, 'Santa Rosa (Incluye La Isla Baltra)                                                                                                                                                                     ', 204);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (897, 'El Rosario                                                                                                                                                                                              ', 76);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (898, 'El Eno                                                                                                                                                                                                  ', 206);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (899, 'Río Blanco                                                                                                                                                                                              ', 156);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (900, 'Arapicos                                                                                                                                                                                                ', 164);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (901, 'San Antonio (Cab. en San Antonio Centro)                                                                                                                                                                ', 158);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (902, 'San Carlos                                                                                                                                                                                              ', 82);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (903, 'Inés Arango (Cab. en Western)                                                                                                                                                                           ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (904, 'Taracoa (Nueva Esperanza: Yuca)                                                                                                                                                                         ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (905, 'San Vicente de Huaticocha                                                                                                                                                                               ', 216);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (906, 'San Miguel de Conchay                                                                                                                                                                                   ', 158);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (907, 'Santa Marianita (Boca de Pacoche)                                                                                                                                                                       ', 138);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (908, 'Oyacachi                                                                                                                                                                                                ', 170);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (909, 'Remigio Crespo Toral (Gulag)                                                                                                                                                                            ', 3);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (910, 'Siete de Julio                                                                                                                                                                                          ', 207);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (911, 'Ambato                                                                                                                                                                                                  ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (912, 'San Juan de Muyuna                                                                                                                                                                                      ', 168);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (913, 'San Francisco                                                                                                                                                                                           ', 101);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (914, 'El Airo                                                                                                                                                                                                 ', 111);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (915, 'Pumpuentsa                                                                                                                                                                                              ', 161);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (916, 'San Sebastión                                                                                                                                                                                           ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (917, 'Yanuncay                                                                                                                                                                                                ', 1);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (918, 'Pinguilí                                                                                                                                                                                                ', 189);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (919, 'Presidente Urbina (Chagrapamba -Patzucul)                                                                                                                                                               ', 187);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (920, 'Rumipamba                                                                                                                                                                                               ', 193);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (921, 'Chantilín                                                                                                                                                                                               ', 42);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (922, 'Maldonado                                                                                                                                                                                               ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (923, 'Unión Milagreña                                                                                                                                                                                         ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (924, 'Eloy Alfaro (San Felipe)                                                                                                                                                                                ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (925, 'San Bartolomé de Pinllog                                                                                                                                                                                ', 185);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (926, 'Mariscal Sucre                                                                                                                                                                                          ', 33);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (927, 'El Edén                                                                                                                                                                                                 ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (928, 'Tiputini                                                                                                                                                                                                ', 213);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (929, 'Pompeya                                                                                                                                                                                                 ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (930, 'San Antonio de Bayushig                                                                                                                                                                                 ', 51);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (931, 'La Candelaria                                                                                                                                                                                           ', 51);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (932, 'Sinsao                                                                                                                                                                                                  ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (933, 'Abañin                                                                                                                                                                                                  ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (934, 'Licán                                                                                                                                                                                                   ', 43);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (935, 'El Arenal                                                                                                                                                                                               ', 109);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (936, 'Régulo de Mora                                                                                                                                                                                          ', 17);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (937, 'Tarqui                                                                                                                                                                                                  ', 74);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (938, 'Avila (Cab. en Huiruno)                                                                                                                                                                                 ', 216);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (939, 'Carcabón                                                                                                                                                                                                ', 55);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (940, 'Tomás de Berlanga (Santo Tomás)                                                                                                                                                                         ', 205);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (941, 'San Carlos de Limón                                                                                                                                                                                     ', 167);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (942, 'El Ideal                                                                                                                                                                                                ', 157);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (943, 'Santiago de Pananza                                                                                                                                                                                     ', 167);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (944, 'El Retiro                                                                                                                                                                                               ', 53);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (945, 'Arq. Sixto Durán Ballén                                                                                                                                                                                 ', 155);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (946, 'San Luis de Armenia                                                                                                                                                                                     ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (947, 'Nuevo Paraíso (Cab. en Unión Chimborazo)                                                                                                                                                                ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (948, 'García Moreno                                                                                                                                                                                           ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (949, 'Tres de Noviembre                                                                                                                                                                                       ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (950, 'Lago San Pedro                                                                                                                                                                                          ', 215);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (951, 'Sumaypamba                                                                                                                                                                                              ', 110);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (952, 'Zurmi                                                                                                                                                                                                   ', 198);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (953, 'Nuevo Paraíso                                                                                                                                                                                           ', 198);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (954, 'Tundayme                                                                                                                                                                                                ', 199);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (955, 'Nuevo Quito                                                                                                                                                                                             ', 200);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (956, 'Cochapamba                                                                                                                                                                                              ', 42);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (957, 'Morales                                                                                                                                                                                                 ', 64);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (958, 'Arcapamba                                                                                                                                                                                               ', 58);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (959, 'La Libertad                                                                                                                                                                                             ', 65);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (960, 'Juan Montalvo (San Sebastián)                                                                                                                                                                           ', 36);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (961, 'San José                                                                                                                                                                                                ', 63);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (962, 'Timbire                                                                                                                                                                                                 ', 68);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (963, 'Alto Tambo (Cab. en Guadual)                                                                                                                                                                            ', 69);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (964, 'Cumandá (Cab. en Colonia Agrícola Sevilla del Oro)                                                                                                                                                      ', 164);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (965, 'Ulba                                                                                                                                                                                                    ', 191);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (966, 'Juan Bautista Aguirre (Los Tintos)                                                                                                                                                                      ', 81);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (967, 'Pañacocha                                                                                                                                                                                               ', 207);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (968, 'Santa Rosa de Sucumbíos                                                                                                                                                                                 ', 208);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (969, 'La Canela                                                                                                                                                                                               ', 201);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (970, 'Alejandro Labaka                                                                                                                                                                                        ', 214);
INSERT INTO "Parroquias" ("idParroquias", "Parroquia", "idCanton") VALUES (971, 'Luis Cordero Vega                                                                                                                                                                                       ', 3);


--
-- TOC entry 2426 (class 0 OID 2292786)
-- Dependencies: 183
-- Data for Name: Provincias; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (1, 'Azuay                                        ', '1        ', '-2.883333      ', '-79            ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (2, 'Bolivar                                      ', '2        ', '-1.6           ', '-79            ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (3, 'Cañar                                        ', '3        ', '-2733333       ', '-78833333      ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (4, 'Carchi                                       ', '4        ', '0.75           ', '-78083333      ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (5, 'Cotopaxi                                     ', '5        ', '-0.680556      ', '-78437778      ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (6, 'Chimborazo                                   ', '6        ', '-1469167       ', '-788175        ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (7, 'El Oro                                       ', '7        ', '-3266669       ', '-799667        ', 1);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (8, 'Esmeraldas                                   ', '8        ', '0.95           ', '-79666667      ', 1);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (9, 'Guayas                                       ', '9        ', '-2.2           ', '-799667        ', 1);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (10, 'Imbabura                                     ', '10       ', '0.35           ', '-78133333      ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (11, 'Loja                                         ', '11       ', '-3990556       ', '-79205         ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (12, 'Los Rios                                     ', '12       ', '-1766669       ', '-79.45         ', 1);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (13, 'Manabi                                       ', '13       ', '-1052219       ', '-804506        ', 1);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (14, 'Morona Santiago                              ', '14       ', '-2366667       ', '-78133333      ', 3);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (15, 'Napo                                         ', '15       ', '0.989          ', '-778159        ', 3);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (16, 'Pastaza                                      ', '16       ', '-1066667       ', '-78001111      ', 3);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (17, 'Pichincha                                    ', '17       ', '-0.25          ', '-78583333      ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (18, 'Tungurahua                                   ', '18       ', '-1233333       ', '-78616667      ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (19, 'Zamora Chinchipe                             ', '19       ', '-2883333       ', '-79            ', 3);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (20, 'Galapagos                                    ', '20       ', '1.39           ', '-92            ', 4);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (21, 'Sucumbios                                    ', '21       ', '-0.083333      ', '-76883333      ', 3);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (22, 'Orellana                                     ', '22       ', '-0.933333      ', '-75666667      ', 3);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (23, 'Santo Domingo De Los Tsachilas               ', '23       ', '-0.333333      ', '-79.25         ', 2);
INSERT INTO "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") VALUES (24, 'Santa Elena                                  ', '24       ', '-22267         ', '-808583        ', 1);


--
-- TOC entry 2425 (class 0 OID 2292617)
-- Dependencies: 182
-- Data for Name: Regiones; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "Regiones" ("idRegiones", "Region") VALUES (1, 'Costa                         ');
INSERT INTO "Regiones" ("idRegiones", "Region") VALUES (2, 'Sierra                        ');
INSERT INTO "Regiones" ("idRegiones", "Region") VALUES (3, 'Amazonia                      ');
INSERT INTO "Regiones" ("idRegiones", "Region") VALUES (4, 'Insular                       ');


--
-- TOC entry 2435 (class 0 OID 2304769)
-- Dependencies: 192
-- Data for Name: Salud; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (1, 1, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (2, 1, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (3, 1, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (4, 2, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (5, 3, 5);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (6, 3, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (7, 3, 7);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (8, 3, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (9, 3, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (10, 3, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (11, 3, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (12, 3, 9);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (13, 3, 10);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (14, 4, 5);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (15, 4, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (16, 4, 11);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (17, 4, 12);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (18, 4, 13);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (19, 4, 7);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (20, 4, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (21, 4, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (22, 4, 14);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (23, 4, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (24, 4, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (25, 4, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (26, 4, 9);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (27, 4, 10);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (28, 5, 15);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (29, 5, 7);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (30, 5, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (31, 5, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (32, 5, 14);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (33, 5, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (34, 5, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (35, 5, 10);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (36, 6, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (37, 6, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (38, 7, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (39, 7, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (40, 8, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (41, 8, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (42, 9, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (43, 10, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (44, 11, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (45, 12, 16);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (46, 12, 13);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (47, 12, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (48, 12, 10);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (49, 13, 16);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (50, 13, 5);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (51, 13, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (52, 13, 12);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (53, 13, 13);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (54, 13, 7);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (55, 13, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (56, 13, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (57, 13, 14);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (58, 13, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (59, 13, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (60, 13, 17);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (61, 13, 9);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (62, 13, 10);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (63, 14, 18);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (64, 14, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (65, 14, 12);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (66, 14, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (67, 14, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (68, 14, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (69, 15, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (70, 15, 12);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (71, 15, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (72, 15, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (73, 16, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (74, 17, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (75, 18, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (76, 18, 11);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (77, 18, 12);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (78, 18, 13);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (79, 18, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (80, 18, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (81, 18, 14);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (82, 18, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (83, 18, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (84, 18, 19);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (85, 18, 9);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (86, 18, 20);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (87, 18, 21);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (88, 19, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (89, 20, 11);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (90, 20, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (91, 20, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (92, 20, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (93, 21, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (94, 22, 9);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (95, 23, 11);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (96, 23, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (97, 24, 11);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (98, 24, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (99, 24, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (100, 24, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (101, 25, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (102, 26, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (103, 27, 15);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (104, 27, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (105, 27, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (106, 27, 14);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (107, 27, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (108, 27, 8);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (109, 27, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (110, 28, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (111, 29, 6);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (112, 29, 7);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (113, 29, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (114, 13, 4);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (115, 26, 15);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (116, 26, 2);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (117, 26, 3);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (118, 26, 14);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (119, 26, 1);
INSERT INTO "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") VALUES (120, 26, 4);


--
-- TOC entry 2431 (class 0 OID 2301520)
-- Dependencies: 188
-- Data for Name: SectorEstablecimiento; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "SectorEstablecimiento" ("idSector", "Sector") VALUES (1, 'Sector Privado Con Fines De Lucro       ');
INSERT INTO "SectorEstablecimiento" ("idSector", "Sector") VALUES (2, 'Sector Público                          ');
INSERT INTO "SectorEstablecimiento" ("idSector", "Sector") VALUES (3, 'Sector Privado Sin Fines De Lucro       ');


--
-- TOC entry 2429 (class 0 OID 2300859)
-- Dependencies: 186
-- Data for Name: TipoEstablecimiento; Type: TABLE DATA; Schema: residuosPeligrosos; Owner: postgres
--

INSERT INTO "TipoEstablecimiento" ("idTipo", "Tipo") VALUES (1, 'Agudo                                   ');
INSERT INTO "TipoEstablecimiento" ("idTipo", "Tipo") VALUES (2, 'Clínicas Generales Sin Especialidad     ');
INSERT INTO "TipoEstablecimiento" ("idTipo", "Tipo") VALUES (3, 'Crónico                                 ');
INSERT INTO "TipoEstablecimiento" ("idTipo", "Tipo") VALUES (4, 'Establecimientos Sin Internación        ');
INSERT INTO "TipoEstablecimiento" ("idTipo", "Tipo") VALUES (5, 'Sin Tipo (hospitales Básicos)           ');


--
-- TOC entry 2291 (class 2606 OID 2294567)
-- Name: Cantones_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "Cantones_pkey" PRIMARY KEY ("idCantones");


--
-- TOC entry 2297 (class 2606 OID 2301102)
-- Name: ClasesEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "ClasesEstablecimiento"
    ADD CONSTRAINT "ClasesEstablecimiento_pkey" PRIMARY KEY ("idClases");


--
-- TOC entry 2303 (class 2606 OID 2304080)
-- Name: ClasesTiposEs_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "ClasesTiposEs"
    ADD CONSTRAINT "ClasesTiposEs_pkey" PRIMARY KEY ("idClaseTipo");


--
-- TOC entry 2301 (class 2606 OID 2302201)
-- Name: EntidadEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "EntidadEstablecimiento"
    ADD CONSTRAINT "EntidadEstablecimiento_pkey" PRIMARY KEY ("idEntidad");


--
-- TOC entry 2305 (class 2606 OID 2304282)
-- Name: EntodadSectorEs_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "EntidadSectorEs"
    ADD CONSTRAINT "EntodadSectorEs_pkey" PRIMARY KEY ("idEntidadSector");


--
-- TOC entry 2293 (class 2606 OID 2296114)
-- Name: Parroquias_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "Parroquias_pkey" PRIMARY KEY ("idParroquias");


--
-- TOC entry 2289 (class 2606 OID 2292790)
-- Name: Provincias_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "Provincias_pkey" PRIMARY KEY ("idProvincias");


--
-- TOC entry 2287 (class 2606 OID 2292621)
-- Name: Regiones_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Regiones"
    ADD CONSTRAINT "Regiones_pkey" PRIMARY KEY ("idRegiones");


--
-- TOC entry 2307 (class 2606 OID 2304773)
-- Name: Salud_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Salud"
    ADD CONSTRAINT "Salud_pkey" PRIMARY KEY ("idSalud");


--
-- TOC entry 2299 (class 2606 OID 2301524)
-- Name: SectorEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "SectorEstablecimiento"
    ADD CONSTRAINT "SectorEstablecimiento_pkey" PRIMARY KEY ("idSector");


--
-- TOC entry 2295 (class 2606 OID 2300863)
-- Name: TipoEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "TipoEstablecimiento"
    ADD CONSTRAINT "TipoEstablecimiento_pkey" PRIMARY KEY ("idTipo");


--
-- TOC entry 2309 (class 2606 OID 2294568)
-- Name: Cantones_idProvincia_fkey; Type: FK CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "Cantones_idProvincia_fkey" FOREIGN KEY ("idProvincia") REFERENCES "Provincias"("idProvincias");


--
-- TOC entry 2310 (class 2606 OID 2296115)
-- Name: Parroquias_idCanton_fkey; Type: FK CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "Parroquias_idCanton_fkey" FOREIGN KEY ("idCanton") REFERENCES "Cantones"("idCantones");


--
-- TOC entry 2308 (class 2606 OID 2292791)
-- Name: Provincias_idRegion_fkey; Type: FK CONSTRAINT; Schema: residuosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "Provincias_idRegion_fkey" FOREIGN KEY ("idRegion") REFERENCES "Regiones"("idRegiones");


--
-- TOC entry 2442 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-12-08 16:21:05 ECT

--
-- PostgreSQL database dump complete
--

