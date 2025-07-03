-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2024 a las 00:43:58
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlescolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `cuenta` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `plan` varchar(10) NOT NULL,
  `fecha` varchar(11) NOT NULL,
  `hora` varchar(7) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fichas`
--

INSERT INTO `fichas` (`id`, `nombre`, `cuenta`, `plan`, `fecha`, `hora`, `tipo`) VALUES
(2212, 'cuenta', 'nombre', 'plan', 'fecha', 'hora', 'tipo'),
(2213, '1910010', 'ABARCA CRUZ EMILIO ZDENKO', 'ICO-F19', '6/27/24', '12:20', 'Extraordinario'),
(2214, '1613711', 'ABASOLO DIAZ PAOLA LIZETH', 'ISES-F3', '6/27/24', '13:20', 'Extraordinario'),
(2215, '1920877', 'ABOITES GALINDO LUIS ANGEL', 'ICO-F19', '7/11/24', '17:20', 'Extraordinario'),
(2216, '2321246', 'ABUNDIS FRANCO ANGEL JALIL', 'IME-F19', '7/15/24', '17:20', 'Extraordinario'),
(2217, '1811122', 'ACEVEDO GUTIERREZ JONATAN', 'ICI-F19', '7/5/24', '11:20', 'Extraordinario'),
(2218, '1342759', 'ACEVEDO ORDOÑEZ VICTOR RASIV', 'IEL-F19', '7/16/24', '17:20', 'Extraordinario'),
(2219, '1710023', 'ACOSTA ARIAS MIREL ASTRID', 'ISES-F3', '7/1/24', '16:20', 'Extraordinario'),
(2220, '2221046', 'ACOSTA BERNAL MARIA ESPERANZA', 'ICO-F19', '7/9/24', '11:20', 'Extraordinario'),
(2221, '1817300', 'ACOSTA CORTINA DAVID JOSUE', 'ICI-F19', '6/28/24', '16:20', 'Extraordinario'),
(2222, '2321126', 'ACUÑA MARTINEZ JUAN CARLOS', 'IEL-F19', '7/16/24', '13:20', 'Extraordinario'),
(2223, '1910021', 'AGUILAR BRITO EDUARDO', 'IME-F19', '6/27/24', '17:20', 'Extraordinario'),
(2224, '1711016', 'AGUILAR CASTILLA JONATHAN MIGUEL', 'ICI-F19', '7/5/24', '8:20', 'Extraordinario'),
(2225, '1711017', 'AGUILAR CASTILLA SAULO MIGUEL', 'ICI-F19', '7/5/24', '14:20', 'Extraordinario'),
(2226, '1710027', 'AGUILAR COYOTE PERLA', 'ICI-F19', '7/11/24', '18:20', 'Extraordinario'),
(2227, '1442711', 'AGUILAR DIAZ MIGUEL ANGEL', 'IME-F19', '7/9/24', '13:20', 'Extraordinario'),
(2228, '1812072', 'AGUILAR ESTRADA LUISA SAMIRA', 'IEL-F19', '7/15/24', '13:20', 'Extraordinario'),
(2229, '1514259', 'AGUILAR FLORES YASMIN', 'ICI-F3', '7/16/24', '9:20', 'Extraordinario'),
(2230, '1642150', 'AGUILAR GALAN IVAN', 'IEL-F19', '6/28/24', '18:20', 'Extraordinario'),
(2231, '1713683', 'AGUILAR MAZA CARLOS ENRIQUE', 'ICO-F19', '7/8/24', '8:20', 'Extraordinario'),
(2232, '2020081', 'AGUILAR PEDRAZA GUSTAVO', 'IME-F19', '7/15/24', '18:20', 'Extraordinario'),
(2233, '2014400', 'AGUILAR PEREZ ALAN', 'ICO-F19', '7/11/24', '9:20', 'Extraordinario'),
(2234, '1720002', 'AGUILAR QUIROZ ULISES EMMANUEL', 'ICI-F3', '7/16/24', '12:20', 'Extraordinario'),
(2235, '1943175', 'AGUILERA BARRERA MELISSA', 'IEL-F19', '6/28/24', '12:20', 'Extraordinario'),
(2236, '1921118', 'AGUIRRE JIMENEZ JOSE DE JESUS', 'ICI-F19', '7/11/24', '10:20', 'Extraordinario'),
(2237, '2121327', 'AGUSTIN ANTOLIN JOSE RAUL', 'IME-F19', '7/12/24', '15:20', 'Extraordinario'),
(2238, '2321046', 'AHUMADA PEDRAZA RODRIGO URIEL', 'ICI-F19', '7/12/24', '9:20', 'Extraordinario'),
(2239, '1442061', 'ALAMILLA MARTINEZ EMMANUEL', 'IME-F3', '7/5/24', '18:20', 'Extraordinario'),
(2240, '1610011', 'ALAMO BEJARANO ALAN', 'IME-F19', '7/1/24', '16:20', 'Extraordinario'),
(2241, '1810019', 'ALAMO BEJARANO ALDO SALVADOR', 'IEL-F19', '6/28/24', '12:20', 'Extraordinario'),
(2242, '2120023', 'ALANIS CEREZO EMMANUEL', 'ICI-F19', '7/12/24', '8:20', 'Extraordinario'),
(2243, '1913877', 'ALANIS GASCA ERIK RAFAEL', 'IME-F19', '7/16/24', '11:20', 'Extraordinario'),
(2244, '2121198', 'ALARCON ACOSTA MARCO ANTONIO', 'ICI-F19', '7/2/24', '10:20', 'Extraordinario'),
(2245, '1910030', 'ALARCON ESTRADA JOSE ALBERTO', 'IME-F19', '7/2/24', '12:20', 'Extraordinario'),
(2246, '1610014', 'ALARCON GONZALEZ MAXIMILIANO', 'ISES-F3', '6/28/24', '18:20', 'Extraordinario'),
(2247, '1512086', 'ALBARRAN ALVAREZ EMILIO ALEJANDRO', 'ICI-F3', '7/11/24', '8:20', 'Extraordinario'),
(2248, '1810024', 'ALBARRAN CABALLERO LEON MANUEL', 'ICI-F19', '7/5/24', '17:20', 'Extraordinario'),
(2249, '2013646', 'ALBARRAN CAMPUZANO STEPHANIE RAQUEL', 'IME-F19', '7/8/24', '8:20', 'Extraordinario'),
(2250, '2221047', 'ALBARRAN HERRERA ENRIQUE', 'ICO-F19', '7/11/24', '16:20', 'Extraordinario'),
(2251, '1773215', 'ALBARRAN ORTIZ ANDRES', 'ICO-F3', '7/11/24', '15:20', 'Extraordinario'),
(2252, '1042935', 'ALBARRAN SALAZAR OSWALDO SEBASTIAN', 'ICI-F3', '7/15/24', '14:20', 'Extraordinario'),
(2253, '2321248', 'ALBARRAN TRUJILLO LUIS JARED', 'IME-F19', '6/27/24', '17:20', 'Extraordinario'),
(2254, '1723610', 'ALBERTO DE LA CRUZ ALEJANDRO', 'ISES-F3', '7/2/24', '12:20', 'Extraordinario'),
(2255, '1910038', 'ALBINO GARCIA AXEL FRANCISCO', 'IME-F19', '7/5/24', '13:20', 'Extraordinario'),
(2256, '1546796', 'ALBINO GONZALEZ GUADALUPE', 'ICO-F19', '7/15/24', '14:20', 'Extraordinario'),
(2257, '2021026', 'ALBITER HERNANDEZ ADAN WILEBALDO', 'ICI-F19', '7/11/24', '13:20', 'Extraordinario'),
(2258, '1773216', 'ALBITER NUÑEZ OMAR ALEJANDRO', 'ICO-F3', '7/5/24', '14:20', 'Extraordinario'),
(2259, '1322495', 'ALBITER NUÑEZ ZELTZIN GUADALUPE', 'ISES-F3', '7/8/24', '12:20', 'Extraordinario'),
(2260, '2020082', 'ALBITER PUEBLA EDUARDO', 'IME-F19', '7/12/24', '8:20', 'Extraordinario'),
(2261, '2421007', 'ALCANTAR LOPEZ GWENDOLYNE', 'ICO-F19', '7/10/24', '18:20', 'Extraordinario'),
(2262, '1513182', 'ALCANTARA BARAJAS JOSE MANUEL', 'IME-F3', '7/11/24', '9:20', 'Extraordinario'),
(2263, '1910040', 'ALCANTARA CHIMAL GEMA SCARLETT', 'ISES-F3', '6/27/24', '8:20', 'Extraordinario'),
(2264, '2321197', 'ALCANTARA DIAZ YAEL OCTAVIO', 'ISES-F3', '7/16/24', '10:20', 'Extraordinario'),
(2265, '1723611', 'ALCANTARA DOMINGUEZ SERGIO ANTONIO', 'ISES-F3', '7/8/24', '10:20', 'Extraordinario'),
(2266, '2110033', 'ALCANTARA ESCOBAR ROBERTO CARLOS', 'IME-F19', '8/12/24', '11:00', 'Extraordinario'),
(2267, '1713700', 'ALCANTARA MERELES ALEJANDRO', 'IME-F19', '7/1/24', '17:20', 'Extraordinario'),
(2268, '2010034', 'ALCANTARA OLIVARES DIANA', 'ISES-F3', '7/15/24', '18:20', 'Extraordinario'),
(2269, '1914823', 'ALCANTARA ORTEGA DIEGO', 'ICO-F19', '7/1/24', '10:20', 'Extraordinario'),
(2270, '2012438', 'ALCANTARA REYES ISAAC ALEJANDRO', 'ICI-F19', '6/27/24', '16:20', 'Extraordinario'),
(2271, '2017954', 'ALCANTARA SEGUNDO JUAN ENRIQUE', 'ICI-F19', '7/1/24', '8:20', 'Extraordinario'),
(2272, '2110037', 'ALCANTARA VALENZUELA DANNA', 'IME-F19', '8/6/24', '16:20', 'Extraordinario'),
(2273, '1511344', 'ALEGRE TORRES VICTOR MANUEL', 'IME-F3', '6/28/24', '11:20', 'Extraordinario'),
(2274, '2020083', 'ALEGRIA ESTRADA JOSE DAVID', 'IME-F19', '7/11/24', '8:20', 'Extraordinario'),
(2275, '2221273', 'ALEJANDREZ GONZALEZ RICARDO DANIEL', 'IME-F19', '7/8/24', '18:20', 'Extraordinario'),
(2276, '2012443', 'ALEJANDRO BLAS MIRIAM', 'ICI-F19', '7/5/24', '9:20', 'Extraordinario'),
(2277, '2221048', 'ALMARAZ HUERTA VICTOR MANUELLE', 'ICO-F19', '7/2/24', '13:20', 'Extraordinario'),
(2278, '1710050', 'ALONSO ARRIAGA JAIME', 'IME-F19', '6/28/24', '18:20', 'Extraordinario'),
(2279, '2011304', 'ALONSO MONTAÑO LEONARDO', 'ICO-F19', '7/8/24', '17:20', 'Extraordinario'),
(2280, '1917465', 'ALPIZAR MORA VANESSA', 'ICI-F19', '7/1/24', '10:20', 'Extraordinario'),
(2281, '2320006', 'ALPIZAR NAVARRO DULCE JAZMIN', 'ICI-F19', '7/15/24', '11:20', 'Extraordinario'),
(2282, '1812095', 'ALVA AVILA JOSE ISAC', 'ISES-F3', '7/16/24', '13:20', 'Extraordinario'),
(2283, '2121136', 'ALVARADO OLIVARES ITZEL BERENICE', 'ICO-F19', '7/1/24', '18:20', 'Extraordinario'),
(2284, '2012453', 'ALVARADO PEREZ YAEL ALEXANDER', 'IEL-F19', '7/11/24', '9:20', 'Extraordinario'),
(2285, '2321198', 'ALVAREZ AMADO ABRAHAM', 'ISES-F3', '7/9/24', '10:20', 'Extraordinario'),
(2286, '2321129', 'ALVAREZ BARAJAS DIEGO JOSE MARIA', 'IEL-F19', '7/15/24', '15:20', 'Extraordinario'),
(2287, '2011311', 'ALVAREZ CARDOSO ODETTE AYELEN', 'IME-F19', '7/5/24', '13:20', 'Extraordinario'),
(2288, '2421274', 'ALVAREZ DE JESUS VICTOR ABRAHAM', 'IME-F19', '8/6/24', '13:00', 'Extraordinario'),
(2289, '1821146', 'ALVAREZ FLORES DEYSI YOVANELLA', 'ICI-F3', '7/9/24', '12:20', 'Extraordinario'),
(2290, '1442398', 'ALVAREZ GARCIA EVELYN JOSELYN', 'ICI-F3', '7/15/24', '16:20', 'Extraordinario'),
(2291, '2320963', 'ALVAREZ GARCIA FERNANDO RUBEN', 'ICO-F19', '7/5/24', '17:20', 'Extraordinario'),
(2292, '1245913', 'ALVAREZ GONZALEZ RAFAEL DAVID', 'ICO-F3', '6/28/24', '18:20', 'Extraordinario'),
(2293, '1845028', 'ALVAREZ JIMENEZ YOED ELIEL', 'ICO-F19', '7/15/24', '18:20', 'Extraordinario'),
(2294, '1913904', 'ALVAREZ MACEDO EFREN', 'ICO-F19', '7/1/24', '14:20', 'Extraordinario'),
(2295, '1613741', 'ALVAREZ MACEDO RICARDO ANGEL', 'ICO-F19', '7/5/24', '16:20', 'Extraordinario'),
(2296, '1920878', 'ALVAREZ MORALES JOSE BRYANT', 'ICO-F19', '7/15/24', '10:20', 'Extraordinario'),
(2297, '2221274', 'ALVAREZ NAVARRO LUIS EDUARDO', 'IME-F19', '6/28/24', '14:20', 'Extraordinario'),
(2298, '2121200', 'ALVAREZ PERALTA ALEJANDRO', 'ICI-F19', '6/28/24', '9:20', 'Extraordinario'),
(2299, '1513226', 'ALVAREZ RAMIREZ GERARDO', 'ISES-F3', '7/15/24', '10:20', 'Extraordinario'),
(2300, '2221246', 'ALVAREZ SANTANA JOSE ANGEL', 'ISES-F3', '7/1/24', '18:20', 'Extraordinario'),
(2301, '1544455', 'ALVAREZ VAZQUEZ CARMEN ESTEFANY', 'ICO-F3', '6/27/24', '12:20', 'Extraordinario'),
(2302, '1813780', 'AMADO LOPEZ DELFINO EDUARDO', 'ICI-F19', '7/16/24', '10:20', 'Extraordinario'),
(2303, '1843339', 'AMADOR ARZALUZ KARLA JOANA', 'ICI-F19', '7/5/24', '14:20', 'Extraordinario'),
(2304, '1920879', 'AMBRIZ DE LA CRUZ CARLOS IGNACIO', 'ICO-F19', '6/28/24', '15:20', 'Extraordinario'),
(2305, '2221206', 'ANASTACIO GARCIA AARON', 'IEL-F19', '7/11/24', '18:20', 'Extraordinario'),
(2306, '1674330', 'ANASTACIO GARCIA MARCO ANTONIO', 'ICO-F3', '7/8/24', '11:20', 'Extraordinario'),
(2307, '2321047', 'ANAYA RODRIGUEZ ALEXIS AARON', 'ICI-F19', '7/12/24', '10:20', 'Extraordinario'),
(2308, '2012469', 'ANDRADE REYNOSO LUIGI ALEXANDER', 'ICO-F19', '6/27/24', '9:20', 'Extraordinario'),
(2309, '1921015', 'ANDRES GARDUÑO ABRAHAM', 'IME-F19', '6/27/24', '15:20', 'Extraordinario'),
(2310, '1510230', 'ANGELES BENAVIDES MANUEL ALEJANDRO', 'IME-F3', '8/6/24', '13:00', 'Extraordinario'),
(2311, '2121201', 'ANGELES VARGAS JOSE YAEL', 'ICI-F19', '7/11/24', '10:20', 'Extraordinario'),
(2312, '1821149', 'ANTOLIN CLEMENTE PEDRO DAVID', 'ICI-F3', '7/9/24', '8:20', 'Extraordinario'),
(2313, '1821222', 'ARANA MEJIA JORGE ARMANDO', 'IME-F3', '7/2/24', '11:20', 'Extraordinario'),
(2314, '1810059', 'ARANA MEJIA JUAN ANTONIO', 'ICO-F19', '7/8/24', '8:20', 'Extraordinario'),
(2315, '1610055', 'ARANDA CRUZ CARMELO', 'ICO-F19', '7/1/24', '11:20', 'Extraordinario'),
(2316, '2321200', 'ARANDA HUERTA ABDIEL ISAI', 'ISES-F3', '8/21/24', '13:00', 'Extraordinario'),
(2317, '2421011', 'ARANDA MORENO MARCO ANTONIO', 'ICO-F19', '8/5/24', '17:00', 'Extraordinario'),
(2318, '1910078', 'ARANDIA BENITEZ JAVIER ALEJANDRO', 'ICI-F19', '7/8/24', '14:20', 'Extraordinario'),
(2319, '1910079', 'ARAUJO LADRILLERO CESAR', 'ICI-F19', '8/6/24', '13:00', 'Extraordinario'),
(2320, '2020024', 'ARAUJO VICUÑA DAVID', 'ICI-F19', '7/9/24', '15:20', 'Extraordinario'),
(2321, '1920881', 'ARCE MARCELO FABIOLA', 'ICO-F19', '6/27/24', '11:20', 'Extraordinario'),
(2322, '1810063', 'ARCE SALGADO FRIDA STEPHANIE', 'IME-F19', '6/27/24', '12:20', 'Extraordinario'),
(2323, '1912271', 'ARCHUNDIA RODRIGUEZ JESUS YAEL', 'ISES-F3', '6/27/24', '18:20', 'Extraordinario'),
(2324, '1612051', 'ARCHUNDIA SANCHEZ VICTOR DANIEL', 'ICO-F19', '6/27/24', '12:20', 'Extraordinario'),
(2325, '1612053', 'ARELLANO CARREÑO EMMANUEL', 'ICI-F3', '7/12/24', '15:20', 'Extraordinario'),
(2326, '2273547', 'ARELLANO CONTRERAS JEOVANI ALEXIS', 'ICI-F19', '7/8/24', '9:20', 'Extraordinario'),
(2327, '1310050', 'ARELLANO LARIOS JESUS MANUEL', 'ICI-F19', '7/12/24', '17:20', 'Extraordinario'),
(2328, '1920882', 'ARELLANO MAGDALENO OSMAR DAVID', 'ICO-F19', '6/27/24', '12:20', 'Extraordinario'),
(2329, '2014443', 'ARENAS GOMEZ ANGEL MISAEL', 'IEL-F19', '7/8/24', '8:20', 'Extraordinario'),
(2330, '1811171', 'AREVALO LEONARDO CESAR', 'ICI-F19', '7/12/24', '12:20', 'Extraordinario'),
(2331, '1911246', 'AREVALO LEONARDO JOSE FRANCISCO', 'ICI-F19', '7/15/24', '14:20', 'Extraordinario'),
(2332, '1640932', 'ARGUELLES ARCOS LUIS MAURICIO', 'ISES-F3', '7/8/24', '16:20', 'Extraordinario'),
(2333, '2321201', 'ARGUETA PEDRAZA IVAN', 'ISES-F3', '8/12/24', '9:20', 'Extraordinario'),
(2334, '2321131', 'ARIAS ACEVEDO NOE', 'IEL-F19', '7/15/24', '9:20', 'Extraordinario'),
(2335, '2321048', 'ARIAS CARBAJAL LIZBETH', 'ICI-F19', '7/9/24', '13:20', 'Extraordinario'),
(2336, '1921099', 'ARIAS CLIMACO BRANDON', 'ISES-F3', '6/28/24', '16:20', 'Extraordinario'),
(2337, '1710069', 'ARIAS QUIROZ JAQUELINE', 'ISES-F3', '7/11/24', '14:20', 'Extraordinario'),
(2338, '1920883', 'ARIAS RUIZ HUGO ISAAC', 'ICO-F19', '6/27/24', '9:20', 'Extraordinario'),
(2339, '2221275', 'ARIAS VENTEÑO JOEL', 'IME-F19', '6/28/24', '11:20', 'Extraordinario'),
(2340, '2421275', 'ARIZMENDI GUADARRAMA JAIR DE JESUS', 'IME-F19', '8/12/24', '11:00', 'Extraordinario'),
(2341, '1610064', 'ARMADA SERRANO GUSTAVO', 'ICI-F3', '7/2/24', '13:20', 'Extraordinario'),
(2342, '1920952', 'ARREDONDO ALMARAZ ALAN', 'ICI-F3', '6/28/24', '17:20', 'Extraordinario'),
(2343, '2320964', 'ARREOLA RUBIO OSCAR ARMANDO', 'ICO-F19', '7/16/24', '9:20', 'Extraordinario'),
(2344, '2221134', 'ARRIAGA GOMEZ LUIS ANGEL', 'ICI-F19', '7/11/24', '14:20', 'Extraordinario'),
(2345, '2321202', 'ARRIAGA MORENO BRANDON URIEL', 'ISES-F3', '7/12/24', '13:20', 'Extraordinario'),
(2346, '2321250', 'ARRIAGA SANCHEZ AXEL SEBASTIAN', 'IME-F19', '7/9/24', '14:20', 'Extraordinario'),
(2347, '2121138', 'ARRIAGA VALENCIA LUIS EDUARDO', 'ICO-F19', '6/27/24', '14:20', 'Extraordinario'),
(2348, '2020050', 'ARRIAGA VALENCIA RAFAEL', 'IEL-F19', '7/9/24', '14:20', 'Extraordinario'),
(2349, '1146656', 'ARRIAGA ZEPEDA GERARDO ALDAIR', 'IME-F3', '7/16/24', '17:20', 'Extraordinario'),
(2350, '2220001', 'ARRIOJA APIPILHUAZCO MARIA DANIELA', 'ICO-F19', '7/15/24', '14:20', 'Extraordinario'),
(2351, '1821150', 'ARROYO BECERRIL ISAEL', 'ICI-F3', '6/27/24', '18:20', 'Extraordinario'),
(2352, '1944483', 'ARROYO CABAÑAS DAYMAR ALEJANDRO', 'ICO-F19', '7/5/24', '12:20', 'Extraordinario'),
(2353, '1710076', 'ARROYO MARTINEZ MARIANA', 'ICI-F19', '7/15/24', '13:20', 'Extraordinario'),
(2354, '2020025', 'ARTIGAS MARROQUIN LUIS ALBERTO', 'ICI-F19', '7/8/24', '10:20', 'Extraordinario'),
(2355, '1613769', 'ARZALUZ MEJIA VIANEY', 'ICI-F3', '7/2/24', '11:20', 'Extraordinario'),
(2356, '2120001', 'ARZATE ALCANTARA ORLANDO', 'ICO-F19', '6/27/24', '12:20', 'Extraordinario'),
(2357, '1921100', 'ARZATE CARRILLO JESUS RENE', 'ISES-F3', '6/27/24', '18:20', 'Extraordinario'),
(2358, '1910096', 'ARZATE MARIN ANDRES', 'ICI-F19', '6/27/24', '8:20', 'Extraordinario'),
(2359, '1921017', 'ARZATE PONCIANO CARLOS DANIEL', 'IME-F19', '6/27/24', '12:20', 'Extraordinario'),
(2360, '2043731', 'ASCENCIO GONZALEZ YAHIR', 'IEL-F19', '7/12/24', '12:20', 'Extraordinario'),
(2361, '2010087', 'ASCENCIO LOPEZ YAELY', 'ISES-F3', '6/28/24', '14:20', 'Extraordinario'),
(2362, '2321049', 'ATILANO FACUNDO EDUARDO', 'ICI-F19', '7/16/24', '16:20', 'Extraordinario'),
(2363, '2121139', 'AVELINO BECERRIL BRAYAN', 'ICO-F19', '7/8/24', '15:20', 'Extraordinario'),
(2364, '2020953', 'AVILA FIGUEROA JOSUE YAEL', 'ICO-F19', '7/2/24', '10:20', 'Extraordinario'),
(2365, '1610072', 'AVILA OSORIO DANIELA', 'IEL-F19', '7/1/24', '12:20', 'Extraordinario'),
(2366, '1920061', 'AVILA SERRANO DIEGO ALBERTO', 'IEL-F3', '7/11/24', '15:20', 'Extraordinario'),
(2367, '1613775', 'AVILES HERRERA ALEJANDRO', 'ICI-F3', '6/27/24', '18:20', 'Extraordinario'),
(2368, '2021027', 'AVILES SOTELO JESUS ALONSO', 'ICI-F19', '7/5/24', '9:20', 'Extraordinario'),
(2369, '2013698', 'AYALA GARCIARROJAS FILEAS ESAU', 'ISES-F3', '7/8/24', '18:20', 'Extraordinario'),
(2370, '2121259', 'AYALA MENDOZA ALAN MAURICIO', 'IEL-F19', '6/28/24', '10:20', 'Extraordinario'),
(2371, '1712048', 'AZCARRAGA CONTRERAS TONATIUH BENJAMIN', 'ICI-F19', '7/8/24', '15:20', 'Extraordinario'),
(2372, '2018370', 'BAHENA HERNANDEZ ANGEL IVAN', 'ISES-F3', '7/12/24', '15:20', 'Extraordinario'),
(2373, '2011343', 'BALBUENA GONZALEZ RAMON', 'ICI-F19', '7/16/24', '9:20', 'Extraordinario'),
(2374, '1513049', 'BALDOVINO OLIVOS AXEL URIEL', 'ICI-F19', '7/11/24', '13:20', 'Extraordinario'),
(2375, '2221137', 'BALLESTEROS MEJIA JOVANNI', 'ICI-F19', '7/5/24', '11:20', 'Extraordinario'),
(2376, '1610085', 'BALLESTEROS VILLAR EDUARDO', 'ICI-F3', '7/2/24', '12:20', 'Extraordinario'),
(2377, '2011346', 'BAÑUELOS HERNANDEZ JESSICA SIOMARA', 'IME-F19', '7/16/24', '15:20', 'Extraordinario'),
(2378, '1410093', 'BARCENAS MENA JOHAN EMMANUEL', 'ICO-F19', '7/11/24', '10:20', 'Extraordinario'),
(2379, '2321251', 'BARRAGAN ARRIAGA PEDRO', 'IME-F19', '7/15/24', '18:20', 'Extraordinario'),
(2380, '1711081', 'BARRERA GONZALEZ LIZBETH ANGELICA', 'ICO-F19', '6/28/24', '8:20', 'Extraordinario'),
(2381, '2120060', 'BARRERA SANTANA ESMERALDA', 'IEL-F19', '7/16/24', '12:20', 'Extraordinario'),
(2382, '1610089', 'BARRERA TAMARIZ JOSE FRANCISCO', 'ICO-F19', '7/11/24', '17:20', 'Extraordinario'),
(2383, '2121140', 'BARRERA TORRES ANGEL DANIEL', 'ICO-F19', '7/12/24', '9:20', 'Extraordinario'),
(2384, '1817146', 'BARRIOS HERRERA JOSHUA', 'ISES-F3', '7/12/24', '13:20', 'Extraordinario'),
(2385, '2221138', 'BARRIOS LUNA ARLENE', 'ICI-F19', '6/28/24', '11:20', 'Extraordinario'),
(2386, '2120024', 'BARRON GARDUÑO KATIA', 'ICI-F19', '7/12/24', '14:20', 'Extraordinario'),
(2387, '1920886', 'BARRUETA AGUIRRE CESAR ANTONIO', 'ICO-F19', '6/28/24', '8:20', 'Extraordinario'),
(2388, '1821076', 'BARTOLO BONIFACIO DANIELA', 'ICO-F3', '7/8/24', '11:20', 'Extraordinario'),
(2389, '2221139', 'BARTOLO PUERTA JOSE MIGUEL', 'ICI-F19', '7/16/24', '9:20', 'Extraordinario'),
(2390, '2221049', 'BASTIDA ALVAREZ GERARDO', 'ICO-F19', '6/27/24', '17:20', 'Extraordinario'),
(2391, '2220030', 'BASTIDA BASTIDA JESUS GETZEMANI', 'ISES-F3', '7/16/24', '9:20', 'Extraordinario'),
(2392, '1920887', 'BASTIDA DIAZ JOSE MANUEL', 'ICO-F19', '6/27/24', '10:20', 'Extraordinario'),
(2393, '1920014', 'BASTIDA SOSA SERGIO', 'ICI-F3', '7/16/24', '12:20', 'Extraordinario'),
(2394, '1142884', 'BATA GALLO EMMANUEL', 'IME-F3', '7/16/24', '17:20', 'Extraordinario'),
(2395, '2121333', 'BAZALDUA GOMEZ RODRIGO', 'IME-F19', '7/15/24', '14:20', 'Extraordinario'),
(2396, '2221278', 'BECERRA RAMIREZ ANDRES EMMANUEL', 'IME-F19', '7/8/24', '17:20', 'Extraordinario'),
(2397, '1613787', 'BECERRIL AGUILAR ANTONIO', 'ICO-F19', '7/12/24', '14:20', 'Extraordinario'),
(2398, '1917792', 'BECERRIL GONZALEZ ROSA ANGEL', 'ICI-F19', '8/15/24', '9:20', 'Extraordinario'),
(2399, '1821077', 'BECERRIL HERNANDEZ LETICIA GUADALUPE', 'ICO-F3', '7/2/24', '9:20', 'Extraordinario'),
(2400, '2220013', 'BECERRIL MATEO BRANDON', 'ICI-F19', '7/2/24', '14:20', 'Extraordinario'),
(2401, '1423176', 'BECERRIL MEDINA ANGEL OMAR', 'IME-F19', '7/11/24', '15:20', 'Extraordinario'),
(2402, '1510248', 'BECERRIL PERALTA SINUHE', 'ICI-F3', '7/11/24', '12:20', 'Extraordinario'),
(2403, '2221209', 'BECERRIL PEREZ DIANA PAOLA', 'IEL-F19', '6/27/24', '15:20', 'Extraordinario'),
(2404, '2121141', 'BECERRIL REYES MIRIAM DEL CARMEN', 'ICO-F19', '6/28/24', '15:20', 'Extraordinario'),
(2405, '2221247', 'BECERRIL RODRIGUEZ JOSE', 'ISES-F3', '7/15/24', '8:20', 'Extraordinario'),
(2406, '2221279', 'BECERRIL SALAZAR BRYAN', 'IME-F19', '7/16/24', '11:20', 'Extraordinario'),
(2407, '1713046', 'BECERRIL VALDES ULISES', 'ICO-F19', '6/27/24', '13:20', 'Extraordinario'),
(2408, '1773251', 'BECERRIL VARELA JOSE FRANCISCO', 'IME-F3', '7/2/24', '9:20', 'Extraordinario'),
(2409, '1872097', 'BECERRIL VILCHIS LUIS ANGEL', 'IME-F3', '6/28/24', '10:20', 'Extraordinario'),
(2410, '2321252', 'BECERRIL VILCHIS ZORAYDA CELIC', 'IME-F19', '7/11/24', '15:20', 'Extraordinario'),
(2411, '2172604', 'BEDOLLA FABILA JOSE DANIEL', 'IME-F19', '6/28/24', '12:20', 'Extraordinario'),
(2412, '2040994', 'BEJARANO PALLARES VALERIA NATASHA', 'ICO-F19', '6/27/24', '9:20', 'Extraordinario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `nombre`) VALUES
(1, 'borozcog', '827ccb0eea8a706c4c34a16891f84e7b', 'Beatriz Orozco');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fichas`
--
ALTER TABLE `fichas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2413;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
