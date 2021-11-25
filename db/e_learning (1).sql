-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2021 a las 16:41:46
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `e_learning`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'jkev', '2013-11-18 15:25:33', 'Add Subject RIZAL'),
(2, 'jkev', '2013-11-18 15:27:08', 'Edit Subject RIZAL'),
(3, '', '2013-11-18 15:30:46', 'Edit Subject IS 221'),
(4, '', '2013-11-18 15:31:12', 'Edit Subject IS 222'),
(5, '', '2013-11-18 15:31:24', 'Edit Subject IS 223'),
(6, '', '2013-11-18 15:31:34', 'Edit Subject IS 224'),
(7, '', '2013-11-18 15:31:54', 'Edit Subject IS 227'),
(8, '', '2013-11-18 15:32:37', 'Add Subject IS 411B'),
(9, '', '2013-11-18 15:34:54', 'Edit User jkev'),
(10, 'jkev', '2014-01-17 13:26:18', 'Add User admin'),
(11, 'admin', '2019-04-22 09:46:36', 'Agregar Periodo 2019-2020'),
(12, 'admin', '2019-10-14 23:19:48', 'Agregar Curso MAT'),
(13, 'admin', '2019-10-14 23:20:37', 'Agregar Curso HISTO'),
(14, 'admin', '2021-11-14 12:07:52', 'Agregar Periodo 2022'),
(15, 'admin', '2021-11-14 12:17:13', 'Agregar Periodo 2019'),
(16, 'admin', '2021-11-14 12:18:33', 'Edit Subject CNC'),
(17, 'admin', '2021-11-14 14:07:01', 'Edit Subject CIENCIAS'),
(18, 'admin', '2021-11-16 07:13:05', 'Agregar Periodo 2019'),
(19, 'admin', '2021-11-16 08:03:53', 'Agregar Curso Ciencia'),
(20, 'admin', '2021-11-16 08:12:08', 'Agregar Periodo 2021'),
(21, 'admin', '2021-11-17 10:02:52', 'Edit Subject Ciencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'duro', 'A'),
(90, 36, 'suave', 'B'),
(91, 36, 'que', 'C'),
(92, 36, 'no hablo chacal', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(53, 'admin/uploads/6002_File_Práctica2.docx', '2021-11-17 11:32:07', 'Práctica #2 sobre la influencia del ambiente en los seres humanos.', 23, 192, 'Práctica #2 '),
(54, 'admin/uploads/9831_File_Práctica3.docx', '2021-11-17 11:33:01', 'Práctica #3 sobre las Ondas', 23, 192, 'Práctica #3'),
(55, 'admin/uploads/2396_File_Práctica4.docx', '2021-11-17 11:33:42', 'sobre el origen del sistema solar.', 23, 192, 'Práctica #4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(29, '9° A'),
(30, '9° B'),
(31, '9° C'),
(32, '9° D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 188, 300, 7),
(18, 192, 300, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n'),
(2, 188, '<p>Curso de Historia</p>\r\n'),
(3, 189, '<ul>\r\n	<li style=\"text-align: justify;\">Analizar los procesos estructuras y leyes que intervienen en la reproducci&oacute;n y los aportes de la tecnolog&iacute;a y la Ciencia para la aplicaci&oacute;n de m&eacute;todos detecci&oacute;n de problemas de selecci&oacute;n y reproducci&oacute;n de las especies.</li>\r\n	<li style=\"text-align: justify;\">Reconocer los desequilibrios que existen en la naturaleza a causa de la relaci&oacute;n ser humano,medio ambiente y la importancia de la Tecnolog&iacute;a, la medicina, los organismos de salud y la Educaci&oacute;n en la prevenci&oacute;n, control y tratamiento de enfermedades funcionales mentales, infecciosas y otras.</li>\r\n	<li style=\"text-align: justify;\">Relacionar la energ&iacute;a con las fuerzas din&aacute;micas que permiten mover las m&aacute;quinas, los cuerpos, el aire, el agua y otros materiales en el planeta Tierra.</li>\r\n	<li style=\"text-align: justify;\">Comprender la propagaci&oacute;n de la energ&iacute;a a trav&eacute;s del comportamiento y caracter&iacute;sticas de los diferentes tipos de ondas mec&aacute;nicas, medios de transmisi&oacute;n y &oacute;rganos de recepci&oacute;n.</li>\r\n	<li style=\"text-align: justify;\">Conocer las teor&iacute;as que intentan explicar los or&iacute;genes del Universo, del Sistema Solar, del Planeta Tierra, de la vida y del ser humano en el planeta que vivimos.</li>\r\n</ul>\r\n'),
(4, 192, '<ul>\r\n	<li style=\"text-align: justify;\">Analizar los procesos estructuras y leyes que intervienen en la reproducci&oacute;n y los aportes de la tecnolog&iacute;a y la Ciencia para la aplicaci&oacute;n de m&eacute;todos detecci&oacute;n de problemas de selecci&oacute;n y reproducci&oacute;n de las especies.&nbsp;</li>\r\n	<li style=\"text-align: justify;\">Reconocer los desequilibrios que existen en la naturaleza a causa de la relaci&oacute;n ser humano - medio ambiente y la importancia de la Tecnolog&iacute;a, la medicina, los organismos de salud y la Educaci&oacute;n en la prevenci&oacute;n, control y tratamiento de enfermedades funcionales mentales, infecciosas y otras.</li>\r\n	<li style=\"text-align: justify;\">Relacionar la energ&iacute;a con las fuerzas din&aacute;micas que permiten mover las m&aacute;quinas, los cuerpos, el aire, el agua y otros materiales en el planeta Tierra.</li>\r\n	<li style=\"text-align: justify;\">Comprender la propagaci&oacute;n de la energ&iacute;a a trav&eacute;s del comportamiento y caracter&iacute;sticas de los diferentes tipos de ondas mec&aacute;nicas, medios de transmisi&oacute;n y &oacute;rganos de recepci&oacute;n.</li>\r\n	<li style=\"text-align: justify;\">Conocer las teor&iacute;as que intentan explicar los or&iacute;genes del Universo, del Sistema Solar, del Planeta Tierra, de la vida y del ser humano en el planeta que vivimos.&nbsp;</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Misión</strong></span><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-family:sans-serif,arial,verdana,trebuchet ms\">&nbsp; &nbsp;</span><span style=\"font-family:sans-serif,arial,verdana,trebuchet ms; font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></pre>\r\n\r\n<p><span style=\"color:rgb(33, 33, 33); font-family:arial,sans-serif; font-size:16px; white-space:pre-wrap\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“Contribuir a la formación y a la extensión de la educación mediante la tecnología en condiciones de equidad en Panamá.”.</span></p>\r\n'),
(2, 'Vision', '<pre>\r\n<span style=\"font-size:large\"><strong>Visión</strong></span></pre>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:large\">&nbsp;&nbsp;</span><span style=\"color:rgb(33, 33, 33); font-family:arial,sans-serif; font-size:16px\">\"Convertirnos en una herramienta de referencia para la mejora de la educación en entornos tecnológicos variados y cambiantes gracias a la innovación y creación de conocimiento educativo.\"</span></p>\r\n\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORIA &nbsp;</span> </pre>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por Decreto Ley No. 18942, del 26 de agosto de 1971, fue creada la Universidad Nacional de Tacna, como una imperiosa necesidad de esta heroica tierra de Caplina buscando formar profesionales para la explotación de los recursos naturales y su eventual transformación, así como para la promoción social y económica de la región sur del país\r\n\r\nNuestra Alma Mater inicio sus actividades académicas el 13 de mayo de 1972 con una Sesión Solemne de Apertura del Año Académco en el Salón de Sesiones del ex-Palacio Municipal, con la presencia de distinguidas personalidades civiles, militares, eclesiásticas, en la que destacamos a quien luego fuera nuestro patrono, el Dr. Jorge Basadre Grohmann. El histórico Local Central, ubicado entre la Av. Bolognesi y la calle Pinto, cobijo a los primeros ingresantes y pasarían 27 años para que el 07 de noviembre de 1998 se transfiera definitivamente y a título gratuito este local a la Universidad.\r\n\r\nA partir del segundo semestre académico, a principios de octubre de 1972, la Universidad empezó a implementar su plana docente estable. Los nuevos profesores, desde 1973 empezaron a a asumir responsabilidades de gobierno en sus diversos niveles. El 20 de noviembre de 1979, el Consejo Nacional de la Universidad Peruana -CONUP- expidió la Resolución No. 8161-79-CONUP reconociendo en forma definitiva a la Universidad Nacional de Tacna y ordenando la constitución de sus Organos de Gobierno.\r\n\r\nEl primer gobierno estuvo a cargo de la Comisión Organizadora y de Gobierno, conformado por seis profesores representantes de las Universidades patrocinadoras: Universidad Mayor de San Marcos, Universidad Nacional de Ingeniería, Universidad Nacional Agraria La Molina. La Comisión Organizadora y de Gobierno tuvo un Presidente y dos Vice Presidentes. Los otros miembros desempeñaron los cargos de Directores Universitarios.\r\n\r\nEl 11 de julio de 1980, se expidió la Resolución No. 3058-80-UNTAC denominando a la institución como: \"UNIVERSIDAD NACIONAL DE TACNA JORGE BASADRE GROHMANN\" en reconocimiento al Dr. Jorge Basadre Grohmann por sus virtudes personales, a su consagración total a la causa del Perú, a su prolífica labor como historiador de la República, Escritor, Ensayista y como Hijo Ilustre de Tacna. Cuando se promulga la ley Universitaria No. 23733, el 09 de diciembre de 1983 por el Presidente de la República Arq. Fernando Belaúnde Terry, oficialmente tomó la denominación de: UNIVERSIDAD NACIONAL JORGE BASADRE GROHMANN.\r\n\r\nDesde 1985 y al amparo de la ley Universitaria No. 23733 y luego de pasar por una primera etapa con Comisiones Organizadoreas y Gobierno y por una segunda etapa de Rectores Interinos, la Universidad Nacional Jorge Basadre Grohmann inició su tercera etapa de elección de sus Autoridades y Organos de Gobierno en forma democrática y en Asambleas Universitarias.\r\n\r\nAcorde a los postulados de su creación y en función de la modernidad que comenzó a darse en la Universidad Peruana, la Universidad Nacional Jorge Basadre Grohmann tiene establecida como misión: Formar profesionales, investigadores y post-graduados creativos, competentes y de excelencia, comprometidos en la solución de los problemas de la comunidad. Genera y desarrolla conocimientos científicos, tecnológicos y humanísticos, útiles para elaborar alternativas y soluciones integrales, que permitan engrandecer la cultura, promover la justicia, la equidad social y la igualdad de oportunidades en nuestro país.\r\n\r\nLa sociedad Peruana espera de la Universidad, la formación de profesionales e investigadores con el nivel científico-humanístico y con capacidad crítica. Espera también sea capaz de entender la ciencia y generar la tecnología a fin de resolver los problemas de condición y de desarrollo de nuestro país. Ello lo hemos asumido con mas entereza en la última década del siglo y hoy en los umbrales de un nuevo milenio buscamos la modernidad y la acreditación universitaria para constituirnos en una de las mejores universidades de nuestro país.</p>\r\n'),
(4, 'Footer', '<p style=\"text-align:center\">CU&Aacute;NTO SABES DE CIENCIAS</p>\r\n\r\n<p style=\"text-align:center\">Derechos Reservados &reg;2021</p>\r\n'),
(5, 'Upcoming Events', '<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; font-family:proximanova-light,helvetica,arial,sans-serif; font-size:14px; line-height:1.6em; margin-left:auto; margin-right:auto; max-width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Matricula&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 4 de Enero al viernes, 26 de Febrero de 2021&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Inicio de Clases</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 1 de marzo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Primer Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 1 de Marzo 2021 al Viernes, 4 de Junio de 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Segundo Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 14 de Junio al Viernes, 3 de Septiembre de 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tercer Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 13 de Septiembre al Viernes, 17 de Diciembre de 2021</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><font face=\"trebuchet ms, geneva\">PLATAFORMA EDUCATIVA - CUANTO SABES DE CIENCIAS 2021</font></p>\r\n'),
(7, 'News', '<pre>\r\n<font size=\"3\"><strong><em>Noticias Recientes</em></strong></font></pre>\r\n'),
(8, 'Announcements', '<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; font-family:proximanova-light,helvetica,arial,sans-serif; font-size:14px; line-height:1.6em; margin-left:auto; margin-right:auto; max-width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Matricula&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 4 de Enero al viernes, 26 de Febrero de 2021&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Inicio de Clases</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 1 de marzo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Primer Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 1 de Marzo 2021 al Viernes, 4 de Junio de 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Segundo Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 14 de Junio al Viernes, 3 de Septiembre de 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tercer Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 13 de Septiembre al Viernes, 17 de Diciembre de 2021</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDARIO ACADÉMICO 2021</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Matricula&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 4 de Enero al viernes, 26 de Febrero de 2021&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Inicio de Clases</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 1 de marzo </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Primer Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 1 de Marzo 2021 al Viernes, 4 de Junio de 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Segundo Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 14 de Junio al Viernes, 3 de Septiembre de 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tercer Trimestre</p>\r\n			</td>\r\n			<td>\r\n			<p>Lunes, 13 de Septiembre al Viernes, 17 de Diciembre de 2021</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIO</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Central Telefonica&nbsp;: (507) 583000</li>\r\n	<li>E-Mail:  Soporte@csd.com</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', ''),
(13, 'motto', '<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Plataforma Educativa - Cu&aacute;nto Sabes de Ciencias</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Te prepar&aacute;mos para el &eacute;xtio.</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campus</strong></span></pre>\r\n\r\n<ul>\r\n	<li>SEDE Panamá Centro</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(2, 'Ciencias Naturales y Exactas', 'Jael Garcia Sam');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Practica #1', 188, '11/15/2021', '11/15/2021'),
(19, 'Clase del cuerpo humano', 189, '11/16/2021', '11/16/2021'),
(20, 'Entrega de Práctica #1', 192, '11/19/2021', '11/19/2021'),
(21, 'Es día libre', 192, '11/18/2021', '11/18/2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(149, 'admin/uploads/7588_File_09 - Prem - Ciencias Naturales_0.pdf', '2021-11-17 09:03:31', 'Documento que contiene todos los temas a abordar en el trimestre.', 23, 192, 'Guía 9no Grado ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', ''),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', ''),
(29, 15, 'cueco', '2021-11-13 17:01:57', 5, 'Platea 21', 'Cristine Redoblo', ''),
(31, 5, 'Buenas noches profesor, Mañana no podre está disponible para la clase', '2021-11-15 20:38:37', 220, 'Rodolfo Escudero', 'Argentina Rodriguez', ''),
(32, 220, 'No te preocupes, yo entiendo. Saludos', '2021-11-15 20:41:07', 5, 'Argentina Rodriguez', 'Rodolfo Escudero', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 15, 'cueco', '2021-11-13 17:01:57', 5, 'Platea 21', 'Cristine Redoblo'),
(15, 5, 'tu mama es hombre', '2021-11-13 17:03:04', 219, 'Cristine Redoblo', 'Jhamany Sanchez'),
(16, 5, 'Buenas noches profesor, Mañana no podre está disponible para la clase', '2021-11-15 20:38:37', 220, 'Rodolfo Escudero', 'Argentina Rodriguez'),
(17, 220, 'No te preocupes, yo entiendo. Saludos', '2021-11-15 20:41:07', 5, 'Argentina Rodriguez', 'Rodolfo Escudero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Añadir nombre de archivo de materiales descargables <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Añadir anuncios', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Agregar exámenes de practica', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Agregar anuncios', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Agregar anuncios', '2016-11-01 10:43:15', 'announcements_student.php'),
(16, 187, 'Add Annoucements', '2019-10-14 23:21:53', 'announcements_student.php'),
(17, 187, 'Add Annoucements', '2019-10-14 23:23:42', 'announcements_student.php'),
(18, 188, 'Add Annoucements', '2021-11-13 16:52:45', 'announcements_student.php'),
(19, 188, 'Add Annoucements', '2021-11-13 16:53:41', 'announcements_student.php'),
(20, 188, 'Add Practice Quiz file', '2021-11-13 17:00:37', 'student_quiz_list.php'),
(21, 188, 'Add Annoucements', '2021-11-13 17:01:42', 'announcements_student.php'),
(22, 189, 'Add Annoucements', '2021-11-15 11:11:38', 'announcements_student.php'),
(23, 189, 'Add Assignment file name <b>a</b>', '2021-11-15 14:18:32', 'assignment_student.php'),
(24, 189, 'Add Assignment file name <b>a</b>', '2021-11-15 14:23:35', 'assignment_student.php'),
(25, 189, 'Add Assignment file name <b>a</b>', '2021-11-15 14:24:19', 'assignment_student.php'),
(26, 189, 'Add Assignment file name <b>a</b>', '2021-11-15 14:24:22', 'assignment_student.php'),
(27, 189, 'Add Assignment file name <b>c</b>', '2021-11-15 14:26:54', 'assignment_student.php'),
(28, 189, 'Add Assignment file name <b>carro</b>', '2021-11-15 20:01:42', 'assignment_student.php'),
(29, 189, 'Add Annoucements', '2021-11-15 20:28:38', 'announcements_student.php'),
(30, 192, 'Add Assignment file name <b>s</b>', '2021-11-16 10:00:51', 'assignment_student.php'),
(31, 192, 'Add Assignment file name <b>Z</b>', '2021-11-16 11:53:19', 'assignment_student.php'),
(32, 192, 'Add Assignment file name <b>Práctica #1</b>', '2021-11-16 15:55:22', 'assignment_student.php'),
(33, 192, 'Add Assignment file name <b>Práctica #2</b>', '2021-11-16 16:35:34', 'assignment_student.php'),
(34, 192, 'Add Assignment file name <b>Práctica #3</b>', '2021-11-16 17:08:48', 'assignment_student.php'),
(35, 192, 'Agregar Nombre al Archivo <b>dsasd</b>', '2021-11-16 17:20:07', 'downloadable_student.php'),
(36, 192, 'Agregar Nombre al Archivo <b>dsasd</b>', '2021-11-16 17:20:10', 'downloadable_student.php'),
(37, 192, 'Agregar Nombre al Archivo <b>dsasd</b>', '2021-11-16 17:21:09', 'downloadable_student.php'),
(38, 192, 'Agregar Nombre al Archivo <b>dsasd</b>', '2021-11-16 17:21:12', 'downloadable_student.php'),
(39, 192, 'Agregar Nombre al Archivo <b>dsasd</b>', '2021-11-16 17:21:58', 'downloadable_student.php'),
(40, 192, 'Agregar Nombre al Archivo <b>dsasd</b>', '2021-11-16 17:22:00', 'downloadable_student.php'),
(41, 192, 'Agregar Nombre al Archivo <b>Guía 9no Grado </b>', '2021-11-16 17:25:03', 'downloadable_student.php'),
(42, 192, 'Agregar Nombre al Archivo <b>sdfs</b>', '2021-11-16 17:31:05', 'downloadable_student.php'),
(43, 192, 'Add Assignment file name <b>ghfg</b>', '2021-11-16 17:39:13', 'assignment_student.php'),
(44, 192, 'Add Assignment file name <b>sdfdsd</b>', '2021-11-16 17:42:09', 'assignment_student.php'),
(45, 192, 'Agregar Nombre al Archivo <b>sdfs</b>', '2021-11-16 17:42:24', 'downloadable_student.php'),
(46, 192, 'Agregar Nombre al Archivo <b>Guía 9no Grado </b>', '2021-11-16 17:49:44', 'downloadable_student.php'),
(47, 192, 'Agregar Nombre al Archivo <b>Guía 9no Grado </b>', '2021-11-16 17:53:03', 'downloadable_student.php'),
(48, 192, 'Agregar Nombre al Archivo <b>Guía 9no Grado </b>', '2021-11-17 09:03:31', 'downloadable_student.php'),
(49, 192, 'Add Assignment file name <b>Practica #1</b>', '2021-11-17 09:08:12', 'assignment_student.php'),
(50, 192, 'Add Assignment file name <b>Práctica #2</b>', '2021-11-17 09:11:13', 'assignment_student.php'),
(51, 192, 'Add Assignment file name <b>Práctica #3</b>', '2021-11-17 09:12:38', 'assignment_student.php'),
(52, 192, 'Add Assignment file name <b>Práctica #4</b>', '2021-11-17 09:14:41', 'assignment_student.php'),
(53, 192, 'Add Annoucements', '2021-11-17 10:12:02', 'announcements_student.php'),
(54, 192, 'Add Annoucements', '2021-11-17 10:15:37', 'announcements_student.php'),
(55, 192, 'Add Annoucements', '2021-11-17 10:17:10', 'announcements_student.php'),
(56, 192, 'Add Annoucements', '2021-11-17 10:19:40', 'announcements_student.php'),
(57, 192, 'Add Annoucements', '2021-11-17 10:21:05', 'announcements_student.php'),
(58, 192, 'Add Practice Quiz file', '2021-11-17 10:35:22', 'student_quiz_list.php'),
(59, 192, 'Add Assignment file name <b>sdfs</b>', '2021-11-17 11:29:26', 'assignment_student.php'),
(60, 192, 'Add Assignment file name <b>Practica #1</b>', '2021-11-17 11:29:59', 'assignment_student.php'),
(61, 192, 'Add Assignment file name <b>Práctica #2</b>', '2021-11-17 11:30:51', 'assignment_student.php'),
(62, 192, 'Add Assignment file name <b>Práctica #2</b>', '2021-11-17 11:31:05', 'assignment_student.php'),
(63, 192, 'Add Assignment file name <b>Práctica #2</b>', '2021-11-17 11:31:08', 'assignment_student.php'),
(64, 192, 'Add Assignment file name <b>Práctica #2 </b>', '2021-11-17 11:32:07', 'assignment_student.php'),
(65, 192, 'Add Assignment file name <b>Práctica #3</b>', '2021-11-17 11:33:01', 'assignment_student.php'),
(66, 192, 'Add Assignment file name <b>Práctica #4</b>', '2021-11-17 11:33:42', 'assignment_student.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 21),
(2, 219, 'yes', 20),
(3, 219, 'yes', 19),
(4, 219, 'yes', 18),
(5, 220, 'yes', 29),
(6, 220, 'yes', 28),
(7, 220, 'yes', 27),
(8, 220, 'yes', 26),
(9, 220, 'yes', 25),
(10, 220, 'yes', 24),
(11, 220, 'yes', 23),
(12, 220, 'yes', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'Examen 01', 'Examen 01 TIC', '2016-10-26 17:31:41', 15),
(8, 'Examen #1 - sobre la Reproducción y Desarrollo hum', '', '2021-11-17 10:34:11', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 7, '<p>marca</p>\r\n', 1, 0, '2021-11-13 17:01:09', 'A'),
(37, 8, '<p>1. Perro y lobo dan origen al perro lobo?</p>\r\n', 2, 0, '2021-11-17 10:35:01', 'False');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(8, '2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(221, 'Dahlia', 'Hill', 29, '530085', '123.abc.', 'uploads/jorge.jpg', 'Registered'),
(222, 'Isadora', 'Mcconnell', 29, '769643', '123.abc.', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(223, 'Candice', 'Chaney', 29, '514940', '123.abc.', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(224, 'Logan', 'Diaz', 30, '256444', '123.abc.', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(225, 'Audra', 'Colon', 30, '580690', '123.abc.', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(226, 'Jonas', 'Lindsay', 30, '357551', '123.abc.', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(227, 'Perry', 'Matthews', 31, '860270', '123.abc.', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(44, 'Ciencia', 'Ciencias Naturales', '', '', 2, '', '4to');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(22, '189654', '123.abc.', 'Javier', 'Castillo', 2, 'uploads/Andres Castillo.png', '', '', ''),
(23, '140390', '123.abc.', 'Diana', 'Escobar', 2, 'uploads/Diana tobar.png', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(192, 23, 29, 44, 'admin/uploads/thumbnails.jpg', '2021'),
(193, 22, 30, 44, 'admin/uploads/thumbnails.jpg', '2021'),
(194, 23, 31, 44, 'admin/uploads/thumbnails.jpg', '2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>probando avisos de clase</p>\r\n', '15', 186, '2016-11-01 10:43:15'),
(40, '								<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GnMHcg5gtvQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>								', '15', 187, '2019-10-14 23:21:53'),
(41, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MybaTnzu9AA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '15', 187, '2019-10-14 23:23:42'),
(43, 'Video sobre como hicieron el canal perros :v\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iFUWvlfcLd4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>								', '5', 188, '2021-11-13 16:53:41'),
(45, 'VIDEO REFERENTE AL CUERPO HUMANO\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k1UZ4Lz1PHE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '5', 189, '2021-11-15 11:11:38'),
(46, '<p>Parcial Ma&ntilde;ana</p>\r\n', '5', 189, '2021-11-15 20:28:38'),
(47, '																<iframe width=\"400\" height=\"315\" src=\"https://www.youtube.com/embed/dHArUmSW4PQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>	\r\n\r\nMódulo #1 - Primer Video.															', '23', 192, '2021-11-17 10:12:02'),
(49, '								<iframe width=\"400\" height=\"315\" src=\"https://www.youtube.com/embed/dg_ACMcLI0Q\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nMódulo #1 - Segundo Video.								', '23', 192, '2021-11-17 10:17:10'),
(50, '								<iframe width=\"400\" height=\"315\" src=\"https://www.youtube.com/embed/g5pWCzOVQOY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nMódulo #2 - Primer Video.								', '23', 192, '2021-11-17 10:19:40'),
(51, '								<iframe width=\"400\" height=\"315\" src=\"https://www.youtube.com/embed/HeMEJOytEeU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>		\r\n\r\nMódulo #2 - Segundo Video.						', '23', 192, '2021-11-17 10:21:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2013-11-01 11:57:33', '2013-11-18 10:33:54', 10),
(2, 'admin', '2013-11-05 09:52:09', '2013-11-18 10:33:54', 10),
(3, 'admin', '2013-11-08 10:41:09', '2013-11-18 10:33:54', 10),
(4, 'admin', '2013-11-12 22:53:05', '2013-11-18 10:33:54', 10),
(5, 'admin', '2013-11-13 07:07:04', '2013-11-18 10:33:54', 10),
(6, 'admin', '2013-11-13 13:07:58', '2013-11-18 10:33:54', 10),
(7, 'admin', '2013-11-13 13:30:45', '2013-11-18 10:33:54', 10),
(8, 'admin', '2013-11-13 15:25:20', '2013-11-18 10:33:54', 10),
(9, 'admin', '2013-11-13 15:46:28', '2013-11-18 10:33:54', 10),
(10, 'admin', '2013-11-13 16:04:10', '2013-11-18 10:33:54', 10),
(11, 'admin', '2013-11-13 17:31:37', '2013-11-18 10:33:54', 10),
(12, 'admin', '2013-11-13 22:47:45', '2013-11-18 10:33:54', 10),
(13, 'admin', '2013-11-14 10:27:06', '2013-11-18 10:33:54', 10),
(14, 'admin', '2013-11-14 10:27:55', '2013-11-18 10:33:54', 10),
(15, 'admin', '2013-11-14 10:38:08', '2013-11-18 10:33:54', 10),
(16, 'admin', '2013-11-14 10:38:09', '2013-11-18 10:33:54', 10),
(17, 'admin', '2013-11-14 10:41:06', '2013-11-18 10:33:54', 10),
(18, 'admin', '2013-11-14 11:44:08', '2013-11-18 10:33:54', 10),
(19, 'admin', '2013-11-14 21:53:56', '2013-11-18 10:33:54', 10),
(20, 'admin', '2013-11-14 22:03:53', '2013-11-18 10:33:54', 10),
(21, 'admin', '2013-11-16 13:40:56', '2013-11-18 10:33:54', 10),
(22, 'admin', '2013-11-18 10:22:07', '2013-11-18 10:33:54', 10),
(23, 'jkev', '2013-11-18 10:33:59', '2016-10-11 13:08:54', 14),
(24, 'jkev', '2013-11-18 15:20:45', '2016-10-11 13:08:54', 14),
(25, 'jkev', '2013-11-18 15:42:04', '2016-10-11 13:08:54', 14),
(26, 'jkev', '2013-11-18 16:30:14', '2016-10-11 13:08:54', 14),
(27, 'jkev', '2013-11-18 16:36:44', '2016-10-11 13:08:54', 14),
(28, 'jkev', '2013-11-18 17:39:55', '2016-10-11 13:08:54', 14),
(29, 'jkev', '2013-11-18 20:06:49', '2016-10-11 13:08:54', 14),
(30, 'jkev', '2013-11-23 08:04:27', '2016-10-11 13:08:54', 14),
(31, 'teph', '2013-11-23 12:02:27', '2013-11-30 21:33:02', 13),
(32, 'teph', '2013-11-24 08:55:55', '2013-11-30 21:33:02', 13),
(33, 'jkev', '2013-11-25 10:32:16', '2016-10-11 13:08:54', 14),
(34, 'jkev', '2013-11-25 14:33:05', '2016-10-11 13:08:54', 14),
(35, 'jkev', '2013-11-25 15:02:47', '2016-10-11 13:08:54', 14),
(36, 'jkev', '2013-11-25 21:08:19', '2016-10-11 13:08:54', 14),
(37, 'jkev', '2013-11-25 23:49:58', '2016-10-11 13:08:54', 14),
(38, 'jkev', '2013-11-26 00:32:22', '2016-10-11 13:08:54', 14),
(39, 'jkev', '2013-11-26 10:39:52', '2016-10-11 13:08:54', 14),
(40, 'jkev', '2013-11-26 21:48:05', '2016-10-11 13:08:54', 14),
(41, 'jkev', '2013-11-28 23:00:00', '2016-10-11 13:08:54', 14),
(42, 'jkev', '2013-11-28 23:00:06', '2016-10-11 13:08:54', 14),
(43, 'jkev', '2013-11-30 21:28:54', '2016-10-11 13:08:54', 14),
(44, 'teph', '2013-11-30 21:32:54', '2013-11-30 21:33:02', 13),
(45, 'jkev', '2013-12-04 12:45:09', '2016-10-11 13:08:54', 14),
(46, 'teph', '2013-12-04 14:02:19', '', 13),
(47, 'jkev', '2013-12-11 11:56:15', '2016-10-11 13:08:54', 14),
(48, 'jkev', '2013-12-11 12:04:44', '2016-10-11 13:08:54', 14),
(49, 'jkev', '2013-12-12 09:44:34', '2016-10-11 13:08:54', 14),
(50, 'jkev', '2013-12-13 01:48:23', '2016-10-11 13:08:54', 14),
(51, 'jkev', '2013-12-27 09:13:20', '2016-10-11 13:08:54', 14),
(52, 'jkev', '2013-12-27 10:18:38', '2016-10-11 13:08:54', 14),
(53, 'jkev', '2013-12-27 10:35:43', '2016-10-11 13:08:54', 14),
(54, 'jkev', '2013-12-27 11:08:54', '2016-10-11 13:08:54', 14),
(55, 'jkev', '2013-12-27 11:20:25', '2016-10-11 13:08:54', 14),
(56, 'jkev', '2013-12-27 11:41:58', '2016-10-11 13:08:54', 14),
(57, 'jkev', '2013-12-27 11:43:10', '2016-10-11 13:08:54', 14),
(58, 'jkev', '2013-12-27 14:54:57', '2016-10-11 13:08:54', 14),
(59, 'jkev', '2014-01-12 20:08:26', '2016-10-11 13:08:54', 14),
(60, 'jkev', '2014-01-13 15:24:07', '2016-10-11 13:08:54', 14),
(61, 'jkev', '2014-01-13 18:46:08', '2016-10-11 13:08:54', 14),
(62, 'jkev', '2014-01-15 20:40:15', '2016-10-11 13:08:54', 14),
(63, 'jkev', '2014-01-16 14:42:02', '2016-10-11 13:08:54', 14),
(64, 'jkev', '2014-01-17 09:16:17', '2016-10-11 13:08:54', 14),
(65, 'jkev', '2014-01-17 13:25:51', '2016-10-11 13:08:54', 14),
(66, 'admin', '2014-01-17 14:41:30', '2021-11-17 17:07:34', 15),
(67, 'admin', '2014-01-17 15:56:32', '2021-11-17 17:07:34', 15),
(68, 'admin', '2014-01-26 17:45:31', '2021-11-17 17:07:34', 15),
(69, 'admin', '2014-02-13 10:45:17', '2021-11-17 17:07:34', 15),
(70, 'admin', '2014-02-13 11:05:27', '2021-11-17 17:07:34', 15),
(71, 'jkev', '2014-02-13 11:16:48', '2016-10-11 13:08:54', 14),
(72, 'admin', '2014-02-13 11:55:36', '2021-11-17 17:07:34', 15),
(73, 'admin', '2014-02-13 12:32:38', '2021-11-17 17:07:34', 15),
(74, 'admin', '2014-02-13 12:52:05', '2021-11-17 17:07:34', 15),
(75, 'admin', '2014-02-13 13:04:35', '2021-11-17 17:07:34', 15),
(76, 'jkev', '2014-02-13 14:35:27', '2016-10-11 13:08:54', 14),
(77, 'admin', '2014-02-20 09:40:39', '2021-11-17 17:07:34', 15),
(78, 'admin', '2014-02-20 09:42:21', '2021-11-17 17:07:34', 15),
(79, 'admin', '2014-02-27 22:40:15', '2021-11-17 17:07:34', 15),
(80, 'admin', '2014-02-28 13:12:52', '2021-11-17 17:07:34', 15),
(81, 'admin', '2014-04-02 17:27:47', '2021-11-17 17:07:34', 15),
(82, 'admin', '2014-04-03 15:29:38', '2021-11-17 17:07:34', 15),
(83, 'admin', '2014-06-15 12:31:51', '2021-11-17 17:07:34', 15),
(84, 'admin', '2016-10-11 12:18:53', '2021-11-17 17:07:34', 15),
(85, 'jkev', '2016-10-11 13:08:31', '2016-10-11 13:08:54', 14),
(86, 'admin', '2016-10-11 13:19:30', '2021-11-17 17:07:34', 15),
(87, 'admin', '2016-10-26 15:15:51', '2021-11-17 17:07:34', 15),
(88, 'admin', '2016-10-26 17:46:16', '2021-11-17 17:07:34', 15),
(89, 'admin', '2016-10-26 17:55:41', '2021-11-17 17:07:34', 15),
(90, 'admin', '2016-10-26 17:57:22', '2021-11-17 17:07:34', 15),
(91, 'admin', '2016-10-26 17:59:37', '2021-11-17 17:07:34', 15),
(92, 'admin', '2016-11-01 10:57:35', '2021-11-17 17:07:34', 15),
(93, 'admin', '2016-11-01 10:59:23', '2021-11-17 17:07:34', 15),
(94, 'admin', '2016-11-01 12:34:38', '2021-11-17 17:07:34', 15),
(95, 'admin', '2016-11-01 12:54:24', '2021-11-17 17:07:34', 15),
(96, 'admin', '2016-11-01 13:44:52', '2021-11-17 17:07:34', 15),
(97, 'admin', '2019-04-17 12:18:10', '2021-11-17 17:07:34', 15),
(98, 'admin', '2019-04-22 09:27:19', '2021-11-17 17:07:34', 15),
(99, 'admin', '2019-10-14 23:15:45', '2021-11-17 17:07:34', 15),
(100, 'admin', '2021-11-13 16:41:45', '2021-11-17 17:07:34', 15),
(101, 'admin', '2021-11-13 16:47:16', '2021-11-17 17:07:34', 15),
(102, 'admin', '2021-11-13 16:58:00', '2021-11-17 17:07:34', 15),
(103, 'admin', '2021-11-13 17:04:28', '2021-11-17 17:07:34', 15),
(104, 'admin', '2021-11-13 17:08:28', '2021-11-17 17:07:34', 15),
(105, 'admin', '2021-11-13 17:08:28', '2021-11-17 17:07:34', 15),
(106, 'admin', '2021-11-13 22:28:53', '2021-11-17 17:07:34', 15),
(107, 'admin', '2021-11-13 22:44:34', '2021-11-17 17:07:34', 15),
(108, 'admin', '2021-11-13 22:45:41', '2021-11-17 17:07:34', 15),
(109, 'admin', '2021-11-14 12:05:26', '2021-11-17 17:07:34', 15),
(110, 'admin', '2021-11-14 17:55:28', '2021-11-17 17:07:34', 15),
(111, 'admin', '2021-11-14 18:07:02', '2021-11-17 17:07:34', 15),
(112, 'admin', '2021-11-14 18:12:22', '2021-11-17 17:07:34', 15),
(113, 'admin', '2021-11-14 18:33:31', '2021-11-17 17:07:34', 15),
(114, 'admin', '2021-11-15 06:59:00', '2021-11-17 17:07:34', 15),
(115, 'admin', '2021-11-15 09:37:14', '2021-11-17 17:07:34', 15),
(116, 'admin', '2021-11-15 09:49:07', '2021-11-17 17:07:34', 15),
(117, 'admin', '2021-11-16 07:10:15', '2021-11-17 17:07:34', 15),
(118, 'admin', '2021-11-16 08:23:01', '2021-11-17 17:07:34', 15),
(119, 'admin', '2021-11-16 08:34:01', '2021-11-17 17:07:34', 15),
(120, 'admin', '2021-11-16 09:55:01', '2021-11-17 17:07:34', 15),
(121, 'admin', '2021-11-16 10:09:13', '2021-11-17 17:07:34', 15),
(122, 'admin', '2021-11-16 11:11:11', '2021-11-17 17:07:34', 15),
(123, 'admin', '2021-11-16 17:27:10', '2021-11-17 17:07:34', 15),
(124, 'admin', '2021-11-17 09:16:01', '2021-11-17 17:07:34', 15),
(125, 'admin', '2021-11-17 09:16:57', '2021-11-17 17:07:34', 15),
(126, 'admin', '2021-11-17 10:01:18', '2021-11-17 17:07:34', 15),
(127, 'admin', '2021-11-17 10:04:19', '2021-11-17 17:07:34', 15),
(128, 'admin', '2021-11-17 11:40:08', '2021-11-17 17:07:34', 15),
(129, 'admin', '2021-11-17 17:05:00', '2021-11-17 17:07:34', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indices de la tabla `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indices de la tabla `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indices de la tabla `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indices de la tabla `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indices de la tabla `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indices de la tabla `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indices de la tabla `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indices de la tabla `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indices de la tabla `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indices de la tabla `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indices de la tabla `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indices de la tabla `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indices de la tabla `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indices de la tabla `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indices de la tabla `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indices de la tabla `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indices de la tabla `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indices de la tabla `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indices de la tabla `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indices de la tabla `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indices de la tabla `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indices de la tabla `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de la tabla `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de la tabla `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT de la tabla `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
