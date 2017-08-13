/*
SQLyog Ultimate v12.4.0 (64 bit)
MySQL - 10.1.16-MariaDB : Database - apriori_toko_parfum
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`apriori_toko_parfum` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `apriori_toko_parfum`;

/*Table structure for table `confidence` */

DROP TABLE IF EXISTS `confidence`;

CREATE TABLE `confidence` (
  `kombinasi1` varchar(255) DEFAULT NULL,
  `kombinasi2` varchar(255) DEFAULT NULL,
  `support_xUy` double DEFAULT NULL,
  `support_x` double DEFAULT NULL,
  `confidence` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL,
  `nilai_uji_lift` double DEFAULT NULL,
  `korelasi_rule` varchar(100) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0',
  `jumlah_a` int(11) DEFAULT NULL,
  `jumlah_b` int(11) DEFAULT NULL,
  `jumlah_ab` int(11) DEFAULT NULL,
  `px` double DEFAULT NULL,
  `py` double DEFAULT NULL,
  `pxuy` double DEFAULT NULL,
  `from_itemset` int(11) DEFAULT NULL COMMENT 'dari itemset 2/3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `confidence` */

insert  into `confidence`(`kombinasi1`,`kombinasi2`,`support_xUy`,`support_x`,`confidence`,`lolos`,`min_support`,`min_confidence`,`nilai_uji_lift`,`korelasi_rule`,`id_process`,`jumlah_a`,`jumlah_b`,`jumlah_ab`,`px`,`py`,`pxuy`,`from_itemset`) values 
('Melati','Silver',10.583941605839,29.92700729927,35.365853658535,1,20,35,1.2920325203252,'korelasi positif',1,82,75,29,0.2992700729927,0.27372262773723,0.10583941605839,2),
('Silver','Melati',10.583941605839,27.372262773723,38.666666666665,1,20,35,1.2920325203252,'korelasi positif',1,75,82,29,0.27372262773723,0.2992700729927,0.10583941605839,2),
('Melati','Lovely KW 1',8.029197080292,29.92700729927,26.829268292683,0,20,35,0.96726572528883,'korelasi negatif',1,82,76,22,0.2992700729927,0.27737226277372,0.08029197080292,2),
('Lovely KW 1','Melati',8.029197080292,27.737226277372,28.947368421053,0,20,35,0.96726572528883,'korelasi negatif',1,76,82,22,0.27737226277372,0.2992700729927,0.08029197080292,2),
('Melati','Sexy Gravity',7.6642335766423,29.92700729927,25.609756097561,0,20,35,1.1138211382114,'korelasi positif',1,82,63,21,0.2992700729927,0.22992700729927,0.076642335766423,2),
('Sexy Gravity','Melati',7.6642335766423,22.992700729927,33.333333333333,0,20,35,1.1138211382114,'korelasi positif',1,63,82,21,0.22992700729927,0.2992700729927,0.076642335766423,2),
('Melati','Fantasy',9.4890510948905,29.92700729927,31.707317073171,0,20,35,1.046723479283,'korelasi positif',1,82,83,26,0.2992700729927,0.3029197080292,0.094890510948905,2),
('Fantasy','Melati',9.4890510948905,30.29197080292,31.325301204819,0,20,35,1.046723479283,'korelasi positif',1,83,82,26,0.3029197080292,0.2992700729927,0.094890510948905,2),
('Melati','Bubble Gum',10.21897810219,29.92700729927,34.146341463415,0,20,35,1.2150776053215,'korelasi positif',1,82,77,28,0.2992700729927,0.28102189781022,0.1021897810219,2),
('Bubble Gum','Melati',10.21897810219,28.102189781022,36.363636363637,1,20,35,1.2150776053215,'korelasi positif',1,77,82,28,0.28102189781022,0.2992700729927,0.1021897810219,2),
('Melati','Malaikat Subuh',9.1240875912409,29.92700729927,30.487804878049,0,20,35,1.1443367858336,'korelasi positif',1,82,73,25,0.2992700729927,0.26642335766423,0.091240875912409,2),
('Malaikat Subuh','Melati',9.1240875912409,26.642335766423,34.246575342466,0,20,35,1.1443367858336,'korelasi positif',1,73,82,25,0.26642335766423,0.2992700729927,0.091240875912409,2),
('Melati','1000 bunga',7.6642335766423,29.92700729927,25.609756097561,0,20,35,0.92329910141207,'korelasi negatif',1,82,76,21,0.2992700729927,0.27737226277372,0.076642335766423,2),
('1000 bunga','Melati',7.6642335766423,27.737226277372,27.631578947368,0,20,35,0.92329910141207,'korelasi negatif',1,76,82,21,0.27737226277372,0.2992700729927,0.076642335766423,2),
('Melati','Blue Emotion KW 1',7.6642335766423,29.92700729927,25.609756097561,0,20,35,1.016967126193,'korelasi positif',1,82,69,21,0.2992700729927,0.25182481751825,0.076642335766423,2),
('Blue Emotion KW 1','Melati',7.6642335766423,25.182481751825,30.434782608696,0,20,35,1.016967126193,'korelasi positif',1,69,82,21,0.25182481751825,0.2992700729927,0.076642335766423,2),
('Melati','Bulgary Extreme KW 1',8.7591240875912,29.92700729927,29.268292682927,0,20,35,0.99006323396567,'korelasi negatif',1,82,81,24,0.2992700729927,0.2956204379562,0.087591240875912,2),
('Bulgary Extreme KW 1','Melati',8.7591240875912,29.56204379562,29.629629629629,0,20,35,0.99006323396567,'korelasi negatif',1,81,82,24,0.2956204379562,0.2992700729927,0.087591240875912,2),
('Silver','Fantasy',8.3941605839416,27.372262773723,30.666666666667,0,20,35,1.0123694779116,'korelasi positif',1,75,83,23,0.27372262773723,0.3029197080292,0.083941605839416,2),
('Fantasy','Silver',8.3941605839416,30.29197080292,27.710843373494,0,20,35,1.0123694779116,'korelasi positif',1,83,75,23,0.3029197080292,0.27372262773723,0.083941605839416,2),
('Silver','Bubble Gum',7.2992700729927,27.372262773723,26.666666666667,0,20,35,0.94891774891775,'korelasi negatif',1,75,77,20,0.27372262773723,0.28102189781022,0.072992700729927,2),
('Bubble Gum','Silver',7.2992700729927,28.102189781022,25.974025974026,0,20,35,0.94891774891775,'korelasi negatif',1,77,75,20,0.28102189781022,0.27372262773723,0.072992700729927,2),
('Silver','1000 bunga',8.029197080292,27.372262773723,29.333333333333,0,20,35,1.0575438596491,'korelasi positif',1,75,76,22,0.27372262773723,0.27737226277372,0.08029197080292,2),
('1000 bunga','Silver',8.029197080292,27.737226277372,28.947368421053,0,20,35,1.0575438596491,'korelasi positif',1,76,75,22,0.27737226277372,0.27372262773723,0.08029197080292,2),
('Silver','Bulgary Extreme KW 1',9.1240875912409,27.372262773723,33.333333333333,0,20,35,1.1275720164609,'korelasi positif',1,75,81,25,0.27372262773723,0.2956204379562,0.091240875912409,2),
('Bulgary Extreme KW 1','Silver',9.1240875912409,29.56204379562,30.864197530864,0,20,35,1.1275720164609,'korelasi positif',1,81,75,25,0.2956204379562,0.27372262773723,0.091240875912409,2),
('Lovely KW 1','Fantasy',9.4890510948905,27.737226277372,34.210526315789,0,20,35,1.1293595434369,'korelasi positif',1,76,83,26,0.27737226277372,0.3029197080292,0.094890510948905,2),
('Fantasy','Lovely KW 1',9.4890510948905,30.29197080292,31.325301204819,0,20,35,1.1293595434369,'korelasi positif',1,83,76,26,0.3029197080292,0.27737226277372,0.094890510948905,2),
('Lovely KW 1','Bubble Gum',8.029197080292,27.737226277372,28.947368421053,0,20,35,1.0300751879699,'korelasi positif',1,76,77,22,0.27737226277372,0.28102189781022,0.08029197080292,2),
('Bubble Gum','Lovely KW 1',8.029197080292,28.102189781022,28.571428571429,0,20,35,1.0300751879699,'korelasi positif',1,77,76,22,0.28102189781022,0.27737226277372,0.08029197080292,2),
('Lovely KW 1','Malaikat Subuh',7.6642335766423,27.737226277372,27.631578947368,0,20,35,1.0371304974766,'korelasi positif',1,76,73,21,0.27737226277372,0.26642335766423,0.076642335766423,2),
('Malaikat Subuh','Lovely KW 1',7.6642335766423,26.642335766423,28.767123287671,0,20,35,1.0371304974766,'korelasi positif',1,73,76,21,0.26642335766423,0.27737226277372,0.076642335766423,2),
('Lovely KW 1','Antonio Banderas',7.6642335766423,27.737226277372,27.631578947368,0,20,35,1.2832292595897,'korelasi positif',1,76,59,21,0.27737226277372,0.21532846715328,0.076642335766423,2),
('Antonio Banderas','Lovely KW 1',7.6642335766423,21.532846715328,35.593220338983,1,20,35,1.2832292595897,'korelasi positif',1,59,76,21,0.21532846715328,0.27737226277372,0.076642335766423,2),
('Lovely KW 1','Bulgary Extreme KW 1',8.029197080292,27.737226277372,28.947368421053,0,20,35,0.97920727745289,'korelasi negatif',1,76,81,22,0.27737226277372,0.2956204379562,0.08029197080292,2),
('Bulgary Extreme KW 1','Lovely KW 1',8.029197080292,29.56204379562,27.160493827161,0,20,35,0.97920727745289,'korelasi negatif',1,81,76,22,0.2956204379562,0.27737226277372,0.08029197080292,2),
('Sexy Gravity','Fantasy',9.1240875912409,22.992700729927,39.68253968254,1,20,35,1.3100019124116,'korelasi positif',1,63,83,25,0.22992700729927,0.3029197080292,0.091240875912409,2),
('Fantasy','Sexy Gravity',9.1240875912409,30.29197080292,30.120481927711,0,20,35,1.3100019124116,'korelasi positif',1,83,63,25,0.3029197080292,0.22992700729927,0.091240875912409,2),
('Sexy Gravity','Blue Emotion KW 1',8.029197080292,22.992700729927,34.920634920635,0,20,35,1.38670347366,'korelasi positif',1,63,69,22,0.22992700729927,0.25182481751825,0.08029197080292,2),
('Blue Emotion KW 1','Sexy Gravity',8.029197080292,25.182481751825,31.884057971015,0,20,35,1.38670347366,'korelasi positif',1,69,63,22,0.25182481751825,0.22992700729927,0.08029197080292,2),
('Vanilla','Bubble Gum',8.029197080292,22.262773722628,36.065573770492,1,20,35,1.2833723653396,'korelasi positif',1,61,77,22,0.22262773722628,0.28102189781022,0.08029197080292,2),
('Bubble Gum','Vanilla',8.029197080292,28.102189781022,28.571428571429,0,20,35,1.2833723653396,'korelasi positif',1,77,61,22,0.28102189781022,0.22262773722628,0.08029197080292,2),
('Fantasy','Bubble Gum',9.8540145985401,30.29197080292,32.530120481928,0,20,35,1.15756532624,'korelasi positif',1,83,77,27,0.3029197080292,0.28102189781022,0.098540145985401,2),
('Bubble Gum','Fantasy',9.8540145985401,28.102189781022,35.064935064935,1,20,35,1.15756532624,'korelasi positif',1,77,83,27,0.28102189781022,0.3029197080292,0.098540145985401,2),
('Fantasy','Malaikat Subuh',8.3941605839416,30.29197080292,27.710843373494,0,20,35,1.0401056279914,'korelasi positif',1,83,73,23,0.3029197080292,0.26642335766423,0.083941605839416,2),
('Malaikat Subuh','Fantasy',8.3941605839416,26.642335766423,31.506849315068,0,20,35,1.0401056279914,'korelasi positif',1,73,83,23,0.26642335766423,0.3029197080292,0.083941605839416,2),
('Fantasy','Antonio Banderas',7.2992700729927,30.29197080292,24.096385542169,0,20,35,1.1190524811109,'korelasi positif',1,83,59,20,0.3029197080292,0.21532846715328,0.072992700729927,2),
('Antonio Banderas','Fantasy',7.2992700729927,21.532846715328,33.898305084746,0,20,35,1.1190524811109,'korelasi positif',1,59,83,20,0.21532846715328,0.3029197080292,0.072992700729927,2),
('Fantasy','1000 bunga',9.8540145985401,30.29197080292,32.530120481928,0,20,35,1.1727964489537,'korelasi positif',1,83,76,27,0.3029197080292,0.27737226277372,0.098540145985401,2),
('1000 bunga','Fantasy',9.8540145985401,27.737226277372,35.526315789474,1,20,35,1.1727964489537,'korelasi positif',1,76,83,27,0.27737226277372,0.3029197080292,0.098540145985401,2),
('Fantasy','Blue Emotion KW 1',10.21897810219,30.29197080292,33.734939759037,0,20,35,1.339619346953,'korelasi positif',1,83,69,28,0.3029197080292,0.25182481751825,0.1021897810219,2),
('Blue Emotion KW 1','Fantasy',10.21897810219,25.182481751825,40.579710144928,1,20,35,1.339619346953,'korelasi positif',1,69,83,28,0.25182481751825,0.3029197080292,0.1021897810219,2),
('Fantasy','Bulgary Extreme KW 1',8.3941605839416,30.29197080292,27.710843373494,0,20,35,0.93737914621449,'korelasi negatif',1,83,81,23,0.3029197080292,0.2956204379562,0.083941605839416,2),
('Bulgary Extreme KW 1','Fantasy',8.3941605839416,29.56204379562,28.395061728395,0,20,35,0.93737914621449,'korelasi negatif',1,81,83,23,0.2956204379562,0.3029197080292,0.083941605839416,2),
('Fantasy','Blue Desire KW 1',7.6642335766423,30.29197080292,25.301204819277,0,20,35,1.6908610049956,'korelasi positif',1,83,41,21,0.3029197080292,0.14963503649635,0.076642335766423,2),
('Blue Desire KW 1','Fantasy',7.6642335766423,14.963503649635,51.219512195122,1,20,35,1.6908610049956,'korelasi positif',1,41,83,21,0.14963503649635,0.3029197080292,0.076642335766423,2),
('Bubble Gum','1000 bunga',7.2992700729927,28.102189781022,25.974025974026,0,20,35,0.93643198906357,'korelasi negatif',1,77,76,20,0.28102189781022,0.27737226277372,0.072992700729927,2),
('1000 bunga','Bubble Gum',7.2992700729927,27.737226277372,26.315789473684,0,20,35,0.93643198906357,'korelasi negatif',1,76,77,20,0.27737226277372,0.28102189781022,0.072992700729927,2),
('Bubble Gum','Bulgary Extreme KW 1',7.2992700729927,28.102189781022,25.974025974026,0,20,35,0.87862754529421,'korelasi negatif',1,77,81,20,0.28102189781022,0.2956204379562,0.072992700729927,2),
('Bulgary Extreme KW 1','Bubble Gum',7.2992700729927,29.56204379562,24.691358024691,0,20,35,0.87862754529421,'korelasi negatif',1,81,77,20,0.2956204379562,0.28102189781022,0.072992700729927,2),
('Malaikat Subuh','1000 bunga',9.1240875912409,26.642335766423,34.246575342466,0,20,35,1.2346791636626,'korelasi positif',1,73,76,25,0.26642335766423,0.27737226277372,0.091240875912409,2),
('1000 bunga','Malaikat Subuh',9.1240875912409,27.737226277372,32.894736842105,0,20,35,1.2346791636626,'korelasi positif',1,76,73,25,0.27737226277372,0.26642335766423,0.091240875912409,2),
('Malaikat Subuh','Blue Emotion KW 1',9.1240875912409,26.642335766423,34.246575342466,0,20,35,1.3599364701211,'korelasi positif',1,73,69,25,0.26642335766423,0.25182481751825,0.091240875912409,2),
('Blue Emotion KW 1','Malaikat Subuh',9.1240875912409,25.182481751825,36.231884057971,1,20,35,1.3599364701211,'korelasi positif',1,69,73,25,0.25182481751825,0.26642335766423,0.091240875912409,2),
('Malaikat Subuh','Bulgary Extreme KW 1',7.6642335766423,26.642335766423,28.767123287671,0,20,35,0.97311009639777,'korelasi negatif',1,73,81,21,0.26642335766423,0.2956204379562,0.076642335766423,2),
('Bulgary Extreme KW 1','Malaikat Subuh',7.6642335766423,29.56204379562,25.925925925926,0,20,35,0.97311009639777,'korelasi negatif',1,81,73,21,0.2956204379562,0.26642335766423,0.076642335766423,2),
('Antonio Banderas','1000 bunga',7.2992700729927,21.532846715328,33.898305084746,0,20,35,1.2221231043711,'korelasi positif',1,59,76,20,0.21532846715328,0.27737226277372,0.072992700729927,2),
('1000 bunga','Antonio Banderas',7.2992700729927,27.737226277372,26.315789473684,0,20,35,1.2221231043711,'korelasi positif',1,76,59,20,0.27737226277372,0.21532846715328,0.072992700729927,2),
('Blue Emotion KW 1','Bulgary Extreme KW 1',7.2992700729927,25.182481751825,28.985507246377,0,20,35,0.98049740561818,'korelasi negatif',1,69,81,20,0.25182481751825,0.2956204379562,0.072992700729927,2),
('Bulgary Extreme KW 1','Blue Emotion KW 1',7.2992700729927,29.56204379562,24.691358024691,0,20,35,0.98049740561818,'korelasi negatif',1,81,69,20,0.2956204379562,0.25182481751825,0.072992700729927,2);

/*Table structure for table `itemset1` */

DROP TABLE IF EXISTS `itemset1`;

CREATE TABLE `itemset1` (
  `atribut` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemset1` */

insert  into `itemset1`(`atribut`,`jumlah`,`support`,`lolos`,`id_process`) values 
('Bellagio',37,13.503649635036,1,1),
('Essential Sport',8,2.9197080291971,0,1),
('Melati',82,29.92700729927,1,1),
('Jimmy Choo Man',4,1.4598540145985,0,1),
('Black Intense',1,0.36496350364964,0,1),
('White Musk',48,17.518248175182,1,1),
('Silver',75,27.372262773723,1,1),
('Lovely KW 1',76,27.737226277372,1,1),
('Sexy Gravity',63,22.992700729927,1,1),
('Cool Water Man KW 1',27,9.8540145985401,1,1),
('Vanilla',61,22.262773722628,1,1),
('Exotic Unisex',16,5.8394160583942,0,1),
('Aqua Digio Blue KW 1',8,2.9197080291971,0,1),
('Fantasy',83,30.29197080292,1,1),
('Bubble Gum',77,28.102189781022,1,1),
('Legend',16,5.8394160583942,0,1),
('Bulgary Pour Homme Soir',25,9.1240875912409,1,1),
('Blue Edition KW 1',2,0.72992700729927,0,1),
('Cool Game',4,1.4598540145985,0,1),
('Ferrari Man In Red KW 1',9,3.2846715328467,0,1),
('Malaikat Subuh',73,26.642335766423,1,1),
('Still Donna',1,0.36496350364964,0,1),
('Flight Of Fancy KW 1',9,3.2846715328467,0,1),
('Dalal',1,0.36496350364964,0,1),
('Sedap Malam',16,5.8394160583942,0,1),
('Polo Stik',1,0.36496350364964,0,1),
('Butterfly',28,10.21897810219,1,1),
('Cool Water Man',36,13.138686131387,1,1),
('Lucious Pink',41,14.963503649635,1,1),
('Kenzo In Bali',38,13.868613138686,1,1),
('Jovan',18,6.5693430656934,0,1),
('Harajuku Lovers',39,14.233576642336,1,1),
('Jaguar Vision KW 1',21,7.6642335766423,1,1),
('Boss Orange',29,10.583941605839,1,1),
('Aigner Black',26,9.4890510948905,1,1),
('Boss Energise',19,6.9343065693431,0,1),
('Antonio Banderas',59,21.532846715328,1,1),
('Adidas Fair Play',45,16.423357664234,1,1),
('Blue Ice',7,2.5547445255474,0,1),
('1000 bunga',76,27.737226277372,1,1),
('VIP for Him',28,10.21897810219,1,1),
('Dolly Girl',43,15.693430656934,1,1),
('Vintage',12,4.3795620437956,0,1),
('Aqua Blue Edition KW 1',10,3.6496350364963,0,1),
('Heavenly Kiss',19,6.9343065693431,0,1),
('Blue Emotion KW 1',69,25.182481751825,1,1),
('Kasturi Musk',11,4.014598540146,0,1),
('Bulgary Extreme KW 1',81,29.56204379562,1,1),
('Blue Desire KW 1',41,14.963503649635,1,1),
('Manchester United',1,0.36496350364964,0,1),
('eternity lady',18,6.5693430656934,0,1),
('strawberry',14,5.1094890510949,0,1),
('happy clinique woman',5,1.8248175182482,0,1),
('cool water lady',14,5.1094890510949,0,1),
('flight of fancy',6,2.1897810218978,0,1),
('gahroudh',9,3.2846715328467,0,1),
('kenzo pour homme lady',6,2.1897810218978,0,1),
('1000  bunga',3,1.0948905109489,0,1),
('cool water man  kw 1',1,0.36496350364964,0,1),
('chic for man kw 1',1,0.36496350364964,0,1),
('cobra',2,0.72992700729927,0,1),
('212 sexy man',14,5.1094890510949,0,1),
('jean paul gaultier',1,0.36496350364964,0,1),
('charly silver',3,1.0948905109489,0,1),
('blue emotion kw1',1,0.36496350364964,0,1),
('fantasy kw 1',1,0.36496350364964,0,1),
('christiano ronaldo',1,0.36496350364964,0,1),
('polo supreme oud kw 1',2,0.72992700729927,0,1),
('lacoste land kw 1',2,0.72992700729927,0,1),
('adiadas fair play',1,0.36496350364964,0,1),
('hidden fantasy',1,0.36496350364964,0,1),
('jasmine noir',1,0.36496350364964,0,1),
('missik putih super',6,2.1897810218978,0,1),
('ocean royal',3,1.0948905109489,0,1),
('the brilliant game',6,2.1897810218978,0,1),
('jaguar marc II',1,0.36496350364964,0,1),
('kenzo air',1,0.36496350364964,0,1),
('polo sport kw 1',15,5.4744525547445,0,1),
('bravast',1,0.36496350364964,0,1),
('rose essential',1,0.36496350364964,0,1),
('polo stick',1,0.36496350364964,0,1),
('fantay',1,0.36496350364964,0,1),
('ripcurl',2,0.72992700729927,0,1),
('blue de channel',2,0.72992700729927,0,1),
('uomo absolute',3,1.0948905109489,0,1),
('mukhalat al-malaki',1,0.36496350364964,0,1),
('hello kitty',1,0.36496350364964,0,1),
('al-hanouf',1,0.36496350364964,0,1),
('omnia crystaline',1,0.36496350364964,0,1),
('polo black',2,0.72992700729927,0,1),
('deep red',2,0.72992700729927,0,1),
('aqua essenza kw 1',2,0.72992700729927,0,1),
('escada in paradise',1,0.36496350364964,0,1),
('coco chocolate',4,1.4598540145985,0,1),
('lacoste blue',1,0.36496350364964,0,1),
('playboy london',9,3.2846715328467,0,1),
('stardust woman',1,0.36496350364964,0,1),
('boss orange man',1,0.36496350364964,0,1);

/*Table structure for table `itemset2` */

DROP TABLE IF EXISTS `itemset2`;

CREATE TABLE `itemset2` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemset2` */

insert  into `itemset2`(`atribut1`,`atribut2`,`jumlah`,`support`,`lolos`,`id_process`) values 
('Bellagio','Melati',10,3.6496350364963,0,1),
('Bellagio','White Musk',8,2.9197080291971,0,1),
('Bellagio','Silver',12,4.3795620437956,0,1),
('Bellagio','Lovely KW 1',11,4.014598540146,0,1),
('Bellagio','Sexy Gravity',8,2.9197080291971,0,1),
('Bellagio','Cool Water Man KW 1',5,1.8248175182482,0,1),
('Bellagio','Vanilla',8,2.9197080291971,0,1),
('Bellagio','Fantasy',15,5.4744525547445,0,1),
('Bellagio','Bubble Gum',11,4.014598540146,0,1),
('Bellagio','Bulgary Pour Homme Soir',6,2.1897810218978,0,1),
('Bellagio','Malaikat Subuh',10,3.6496350364963,0,1),
('Bellagio','Butterfly',3,1.0948905109489,0,1),
('Bellagio','Cool Water Man',5,1.8248175182482,0,1),
('Bellagio','Lucious Pink',9,3.2846715328467,0,1),
('Bellagio','Kenzo In Bali',6,2.1897810218978,0,1),
('Bellagio','Harajuku Lovers',4,1.4598540145985,0,1),
('Bellagio','Jaguar Vision KW 1',7,2.5547445255474,0,1),
('Bellagio','Boss Orange',7,2.5547445255474,0,1),
('Bellagio','Aigner Black',4,1.4598540145985,0,1),
('Bellagio','Antonio Banderas',12,4.3795620437956,0,1),
('Bellagio','Adidas Fair Play',6,2.1897810218978,0,1),
('Bellagio','1000 bunga',10,3.6496350364963,0,1),
('Bellagio','VIP for Him',1,0.36496350364964,0,1),
('Bellagio','Dolly Girl',6,2.1897810218978,0,1),
('Bellagio','Blue Emotion KW 1',10,3.6496350364963,0,1),
('Bellagio','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Bellagio','Blue Desire KW 1',6,2.1897810218978,0,1),
('Melati','White Musk',14,5.1094890510949,0,1),
('Melati','Silver',29,10.583941605839,1,1),
('Melati','Lovely KW 1',22,8.029197080292,1,1),
('Melati','Sexy Gravity',21,7.6642335766423,1,1),
('Melati','Cool Water Man KW 1',9,3.2846715328467,0,1),
('Melati','Vanilla',17,6.2043795620438,0,1),
('Melati','Fantasy',26,9.4890510948905,1,1),
('Melati','Bubble Gum',28,10.21897810219,1,1),
('Melati','Bulgary Pour Homme Soir',8,2.9197080291971,0,1),
('Melati','Malaikat Subuh',25,9.1240875912409,1,1),
('Melati','Butterfly',10,3.6496350364963,0,1),
('Melati','Cool Water Man',10,3.6496350364963,0,1),
('Melati','Lucious Pink',10,3.6496350364963,0,1),
('Melati','Kenzo In Bali',12,4.3795620437956,0,1),
('Melati','Harajuku Lovers',13,4.7445255474453,0,1),
('Melati','Jaguar Vision KW 1',7,2.5547445255474,0,1),
('Melati','Boss Orange',9,3.2846715328467,0,1),
('Melati','Aigner Black',10,3.6496350364963,0,1),
('Melati','Antonio Banderas',13,4.7445255474453,0,1),
('Melati','Adidas Fair Play',13,4.7445255474453,0,1),
('Melati','1000 bunga',21,7.6642335766423,1,1),
('Melati','VIP for Him',9,3.2846715328467,0,1),
('Melati','Dolly Girl',10,3.6496350364963,0,1),
('Melati','Blue Emotion KW 1',21,7.6642335766423,1,1),
('Melati','Bulgary Extreme KW 1',24,8.7591240875912,1,1),
('Melati','Blue Desire KW 1',12,4.3795620437956,0,1),
('White Musk','Silver',14,5.1094890510949,0,1),
('White Musk','Lovely KW 1',13,4.7445255474453,0,1),
('White Musk','Sexy Gravity',14,5.1094890510949,0,1),
('White Musk','Cool Water Man KW 1',4,1.4598540145985,0,1),
('White Musk','Vanilla',12,4.3795620437956,0,1),
('White Musk','Fantasy',18,6.5693430656934,0,1),
('White Musk','Bubble Gum',9,3.2846715328467,0,1),
('White Musk','Bulgary Pour Homme Soir',4,1.4598540145985,0,1),
('White Musk','Malaikat Subuh',14,5.1094890510949,0,1),
('White Musk','Butterfly',8,2.9197080291971,0,1),
('White Musk','Cool Water Man',8,2.9197080291971,0,1),
('White Musk','Lucious Pink',2,0.72992700729927,0,1),
('White Musk','Kenzo In Bali',5,1.8248175182482,0,1),
('White Musk','Harajuku Lovers',10,3.6496350364963,0,1),
('White Musk','Jaguar Vision KW 1',4,1.4598540145985,0,1),
('White Musk','Boss Orange',8,2.9197080291971,0,1),
('White Musk','Aigner Black',6,2.1897810218978,0,1),
('White Musk','Antonio Banderas',6,2.1897810218978,0,1),
('White Musk','Adidas Fair Play',10,3.6496350364963,0,1),
('White Musk','1000 bunga',14,5.1094890510949,0,1),
('White Musk','VIP for Him',5,1.8248175182482,0,1),
('White Musk','Dolly Girl',9,3.2846715328467,0,1),
('White Musk','Blue Emotion KW 1',9,3.2846715328467,0,1),
('White Musk','Bulgary Extreme KW 1',15,5.4744525547445,0,1),
('White Musk','Blue Desire KW 1',9,3.2846715328467,0,1),
('Silver','Lovely KW 1',18,6.5693430656934,0,1),
('Silver','Sexy Gravity',19,6.9343065693431,0,1),
('Silver','Cool Water Man KW 1',11,4.014598540146,0,1),
('Silver','Vanilla',15,5.4744525547445,0,1),
('Silver','Fantasy',23,8.3941605839416,1,1),
('Silver','Bubble Gum',20,7.2992700729927,1,1),
('Silver','Bulgary Pour Homme Soir',9,3.2846715328467,0,1),
('Silver','Malaikat Subuh',19,6.9343065693431,0,1),
('Silver','Butterfly',5,1.8248175182482,0,1),
('Silver','Cool Water Man',9,3.2846715328467,0,1),
('Silver','Lucious Pink',15,5.4744525547445,0,1),
('Silver','Kenzo In Bali',16,5.8394160583942,0,1),
('Silver','Harajuku Lovers',10,3.6496350364963,0,1),
('Silver','Jaguar Vision KW 1',8,2.9197080291971,0,1),
('Silver','Boss Orange',9,3.2846715328467,0,1),
('Silver','Aigner Black',8,2.9197080291971,0,1),
('Silver','Antonio Banderas',15,5.4744525547445,0,1),
('Silver','Adidas Fair Play',13,4.7445255474453,0,1),
('Silver','1000 bunga',22,8.029197080292,1,1),
('Silver','VIP for Him',11,4.014598540146,0,1),
('Silver','Dolly Girl',9,3.2846715328467,0,1),
('Silver','Blue Emotion KW 1',19,6.9343065693431,0,1),
('Silver','Bulgary Extreme KW 1',25,9.1240875912409,1,1),
('Silver','Blue Desire KW 1',11,4.014598540146,0,1),
('Lovely KW 1','Sexy Gravity',16,5.8394160583942,0,1),
('Lovely KW 1','Cool Water Man KW 1',10,3.6496350364963,0,1),
('Lovely KW 1','Vanilla',18,6.5693430656934,0,1),
('Lovely KW 1','Fantasy',26,9.4890510948905,1,1),
('Lovely KW 1','Bubble Gum',22,8.029197080292,1,1),
('Lovely KW 1','Bulgary Pour Homme Soir',6,2.1897810218978,0,1),
('Lovely KW 1','Malaikat Subuh',21,7.6642335766423,1,1),
('Lovely KW 1','Butterfly',7,2.5547445255474,0,1),
('Lovely KW 1','Cool Water Man',12,4.3795620437956,0,1),
('Lovely KW 1','Lucious Pink',9,3.2846715328467,0,1),
('Lovely KW 1','Kenzo In Bali',12,4.3795620437956,0,1),
('Lovely KW 1','Harajuku Lovers',11,4.014598540146,0,1),
('Lovely KW 1','Jaguar Vision KW 1',5,1.8248175182482,0,1),
('Lovely KW 1','Boss Orange',8,2.9197080291971,0,1),
('Lovely KW 1','Aigner Black',11,4.014598540146,0,1),
('Lovely KW 1','Antonio Banderas',21,7.6642335766423,1,1),
('Lovely KW 1','Adidas Fair Play',14,5.1094890510949,0,1),
('Lovely KW 1','1000 bunga',17,6.2043795620438,0,1),
('Lovely KW 1','VIP for Him',10,3.6496350364963,0,1),
('Lovely KW 1','Dolly Girl',14,5.1094890510949,0,1),
('Lovely KW 1','Blue Emotion KW 1',18,6.5693430656934,0,1),
('Lovely KW 1','Bulgary Extreme KW 1',22,8.029197080292,1,1),
('Lovely KW 1','Blue Desire KW 1',15,5.4744525547445,0,1),
('Sexy Gravity','Cool Water Man KW 1',3,1.0948905109489,0,1),
('Sexy Gravity','Vanilla',17,6.2043795620438,0,1),
('Sexy Gravity','Fantasy',25,9.1240875912409,1,1),
('Sexy Gravity','Bubble Gum',18,6.5693430656934,0,1),
('Sexy Gravity','Bulgary Pour Homme Soir',5,1.8248175182482,0,1),
('Sexy Gravity','Malaikat Subuh',17,6.2043795620438,0,1),
('Sexy Gravity','Butterfly',9,3.2846715328467,0,1),
('Sexy Gravity','Cool Water Man',6,2.1897810218978,0,1),
('Sexy Gravity','Lucious Pink',7,2.5547445255474,0,1),
('Sexy Gravity','Kenzo In Bali',6,2.1897810218978,0,1),
('Sexy Gravity','Harajuku Lovers',10,3.6496350364963,0,1),
('Sexy Gravity','Jaguar Vision KW 1',4,1.4598540145985,0,1),
('Sexy Gravity','Boss Orange',8,2.9197080291971,0,1),
('Sexy Gravity','Aigner Black',5,1.8248175182482,0,1),
('Sexy Gravity','Antonio Banderas',5,1.8248175182482,0,1),
('Sexy Gravity','Adidas Fair Play',13,4.7445255474453,0,1),
('Sexy Gravity','1000 bunga',17,6.2043795620438,0,1),
('Sexy Gravity','VIP for Him',7,2.5547445255474,0,1),
('Sexy Gravity','Dolly Girl',16,5.8394160583942,0,1),
('Sexy Gravity','Blue Emotion KW 1',22,8.029197080292,1,1),
('Sexy Gravity','Bulgary Extreme KW 1',15,5.4744525547445,0,1),
('Sexy Gravity','Blue Desire KW 1',7,2.5547445255474,0,1),
('Cool Water Man KW 1','Vanilla',4,1.4598540145985,0,1),
('Cool Water Man KW 1','Fantasy',7,2.5547445255474,0,1),
('Cool Water Man KW 1','Bubble Gum',5,1.8248175182482,0,1),
('Cool Water Man KW 1','Bulgary Pour Homme Soir',8,2.9197080291971,0,1),
('Cool Water Man KW 1','Malaikat Subuh',8,2.9197080291971,0,1),
('Cool Water Man KW 1','Butterfly',0,0,0,1),
('Cool Water Man KW 1','Cool Water Man',5,1.8248175182482,0,1),
('Cool Water Man KW 1','Lucious Pink',4,1.4598540145985,0,1),
('Cool Water Man KW 1','Kenzo In Bali',6,2.1897810218978,0,1),
('Cool Water Man KW 1','Harajuku Lovers',1,0.36496350364964,0,1),
('Cool Water Man KW 1','Jaguar Vision KW 1',3,1.0948905109489,0,1),
('Cool Water Man KW 1','Boss Orange',4,1.4598540145985,0,1),
('Cool Water Man KW 1','Aigner Black',2,0.72992700729927,0,1),
('Cool Water Man KW 1','Antonio Banderas',12,4.3795620437956,0,1),
('Cool Water Man KW 1','Adidas Fair Play',4,1.4598540145985,0,1),
('Cool Water Man KW 1','1000 bunga',8,2.9197080291971,0,1),
('Cool Water Man KW 1','VIP for Him',1,0.36496350364964,0,1),
('Cool Water Man KW 1','Dolly Girl',1,0.36496350364964,0,1),
('Cool Water Man KW 1','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Cool Water Man KW 1','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Cool Water Man KW 1','Blue Desire KW 1',3,1.0948905109489,0,1),
('Vanilla','Fantasy',18,6.5693430656934,0,1),
('Vanilla','Bubble Gum',22,8.029197080292,1,1),
('Vanilla','Bulgary Pour Homme Soir',4,1.4598540145985,0,1),
('Vanilla','Malaikat Subuh',18,6.5693430656934,0,1),
('Vanilla','Butterfly',11,4.014598540146,0,1),
('Vanilla','Cool Water Man',14,5.1094890510949,0,1),
('Vanilla','Lucious Pink',12,4.3795620437956,0,1),
('Vanilla','Kenzo In Bali',10,3.6496350364963,0,1),
('Vanilla','Harajuku Lovers',12,4.3795620437956,0,1),
('Vanilla','Jaguar Vision KW 1',4,1.4598540145985,0,1),
('Vanilla','Boss Orange',8,2.9197080291971,0,1),
('Vanilla','Aigner Black',8,2.9197080291971,0,1),
('Vanilla','Antonio Banderas',10,3.6496350364963,0,1),
('Vanilla','Adidas Fair Play',12,4.3795620437956,0,1),
('Vanilla','1000 bunga',18,6.5693430656934,0,1),
('Vanilla','VIP for Him',9,3.2846715328467,0,1),
('Vanilla','Dolly Girl',9,3.2846715328467,0,1),
('Vanilla','Blue Emotion KW 1',16,5.8394160583942,0,1),
('Vanilla','Bulgary Extreme KW 1',17,6.2043795620438,0,1),
('Vanilla','Blue Desire KW 1',5,1.8248175182482,0,1),
('Fantasy','Bubble Gum',27,9.8540145985401,1,1),
('Fantasy','Bulgary Pour Homme Soir',7,2.5547445255474,0,1),
('Fantasy','Malaikat Subuh',23,8.3941605839416,1,1),
('Fantasy','Butterfly',8,2.9197080291971,0,1),
('Fantasy','Cool Water Man',11,4.014598540146,0,1),
('Fantasy','Lucious Pink',13,4.7445255474453,0,1),
('Fantasy','Kenzo In Bali',6,2.1897810218978,0,1),
('Fantasy','Harajuku Lovers',7,2.5547445255474,0,1),
('Fantasy','Jaguar Vision KW 1',5,1.8248175182482,0,1),
('Fantasy','Boss Orange',10,3.6496350364963,0,1),
('Fantasy','Aigner Black',7,2.5547445255474,0,1),
('Fantasy','Antonio Banderas',20,7.2992700729927,1,1),
('Fantasy','Adidas Fair Play',12,4.3795620437956,0,1),
('Fantasy','1000 bunga',27,9.8540145985401,1,1),
('Fantasy','VIP for Him',9,3.2846715328467,0,1),
('Fantasy','Dolly Girl',16,5.8394160583942,0,1),
('Fantasy','Blue Emotion KW 1',28,10.21897810219,1,1),
('Fantasy','Bulgary Extreme KW 1',23,8.3941605839416,1,1),
('Fantasy','Blue Desire KW 1',21,7.6642335766423,1,1),
('Bubble Gum','Bulgary Pour Homme Soir',8,2.9197080291971,0,1),
('Bubble Gum','Malaikat Subuh',18,6.5693430656934,0,1),
('Bubble Gum','Butterfly',8,2.9197080291971,0,1),
('Bubble Gum','Cool Water Man',7,2.5547445255474,0,1),
('Bubble Gum','Lucious Pink',16,5.8394160583942,0,1),
('Bubble Gum','Kenzo In Bali',7,2.5547445255474,0,1),
('Bubble Gum','Harajuku Lovers',15,5.4744525547445,0,1),
('Bubble Gum','Jaguar Vision KW 1',7,2.5547445255474,0,1),
('Bubble Gum','Boss Orange',7,2.5547445255474,0,1),
('Bubble Gum','Aigner Black',3,1.0948905109489,0,1),
('Bubble Gum','Antonio Banderas',15,5.4744525547445,0,1),
('Bubble Gum','Adidas Fair Play',13,4.7445255474453,0,1),
('Bubble Gum','1000 bunga',20,7.2992700729927,1,1),
('Bubble Gum','VIP for Him',9,3.2846715328467,0,1),
('Bubble Gum','Dolly Girl',17,6.2043795620438,0,1),
('Bubble Gum','Blue Emotion KW 1',19,6.9343065693431,0,1),
('Bubble Gum','Bulgary Extreme KW 1',20,7.2992700729927,1,1),
('Bubble Gum','Blue Desire KW 1',15,5.4744525547445,0,1),
('Bulgary Pour Homme Soir','Malaikat Subuh',9,3.2846715328467,0,1),
('Bulgary Pour Homme Soir','Butterfly',0,0,0,1),
('Bulgary Pour Homme Soir','Cool Water Man',1,0.36496350364964,0,1),
('Bulgary Pour Homme Soir','Lucious Pink',5,1.8248175182482,0,1),
('Bulgary Pour Homme Soir','Kenzo In Bali',2,0.72992700729927,0,1),
('Bulgary Pour Homme Soir','Harajuku Lovers',1,0.36496350364964,0,1),
('Bulgary Pour Homme Soir','Jaguar Vision KW 1',3,1.0948905109489,0,1),
('Bulgary Pour Homme Soir','Boss Orange',4,1.4598540145985,0,1),
('Bulgary Pour Homme Soir','Aigner Black',1,0.36496350364964,0,1),
('Bulgary Pour Homme Soir','Antonio Banderas',8,2.9197080291971,0,1),
('Bulgary Pour Homme Soir','Adidas Fair Play',2,0.72992700729927,0,1),
('Bulgary Pour Homme Soir','1000 bunga',7,2.5547445255474,0,1),
('Bulgary Pour Homme Soir','VIP for Him',4,1.4598540145985,0,1),
('Bulgary Pour Homme Soir','Dolly Girl',2,0.72992700729927,0,1),
('Bulgary Pour Homme Soir','Blue Emotion KW 1',6,2.1897810218978,0,1),
('Bulgary Pour Homme Soir','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Bulgary Pour Homme Soir','Blue Desire KW 1',2,0.72992700729927,0,1),
('Malaikat Subuh','Butterfly',7,2.5547445255474,0,1),
('Malaikat Subuh','Cool Water Man',10,3.6496350364963,0,1),
('Malaikat Subuh','Lucious Pink',17,6.2043795620438,0,1),
('Malaikat Subuh','Kenzo In Bali',14,5.1094890510949,0,1),
('Malaikat Subuh','Harajuku Lovers',11,4.014598540146,0,1),
('Malaikat Subuh','Jaguar Vision KW 1',10,3.6496350364963,0,1),
('Malaikat Subuh','Boss Orange',7,2.5547445255474,0,1),
('Malaikat Subuh','Aigner Black',6,2.1897810218978,0,1),
('Malaikat Subuh','Antonio Banderas',18,6.5693430656934,0,1),
('Malaikat Subuh','Adidas Fair Play',8,2.9197080291971,0,1),
('Malaikat Subuh','1000 bunga',25,9.1240875912409,1,1),
('Malaikat Subuh','VIP for Him',5,1.8248175182482,0,1),
('Malaikat Subuh','Dolly Girl',10,3.6496350364963,0,1),
('Malaikat Subuh','Blue Emotion KW 1',25,9.1240875912409,1,1),
('Malaikat Subuh','Bulgary Extreme KW 1',21,7.6642335766423,1,1),
('Malaikat Subuh','Blue Desire KW 1',14,5.1094890510949,0,1),
('Butterfly','Cool Water Man',8,2.9197080291971,0,1),
('Butterfly','Lucious Pink',3,1.0948905109489,0,1),
('Butterfly','Kenzo In Bali',4,1.4598540145985,0,1),
('Butterfly','Harajuku Lovers',7,2.5547445255474,0,1),
('Butterfly','Jaguar Vision KW 1',2,0.72992700729927,0,1),
('Butterfly','Boss Orange',6,2.1897810218978,0,1),
('Butterfly','Aigner Black',2,0.72992700729927,0,1),
('Butterfly','Antonio Banderas',7,2.5547445255474,0,1),
('Butterfly','Adidas Fair Play',6,2.1897810218978,0,1),
('Butterfly','1000 bunga',7,2.5547445255474,0,1),
('Butterfly','VIP for Him',4,1.4598540145985,0,1),
('Butterfly','Dolly Girl',4,1.4598540145985,0,1),
('Butterfly','Blue Emotion KW 1',3,1.0948905109489,0,1),
('Butterfly','Bulgary Extreme KW 1',10,3.6496350364963,0,1),
('Butterfly','Blue Desire KW 1',3,1.0948905109489,0,1),
('Cool Water Man','Lucious Pink',5,1.8248175182482,0,1),
('Cool Water Man','Kenzo In Bali',5,1.8248175182482,0,1),
('Cool Water Man','Harajuku Lovers',4,1.4598540145985,0,1),
('Cool Water Man','Jaguar Vision KW 1',4,1.4598540145985,0,1),
('Cool Water Man','Boss Orange',5,1.8248175182482,0,1),
('Cool Water Man','Aigner Black',2,0.72992700729927,0,1),
('Cool Water Man','Antonio Banderas',11,4.014598540146,0,1),
('Cool Water Man','Adidas Fair Play',8,2.9197080291971,0,1),
('Cool Water Man','1000 bunga',16,5.8394160583942,0,1),
('Cool Water Man','VIP for Him',7,2.5547445255474,0,1),
('Cool Water Man','Dolly Girl',13,4.7445255474453,0,1),
('Cool Water Man','Blue Emotion KW 1',4,1.4598540145985,0,1),
('Cool Water Man','Bulgary Extreme KW 1',10,3.6496350364963,0,1),
('Cool Water Man','Blue Desire KW 1',4,1.4598540145985,0,1),
('Lucious Pink','Kenzo In Bali',6,2.1897810218978,0,1),
('Lucious Pink','Harajuku Lovers',6,2.1897810218978,0,1),
('Lucious Pink','Jaguar Vision KW 1',4,1.4598540145985,0,1),
('Lucious Pink','Boss Orange',5,1.8248175182482,0,1),
('Lucious Pink','Aigner Black',4,1.4598540145985,0,1),
('Lucious Pink','Antonio Banderas',9,3.2846715328467,0,1),
('Lucious Pink','Adidas Fair Play',6,2.1897810218978,0,1),
('Lucious Pink','1000 bunga',13,4.7445255474453,0,1),
('Lucious Pink','VIP for Him',4,1.4598540145985,0,1),
('Lucious Pink','Dolly Girl',3,1.0948905109489,0,1),
('Lucious Pink','Blue Emotion KW 1',14,5.1094890510949,0,1),
('Lucious Pink','Bulgary Extreme KW 1',8,2.9197080291971,0,1),
('Lucious Pink','Blue Desire KW 1',10,3.6496350364963,0,1),
('Kenzo In Bali','Harajuku Lovers',5,1.8248175182482,0,1),
('Kenzo In Bali','Jaguar Vision KW 1',2,0.72992700729927,0,1),
('Kenzo In Bali','Boss Orange',2,0.72992700729927,0,1),
('Kenzo In Bali','Aigner Black',7,2.5547445255474,0,1),
('Kenzo In Bali','Antonio Banderas',9,3.2846715328467,0,1),
('Kenzo In Bali','Adidas Fair Play',8,2.9197080291971,0,1),
('Kenzo In Bali','1000 bunga',12,4.3795620437956,0,1),
('Kenzo In Bali','VIP for Him',4,1.4598540145985,0,1),
('Kenzo In Bali','Dolly Girl',5,1.8248175182482,0,1),
('Kenzo In Bali','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Kenzo In Bali','Bulgary Extreme KW 1',15,5.4744525547445,0,1),
('Kenzo In Bali','Blue Desire KW 1',9,3.2846715328467,0,1),
('Harajuku Lovers','Jaguar Vision KW 1',6,2.1897810218978,0,1),
('Harajuku Lovers','Boss Orange',6,2.1897810218978,0,1),
('Harajuku Lovers','Aigner Black',3,1.0948905109489,0,1),
('Harajuku Lovers','Antonio Banderas',9,3.2846715328467,0,1),
('Harajuku Lovers','Adidas Fair Play',6,2.1897810218978,0,1),
('Harajuku Lovers','1000 bunga',9,3.2846715328467,0,1),
('Harajuku Lovers','VIP for Him',3,1.0948905109489,0,1),
('Harajuku Lovers','Dolly Girl',7,2.5547445255474,0,1),
('Harajuku Lovers','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Harajuku Lovers','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Harajuku Lovers','Blue Desire KW 1',6,2.1897810218978,0,1),
('Jaguar Vision KW 1','Boss Orange',4,1.4598540145985,0,1),
('Jaguar Vision KW 1','Aigner Black',1,0.36496350364964,0,1),
('Jaguar Vision KW 1','Antonio Banderas',5,1.8248175182482,0,1),
('Jaguar Vision KW 1','Adidas Fair Play',3,1.0948905109489,0,1),
('Jaguar Vision KW 1','1000 bunga',4,1.4598540145985,0,1),
('Jaguar Vision KW 1','VIP for Him',2,0.72992700729927,0,1),
('Jaguar Vision KW 1','Dolly Girl',4,1.4598540145985,0,1),
('Jaguar Vision KW 1','Blue Emotion KW 1',4,1.4598540145985,0,1),
('Jaguar Vision KW 1','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Jaguar Vision KW 1','Blue Desire KW 1',2,0.72992700729927,0,1),
('Boss Orange','Aigner Black',3,1.0948905109489,0,1),
('Boss Orange','Antonio Banderas',8,2.9197080291971,0,1),
('Boss Orange','Adidas Fair Play',3,1.0948905109489,0,1),
('Boss Orange','1000 bunga',10,3.6496350364963,0,1),
('Boss Orange','VIP for Him',3,1.0948905109489,0,1),
('Boss Orange','Dolly Girl',4,1.4598540145985,0,1),
('Boss Orange','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Boss Orange','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Boss Orange','Blue Desire KW 1',2,0.72992700729927,0,1),
('Aigner Black','Antonio Banderas',6,2.1897810218978,0,1),
('Aigner Black','Adidas Fair Play',5,1.8248175182482,0,1),
('Aigner Black','1000 bunga',6,2.1897810218978,0,1),
('Aigner Black','VIP for Him',1,0.36496350364964,0,1),
('Aigner Black','Dolly Girl',3,1.0948905109489,0,1),
('Aigner Black','Blue Emotion KW 1',9,3.2846715328467,0,1),
('Aigner Black','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Aigner Black','Blue Desire KW 1',4,1.4598540145985,0,1),
('Antonio Banderas','Adidas Fair Play',7,2.5547445255474,0,1),
('Antonio Banderas','1000 bunga',20,7.2992700729927,1,1),
('Antonio Banderas','VIP for Him',10,3.6496350364963,0,1),
('Antonio Banderas','Dolly Girl',6,2.1897810218978,0,1),
('Antonio Banderas','Blue Emotion KW 1',10,3.6496350364963,0,1),
('Antonio Banderas','Bulgary Extreme KW 1',17,6.2043795620438,0,1),
('Antonio Banderas','Blue Desire KW 1',12,4.3795620437956,0,1),
('Adidas Fair Play','1000 bunga',13,4.7445255474453,0,1),
('Adidas Fair Play','VIP for Him',7,2.5547445255474,0,1),
('Adidas Fair Play','Dolly Girl',10,3.6496350364963,0,1),
('Adidas Fair Play','Blue Emotion KW 1',9,3.2846715328467,0,1),
('Adidas Fair Play','Bulgary Extreme KW 1',13,4.7445255474453,0,1),
('Adidas Fair Play','Blue Desire KW 1',5,1.8248175182482,0,1),
('1000 bunga','VIP for Him',8,2.9197080291971,0,1),
('1000 bunga','Dolly Girl',17,6.2043795620438,0,1),
('1000 bunga','Blue Emotion KW 1',15,5.4744525547445,0,1),
('1000 bunga','Bulgary Extreme KW 1',17,6.2043795620438,0,1),
('1000 bunga','Blue Desire KW 1',12,4.3795620437956,0,1),
('VIP for Him','Dolly Girl',5,1.8248175182482,0,1),
('VIP for Him','Blue Emotion KW 1',6,2.1897810218978,0,1),
('VIP for Him','Bulgary Extreme KW 1',13,4.7445255474453,0,1),
('VIP for Him','Blue Desire KW 1',4,1.4598540145985,0,1),
('Dolly Girl','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Dolly Girl','Bulgary Extreme KW 1',8,2.9197080291971,0,1),
('Dolly Girl','Blue Desire KW 1',6,2.1897810218978,0,1),
('Blue Emotion KW 1','Bulgary Extreme KW 1',20,7.2992700729927,1,1),
('Blue Emotion KW 1','Blue Desire KW 1',10,3.6496350364963,0,1),
('Bulgary Extreme KW 1','Blue Desire KW 1',13,4.7445255474453,0,1);

/*Table structure for table `itemset3` */

DROP TABLE IF EXISTS `itemset3`;

CREATE TABLE `itemset3` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `atribut3` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemset3` */

insert  into `itemset3`(`atribut1`,`atribut2`,`atribut3`,`jumlah`,`support`,`lolos`,`id_process`) values 
('Melati','Silver','Lovely KW 1',8,2.9197080291971,0,1),
('Melati','Silver','Sexy Gravity',10,3.6496350364963,0,1),
('Melati','Silver','Fantasy',7,2.5547445255474,0,1),
('Melati','Silver','Bubble Gum',9,3.2846715328467,0,1),
('Melati','Silver','Malaikat Subuh',8,2.9197080291971,0,1),
('Melati','Silver','1000 bunga',7,2.5547445255474,0,1),
('Melati','Silver','Blue Emotion KW 1',9,3.2846715328467,0,1),
('Melati','Silver','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Melati','Lovely KW 1','Fantasy',7,2.5547445255474,0,1),
('Lovely KW 1','Silver','Fantasy',8,2.9197080291971,0,1),
('Melati','Lovely KW 1','Bubble Gum',7,2.5547445255474,0,1),
('Lovely KW 1','Silver','Bubble Gum',6,2.1897810218978,0,1),
('Melati','Lovely KW 1','Malaikat Subuh',7,2.5547445255474,0,1),
('Lovely KW 1','Silver','Malaikat Subuh',5,1.8248175182482,0,1),
('Melati','Lovely KW 1','Antonio Banderas',7,2.5547445255474,0,1),
('Melati','Silver','Antonio Banderas',5,1.8248175182482,0,1),
('Lovely KW 1','Silver','Antonio Banderas',5,1.8248175182482,0,1),
('Melati','Lovely KW 1','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Lovely KW 1','Silver','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Melati','Sexy Gravity','Fantasy',9,3.2846715328467,0,1),
('Sexy Gravity','Silver','Fantasy',8,2.9197080291971,0,1),
('Melati','Sexy Gravity','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Sexy Gravity','Silver','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Melati','Vanilla','Silver',7,2.5547445255474,0,1),
('Melati','Vanilla','Bubble Gum',8,2.9197080291971,0,1),
('Vanilla','Silver','Bubble Gum',5,1.8248175182482,0,1),
('Melati','Fantasy','Bubble Gum',12,4.3795620437956,0,1),
('Fantasy','Silver','Bubble Gum',6,2.1897810218978,0,1),
('Melati','Fantasy','Malaikat Subuh',8,2.9197080291971,0,1),
('Fantasy','Silver','Malaikat Subuh',4,1.4598540145985,0,1),
('Melati','Fantasy','Antonio Banderas',5,1.8248175182482,0,1),
('Fantasy','Silver','Antonio Banderas',6,2.1897810218978,0,1),
('Melati','Fantasy','1000 bunga',7,2.5547445255474,0,1),
('Fantasy','Silver','1000 bunga',10,3.6496350364963,0,1),
('Melati','Fantasy','Blue Emotion KW 1',10,3.6496350364963,0,1),
('Fantasy','Silver','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Melati','Fantasy','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Fantasy','Silver','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Melati','Fantasy','Blue Desire KW 1',5,1.8248175182482,0,1),
('Melati','Silver','Blue Desire KW 1',5,1.8248175182482,0,1),
('Fantasy','Silver','Blue Desire KW 1',5,1.8248175182482,0,1),
('Melati','Bubble Gum','1000 bunga',5,1.8248175182482,0,1),
('Bubble Gum','Silver','1000 bunga',5,1.8248175182482,0,1),
('Melati','Bubble Gum','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Bubble Gum','Silver','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Melati','Malaikat Subuh','1000 bunga',8,2.9197080291971,0,1),
('Malaikat Subuh','Silver','1000 bunga',9,3.2846715328467,0,1),
('Melati','Malaikat Subuh','Blue Emotion KW 1',10,3.6496350364963,0,1),
('Malaikat Subuh','Silver','Blue Emotion KW 1',6,2.1897810218978,0,1),
('Melati','Malaikat Subuh','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Malaikat Subuh','Silver','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Melati','Antonio Banderas','1000 bunga',1,0.36496350364964,0,1),
('Antonio Banderas','Silver','1000 bunga',8,2.9197080291971,0,1),
('Melati','Blue Emotion KW 1','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Blue Emotion KW 1','Silver','Bulgary Extreme KW 1',8,2.9197080291971,0,1),
('Melati','Lovely KW 1','Sexy Gravity',7,2.5547445255474,0,1),
('Melati','Lovely KW 1','1000 bunga',7,2.5547445255474,0,1),
('Melati','Lovely KW 1','Blue Emotion KW 1',6,2.1897810218978,0,1),
('Silver','Lovely KW 1','1000 bunga',6,2.1897810218978,0,1),
('Sexy Gravity','Lovely KW 1','Fantasy',5,1.8248175182482,0,1),
('Sexy Gravity','Lovely KW 1','Blue Emotion KW 1',5,1.8248175182482,0,1),
('Melati','Vanilla','Lovely KW 1',4,1.4598540145985,0,1),
('Vanilla','Lovely KW 1','Bubble Gum',8,2.9197080291971,0,1),
('Fantasy','Lovely KW 1','Bubble Gum',12,4.3795620437956,0,1),
('Fantasy','Lovely KW 1','Malaikat Subuh',9,3.2846715328467,0,1),
('Fantasy','Lovely KW 1','Antonio Banderas',6,2.1897810218978,0,1),
('Fantasy','Lovely KW 1','1000 bunga',8,2.9197080291971,0,1),
('Fantasy','Lovely KW 1','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Fantasy','Lovely KW 1','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Melati','Lovely KW 1','Blue Desire KW 1',2,0.72992700729927,0,1),
('Fantasy','Lovely KW 1','Blue Desire KW 1',9,3.2846715328467,0,1),
('Bubble Gum','Lovely KW 1','1000 bunga',8,2.9197080291971,0,1),
('Bubble Gum','Lovely KW 1','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Malaikat Subuh','Lovely KW 1','1000 bunga',6,2.1897810218978,0,1),
('Malaikat Subuh','Lovely KW 1','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Malaikat Subuh','Lovely KW 1','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Antonio Banderas','Lovely KW 1','1000 bunga',5,1.8248175182482,0,1),
('Blue Emotion KW 1','Lovely KW 1','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Melati','Sexy Gravity','Bubble Gum',8,2.9197080291971,0,1),
('Melati','Sexy Gravity','Malaikat Subuh',5,1.8248175182482,0,1),
('Melati','Sexy Gravity','1000 bunga',8,2.9197080291971,0,1),
('Melati','Sexy Gravity','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Silver','Sexy Gravity','Bubble Gum',6,2.1897810218978,0,1),
('Silver','Sexy Gravity','1000 bunga',6,2.1897810218978,0,1),
('Silver','Sexy Gravity','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Lovely KW 1','Sexy Gravity','Bubble Gum',4,1.4598540145985,0,1),
('Lovely KW 1','Sexy Gravity','Malaikat Subuh',5,1.8248175182482,0,1),
('Melati','Sexy Gravity','Antonio Banderas',2,0.72992700729927,0,1),
('Lovely KW 1','Sexy Gravity','Antonio Banderas',3,1.0948905109489,0,1),
('Lovely KW 1','Sexy Gravity','Bulgary Extreme KW 1',2,0.72992700729927,0,1),
('Melati','Vanilla','Sexy Gravity',4,1.4598540145985,0,1),
('Vanilla','Sexy Gravity','Bubble Gum',5,1.8248175182482,0,1),
('Fantasy','Sexy Gravity','Bubble Gum',10,3.6496350364963,0,1),
('Fantasy','Sexy Gravity','Malaikat Subuh',8,2.9197080291971,0,1),
('Fantasy','Sexy Gravity','Antonio Banderas',2,0.72992700729927,0,1),
('Fantasy','Sexy Gravity','1000 bunga',9,3.2846715328467,0,1),
('Fantasy','Sexy Gravity','Blue Emotion KW 1',11,4.014598540146,0,1),
('Fantasy','Sexy Gravity','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Melati','Sexy Gravity','Blue Desire KW 1',5,1.8248175182482,0,1),
('Fantasy','Sexy Gravity','Blue Desire KW 1',4,1.4598540145985,0,1),
('Bubble Gum','Sexy Gravity','1000 bunga',3,1.0948905109489,0,1),
('Bubble Gum','Sexy Gravity','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Malaikat Subuh','Sexy Gravity','1000 bunga',7,2.5547445255474,0,1),
('Malaikat Subuh','Sexy Gravity','Blue Emotion KW 1',9,3.2846715328467,0,1),
('Malaikat Subuh','Sexy Gravity','Bulgary Extreme KW 1',3,1.0948905109489,0,1),
('Antonio Banderas','Sexy Gravity','1000 bunga',3,1.0948905109489,0,1),
('Blue Emotion KW 1','Sexy Gravity','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Melati','Vanilla','Fantasy',5,1.8248175182482,0,1),
('Vanilla','Fantasy','Bubble Gum',9,3.2846715328467,0,1),
('Bubble Gum','Fantasy','1000 bunga',7,2.5547445255474,0,1),
('Bubble Gum','Fantasy','Bulgary Extreme KW 1',8,2.9197080291971,0,1),
('Malaikat Subuh','Fantasy','1000 bunga',9,3.2846715328467,0,1),
('Malaikat Subuh','Fantasy','Blue Emotion KW 1',11,4.014598540146,0,1),
('Malaikat Subuh','Fantasy','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Antonio Banderas','Fantasy','1000 bunga',9,3.2846715328467,0,1),
('Blue Emotion KW 1','Fantasy','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Melati','Bubble Gum','Malaikat Subuh',4,1.4598540145985,0,1),
('Melati','Bubble Gum','Blue Emotion KW 1',9,3.2846715328467,0,1),
('Lovely KW 1','Bubble Gum','Malaikat Subuh',6,2.1897810218978,0,1),
('Melati','Bubble Gum','Antonio Banderas',2,0.72992700729927,0,1),
('Lovely KW 1','Bubble Gum','Antonio Banderas',5,1.8248175182482,0,1),
('Sexy Gravity','Bubble Gum','Blue Emotion KW 1',6,2.1897810218978,0,1),
('Fantasy','Bubble Gum','Malaikat Subuh',7,2.5547445255474,0,1),
('Fantasy','Bubble Gum','Antonio Banderas',5,1.8248175182482,0,1),
('Fantasy','Bubble Gum','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Melati','Bubble Gum','Blue Desire KW 1',4,1.4598540145985,0,1),
('Fantasy','Bubble Gum','Blue Desire KW 1',7,2.5547445255474,0,1),
('Malaikat Subuh','Bubble Gum','1000 bunga',4,1.4598540145985,0,1),
('Malaikat Subuh','Bubble Gum','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Malaikat Subuh','Bubble Gum','Bulgary Extreme KW 1',3,1.0948905109489,0,1),
('Antonio Banderas','Bubble Gum','1000 bunga',6,2.1897810218978,0,1),
('Blue Emotion KW 1','Bubble Gum','Bulgary Extreme KW 1',3,1.0948905109489,0,1),
('Silver','Malaikat Subuh','Bubble Gum',2,0.72992700729927,0,1),
('Melati','Malaikat Subuh','Antonio Banderas',4,1.4598540145985,0,1),
('Lovely KW 1','Malaikat Subuh','Antonio Banderas',9,3.2846715328467,0,1),
('Melati','Vanilla','Malaikat Subuh',4,1.4598540145985,0,1),
('Vanilla','Malaikat Subuh','Bubble Gum',8,2.9197080291971,0,1),
('Fantasy','Malaikat Subuh','Antonio Banderas',8,2.9197080291971,0,1),
('Melati','Malaikat Subuh','Blue Desire KW 1',4,1.4598540145985,0,1),
('Fantasy','Malaikat Subuh','Blue Desire KW 1',8,2.9197080291971,0,1),
('Antonio Banderas','Malaikat Subuh','1000 bunga',8,2.9197080291971,0,1),
('Blue Emotion KW 1','Malaikat Subuh','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Melati','1000 bunga','Blue Emotion KW 1',8,2.9197080291971,0,1),
('Melati','1000 bunga','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Silver','1000 bunga','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Lovely KW 1','1000 bunga','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Sexy Gravity','1000 bunga','Blue Emotion KW 1',5,1.8248175182482,0,1),
('Melati','Vanilla','1000 bunga',5,1.8248175182482,0,1),
('Vanilla','1000 bunga','Bubble Gum',7,2.5547445255474,0,1),
('Fantasy','1000 bunga','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Fantasy','1000 bunga','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Melati','1000 bunga','Blue Desire KW 1',3,1.0948905109489,0,1),
('Fantasy','1000 bunga','Blue Desire KW 1',6,2.1897810218978,0,1),
('Bubble Gum','1000 bunga','Bulgary Extreme KW 1',1,0.36496350364964,0,1),
('Malaikat Subuh','1000 bunga','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Malaikat Subuh','1000 bunga','Bulgary Extreme KW 1',9,3.2846715328467,0,1),
('Blue Emotion KW 1','1000 bunga','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Silver','Blue Emotion KW 1','Bubble Gum',6,2.1897810218978,0,1),
('Silver','Blue Emotion KW 1','1000 bunga',4,1.4598540145985,0,1),
('Lovely KW 1','Blue Emotion KW 1','Bubble Gum',5,1.8248175182482,0,1),
('Melati','Blue Emotion KW 1','Antonio Banderas',2,0.72992700729927,0,1),
('Lovely KW 1','Blue Emotion KW 1','Antonio Banderas',5,1.8248175182482,0,1),
('Melati','Vanilla','Blue Emotion KW 1',3,1.0948905109489,0,1),
('Vanilla','Blue Emotion KW 1','Bubble Gum',5,1.8248175182482,0,1),
('Fantasy','Blue Emotion KW 1','Antonio Banderas',5,1.8248175182482,0,1),
('Melati','Blue Emotion KW 1','Blue Desire KW 1',3,1.0948905109489,0,1),
('Fantasy','Blue Emotion KW 1','Blue Desire KW 1',7,2.5547445255474,0,1),
('Bubble Gum','Blue Emotion KW 1','1000 bunga',4,1.4598540145985,0,1),
('Antonio Banderas','Blue Emotion KW 1','1000 bunga',2,0.72992700729927,0,1),
('Melati','Bulgary Extreme KW 1','Antonio Banderas',5,1.8248175182482,0,1),
('Lovely KW 1','Bulgary Extreme KW 1','Antonio Banderas',6,2.1897810218978,0,1),
('Melati','Vanilla','Bulgary Extreme KW 1',6,2.1897810218978,0,1),
('Vanilla','Bulgary Extreme KW 1','Bubble Gum',6,2.1897810218978,0,1),
('Fantasy','Bulgary Extreme KW 1','Antonio Banderas',5,1.8248175182482,0,1),
('Melati','Bulgary Extreme KW 1','Blue Desire KW 1',3,1.0948905109489,0,1),
('Fantasy','Bulgary Extreme KW 1','Blue Desire KW 1',7,2.5547445255474,0,1),
('Antonio Banderas','Bulgary Extreme KW 1','1000 bunga',3,1.0948905109489,0,1),
('Silver','Vanilla','Fantasy',6,2.1897810218978,0,1),
('Silver','Bubble Gum','Antonio Banderas',3,1.0948905109489,0,1),
('Silver','Bubble Gum','Blue Desire KW 1',4,1.4598540145985,0,1),
('Silver','Vanilla','1000 bunga',4,1.4598540145985,0,1),
('Silver','1000 bunga','Blue Desire KW 1',4,1.4598540145985,0,1),
('Silver','Bulgary Extreme KW 1','Antonio Banderas',6,2.1897810218978,0,1),
('Silver','Vanilla','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Silver','Bulgary Extreme KW 1','Blue Desire KW 1',4,1.4598540145985,0,1),
('Lovely KW 1','Vanilla','Fantasy',6,2.1897810218978,0,1),
('Lovely KW 1','Bubble Gum','Blue Desire KW 1',7,2.5547445255474,0,1),
('Lovely KW 1','Vanilla','Malaikat Subuh',6,2.1897810218978,0,1),
('Lovely KW 1','Malaikat Subuh','Blue Desire KW 1',8,2.9197080291971,0,1),
('Sexy Gravity','Antonio Banderas','Blue Emotion KW 1',2,0.72992700729927,0,1),
('Lovely KW 1','Vanilla','Antonio Banderas',4,1.4598540145985,0,1),
('Vanilla','Antonio Banderas','Bubble Gum',0,0,0,1),
('Lovely KW 1','Antonio Banderas','Blue Desire KW 1',6,2.1897810218978,0,1),
('Fantasy','Antonio Banderas','Blue Desire KW 1',7,2.5547445255474,0,1),
('Bubble Gum','Antonio Banderas','Bulgary Extreme KW 1',3,1.0948905109489,0,1),
('Malaikat Subuh','Antonio Banderas','Blue Emotion KW 1',5,1.8248175182482,0,1),
('Malaikat Subuh','Antonio Banderas','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Blue Emotion KW 1','Antonio Banderas','Bulgary Extreme KW 1',2,0.72992700729927,0,1),
('Lovely KW 1','Vanilla','Bulgary Extreme KW 1',3,1.0948905109489,0,1),
('Lovely KW 1','Bulgary Extreme KW 1','Blue Desire KW 1',3,1.0948905109489,0,1),
('Sexy Gravity','Vanilla','Fantasy',6,2.1897810218978,0,1),
('Sexy Gravity','Vanilla','Blue Emotion KW 1',5,1.8248175182482,0,1),
('Sexy Gravity','Blue Emotion KW 1','Blue Desire KW 1',4,1.4598540145985,0,1),
('Vanilla','Fantasy','Malaikat Subuh',3,1.0948905109489,0,1),
('Vanilla','Fantasy','Antonio Banderas',3,1.0948905109489,0,1),
('Vanilla','Fantasy','1000 bunga',6,2.1897810218978,0,1),
('Vanilla','Fantasy','Blue Emotion KW 1',7,2.5547445255474,0,1),
('Vanilla','Fantasy','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Vanilla','Fantasy','Blue Desire KW 1',2,0.72992700729927,0,1),
('Vanilla','Bubble Gum','Blue Desire KW 1',1,0.36496350364964,0,1),
('Vanilla','Malaikat Subuh','1000 bunga',6,2.1897810218978,0,1),
('Vanilla','Malaikat Subuh','Blue Emotion KW 1',5,1.8248175182482,0,1),
('Vanilla','Malaikat Subuh','Bulgary Extreme KW 1',7,2.5547445255474,0,1),
('Vanilla','Antonio Banderas','1000 bunga',4,1.4598540145985,0,1),
('Vanilla','Blue Emotion KW 1','Bulgary Extreme KW 1',5,1.8248175182482,0,1),
('Bubble Gum','Blue Desire KW 1','1000 bunga',4,1.4598540145985,0,1),
('Bubble Gum','Blue Desire KW 1','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Malaikat Subuh','Blue Desire KW 1','1000 bunga',5,1.8248175182482,0,1),
('Malaikat Subuh','Blue Desire KW 1','Blue Emotion KW 1',3,1.0948905109489,0,1),
('Malaikat Subuh','Blue Desire KW 1','Bulgary Extreme KW 1',4,1.4598540145985,0,1),
('Antonio Banderas','Blue Desire KW 1','1000 bunga',4,1.4598540145985,0,1),
('Blue Emotion KW 1','Blue Desire KW 1','Bulgary Extreme KW 1',3,1.0948905109489,0,1);

/*Table structure for table `process_log` */

DROP TABLE IF EXISTS `process_log`;

CREATE TABLE `process_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `process_log` */

insert  into `process_log`(`id`,`start_date`,`end_date`,`min_support`,`min_confidence`) values 
(1,'2010-08-13','2017-08-13',20,35);

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_date` date DEFAULT NULL,
  `produk` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id`,`transaction_date`,`produk`) values 
(1,'2015-08-01','Bellagio,Essential Sport,Melati,Jimmy Choo Man,Black Intense,White Musk,Silver,Lovely KW 1,Sexy Gravity,Cool Water Man KW 1,Vanilla,Exotic Unisex,Aqua Digio Blue KW 1,Fantasy,Bubble Gum,Legend,Vanilla,Bulgary Pour Homme Soir,Blue Edition KW 1,Cool Game,Ferrari Man In Red KW 1'),
(2,'2015-08-02','Malaikat Subuh,Still Donna,Flight Of Fancy KW 1,Dalal,Sedap Malam,Polo Stik,Butterfly,Cool Water Man,Lucious Pink,Vanilla,Lovely KW 1,Kenzo In Bali,Jovan,Bellagio,Harajuku Lovers,Jaguar Vision KW 1,Boss Orange,Aigner Black,Boss Energise,Antonio Banderas,Adidas Fair Play'),
(3,'2015-08-03','Blue Ice,1000 bunga,Lovely KW 1,Bubble Gum,VIP for Him,Dolly Girl,Antonio Banderas,Vintage,Aqua Blue Edition KW 1,Adidas Fair Play'),
(4,'2015-08-04','Kenzo In Bali,1000 bunga,Melati,1000 bunga,Flight Of Fancy KW 1,Vintage'),
(5,'2015-08-05','1000 bunga,Bubble Gum,Heavenly Kiss,Antonio Banderas,Antonio Banderas,Blue Edition KW 1,Sedap Malam'),
(6,'2015-08-06','Blue Emotion KW 1,Lovely KW 1,Lucious Pink,Aqua Digio Blue KW 1,Harajuku Lovers'),
(7,'2015-08-07','Exotic Unisex,Heavenly Kiss,Kasturi Musk,Essential Sport'),
(8,'2015-08-08','Bulgary Pour Homme Soir,Blue Emotion KW 1,Malaikat Subuh,Bulgary Extreme KW 1,Blue Emotion KW 1,Aqua Blue Edition KW 1'),
(9,'2015-08-09','Legend,Melati,Heavenly Kiss,Legend,Boss Orange,Blue Desire KW 1,Fantasy,Lucious Pink,Blue Desire KW 1,Aigner Black,Sedap Malam,1000 bunga'),
(10,'2015-08-10','Jaguar Vision KW 1,Harajuku Lovers,Bellagio,Malaikat Subuh'),
(11,'2015-08-11','Manchester United,Legend,Vintage,Bubble Gum,Bulgary Extreme KW 1,Blue Ice'),
(12,'2015-08-12','Legend,Harajuku Lovers,Boss Orange,Blue Ice,Melati,Malaikat Subuh,Jaguar Vision KW 1,Blue Ice,White Musk'),
(13,'2015-08-13','jaguar vision kw 1,fantasy,blue emotion kw 1,silver,boss orange,bellagio,legend,bubble gum,Sexy Gravity,legend'),
(14,'2015-08-14','bulgary extreme kw 1,white musk,Lovely KW 1,boss orange,lovely kw 1,cool water man kw 1,heavenly kiss'),
(15,'2015-08-15','blue emotion kw 1,fantasy,lovely kw 1,legend'),
(16,'2015-08-16','kenzo in bali,legend,malaikat subuh,1000 bunga,aigner black,legend'),
(17,'2015-08-17','Harajuku Lovers,jaguar vision kw 1,dolly girl,malaikat subuh,malaikat subuh,1000 bunga,eternity lady,melati,bubble gum,blue ice'),
(18,'2015-08-18','sexy gravity,bellagio,bubble gum,bubble gum,strawberry,1000 bunga,eternity lady,bulgary extreme kw 1,dolly girl,sexy gravity,fantasy'),
(19,'2015-08-19','bulgary extreme kw 1,jaguar vision kw 1,exotic unisex,bellagio,bulgary extreme kw 1'),
(20,'2015-08-20','1000 bunga,blue emotion kw 1,bellagio,bulgary extreme kw 1'),
(21,'2015-08-21','vip for him,silver,melati'),
(22,'2015-08-22','bellagio,melati,jaguar vision kw 1,melati,blue desire kw 1,heavenly kiss,white musk,lovely kw 1,malaikat subuh,lovely kw 1,melati'),
(23,'2015-08-23','silver,bubble gum,melati,bulgary pour homme soir,blue emotion kw 1,boss orange'),
(24,'2015-08-24','butterfly,jaguar vision kw 1'),
(25,'2015-08-25','Harajuku Lovers,Harajuku Lovers,blue ice,sexy gravity'),
(26,'2015-08-26','jimmy choo man,malaikat subuh,1000 bunga,bulgary extreme kw 1,boss orange,heavenly kiss,cool water man kw 1,blue emotion kw 1,bulgary pour homme soir,legend'),
(27,'2015-08-27','1000 bunga,silver,jaguar vision kw 1'),
(28,'2015-08-28','white musk,boss orange,sexy gravity,1000 bunga,legend'),
(29,'2015-08-29','malaikat subuh,bellagio,happy clinique woman,blue ice,blue emotion kw 1,fantasy,legend,sexy gravity,boss orange'),
(30,'2015-08-30','Harajuku Lovers,flight of fancy kw 1,jaguar vision kw 1,Lovely KW 1,legend,Lovely KW 1,bubble gum,jaguar vision kw 1'),
(31,'2015-08-31','exotic unisex,silver,fantasy'),
(32,'2015-09-01','malaikat subuh,sexy gravity,blue desire kw 1,legend,blue emotion kw 1,aqua blue edition kw 1,jimmy choo man,fantasy,melati,malaikat subuh'),
(33,'2015-09-02','lovely kw 1,silver,bubble gum,antonio banderas,bubble gum'),
(34,'2015-09-03','malaikat subuh'),
(35,'2015-09-04','antonio banderas,silver,lovely kw 1,1000 bunga,cool water man kw 1,kasturi musk,antonio banderas,harajuku lovers,bulgary extreme kw 1,kenzo in bali'),
(36,'2015-09-05','bubble gum,vanilla,butterfly,silver,bubble gum,silver,bellagio,lucious pink,harajuku lovers,malaikat subuh,white musk'),
(37,'2015-09-06','legend,boss orange,legend,antonio banderas,1000 bunga,bubble gum,white musk,bubble gum,silver'),
(38,'2015-09-07','fantasy,vanilla,fantasy,eternity lady'),
(39,'2015-09-08','jovan,antonio banderas,bulgary extreme kw 1,eternity lady,malaikat subuh,antonio banderas'),
(40,'2015-09-09','silver,bubble gum,antonio banderas,strawberry,bubble gum,bulgary extreme kw 1,antonio banderas'),
(41,'2015-09-10','harajuku lovers,sexy gravity,legend'),
(42,'2015-09-11','white musk,blue emotion kw 1,vanilla,butterfly,silver,fantasy'),
(43,'2015-09-12','aigner black,sexy gravity,lovely kw 1,dolly girl,legend,sedap malam,cool game'),
(44,'2015-09-13','malaikat subuh,fantasy,vanilla,jaguar vision kw 1,cool water lady,cool water man,vanilla,lovely kw 1,adidas fair play,jaguar vision kw 1,blue desire kw 1,bubble gum,dolly girl'),
(45,'2015-09-14','1000 bunga,cool water man,lucious pink,kasturi musk,antonio banderas,bellagio,kenzo in bali'),
(46,'2015-09-15','fantasy,antonio banderas,blue ice,blue desire kw 1,lucious pink'),
(47,'2015-09-16','sexy gravity,butterfly,malaikat subuh,lovely kw 1'),
(48,'2015-09-17','melati,antonio banderas,antonio banderas,lovely kw 1,fantasy,exotic unisex,lovely kw 1,malaikat subuh,aigner black,adidas fair play,antonio banderas'),
(49,'2015-09-18','vanilla,flight of fancy,boss orange,cool water man,vintage,white musk,harajuku lovers,sexy gravity'),
(50,'2015-09-19','melati,vanilla,bubble gum,adidas fair play'),
(51,'2015-09-20','antonio banderas,silver,lucious pink,1000 bunga,antonio banderas'),
(52,'2015-09-21','lovely kw 1,bulgary extreme kw 1,antonio banderas'),
(53,'2015-09-22','antonio banderas,bellagio,bulgary pour homme soir'),
(54,'2015-09-23','fantasy,1000 bunga,dolly girl,sedap malam,malaikat subuh,sexy gravity,antonio banderas,silver,kenzo in bali'),
(55,'2015-09-24','lovely kw 1,vanilla'),
(56,'2015-09-25','kenzo in bali,lovely kw 1,vanilla,white musk'),
(57,'2015-09-26','cool water man kw 1,melati,aigner black,lovely kw 1,bubble gum,fantasy,bulgary pour homme soir,fantasy,exotic unisex,lucious pink,heavenly kiss,1000 bunga,fantasy,blue emotion kw 1'),
(58,'2015-09-27','sexy gravity,1000 bunga,boss energise,vanilla,lovely kw 1,happy clinique woman,cool water man'),
(59,'2015-09-28','silver,lovely kw 1,bellagio,blue desire kw 1,kenzo in bali,cool water man kw 1,white musk,fantasy,malaikat subuh'),
(60,'2015-09-29','1000 bunga,antonio banderas,vanilla,bulgary extreme kw 1,boss energise,cool water man,bulgary extreme kw 1,flight of fancy kw 1,malaikat subuh'),
(61,'2015-09-30','lucious pink,dolly girl,1000 bunga,antonio banderas,bubble gum,jaguar vision kw 1,lucious pink,jaguar vision kw 1,bellagio,fantasy'),
(62,'2015-10-01','1000 bunga,cool water man kw 1,1000 bunga,heavenly kiss,bellagio,antonio banderas,malaikat subuh,eternity lady,lucious pink,adidas fair play'),
(63,'2015-10-02','adidas fair play,boss energise,dolly girl,vip for him,harajuku lovers,lovely kw 1,vip for him,silver,lovely kw 1,silver,sedap malam'),
(64,'2015-10-03','antonio banderas,silver,lovely kw 1,melati,sexy gravity,bulgary extreme kw 1,antonio banderas,vanilla,vip for him,aigner black'),
(65,'2015-10-04','bulgary extreme kw 1,bubble gum,kenzo in bali,antonio banderas,gahroudh'),
(66,'2015-10-05','bulgary pour homme soir,harajuku lovers,bulgary extreme kw 1,antonio banderas,bulgary extreme kw 1'),
(67,'2015-10-06','vintage,vanilla,antonio banderas,kenzo pour homme lady,harajuku lovers,antonio banderas,blue desire kw 1,lovely kw 1,antonio banderas,heavenly kiss'),
(68,'2015-10-07','malaikat subuh,cool water man,jaguar vision kw 1,lovely kw 1,cool water man kw 1,antonio banderas,eternity lady,white musk,lovely kw 1,malaikat subuh'),
(69,'2015-10-08','sexy gravity,vip for him,jaguar vision kw 1,blue emotion kw 1,bulgary pour homme soir,melati,bubble gum,silver'),
(70,'2015-10-09','vanilla,bubble gum,cool water lady,lucious pink,malaikat subuh,vanilla,cool water man kw 1,bulgary pour homme soir'),
(71,'2015-10-10','1000 bunga,bulgary pour homme soir,lucious pink,antonio banderas,jovan,malaikat subuh,blue desire kw 1,blue desire kw 1,fantasy'),
(72,'2015-10-11','bulgary extreme kw 1,kenzo in bali,bulgary extreme kw 1,strawberry,bulgary pour homme soir,vip for him,antonio banderas'),
(73,'2015-10-12','vanilla,lucious pink,kenzo in bali'),
(74,'2015-10-13','heavenly kiss,cool water man,antonio banderas,1000 bunga,cool water man,essential sport,adidas fair play,cool game,1000 bunga,cool water man kw 1,antonio banderas'),
(75,'2015-10-14','aqua blue edition kw 1,melati,bulgary extreme kw 1,antonio banderas,harajuku lovers,fantasy,aqua blue edition kw 1,butterfly,eternity lady,heavenly kiss'),
(76,'2015-10-15','bubble gum,lovely kw 1,lucious pink,bellagio,blue desire kw 1,fantasy,1000 bunga,silver,silver'),
(77,'2015-10-16','melati,melati,lovely kw 1,bulgary extreme kw 1'),
(78,'2015-10-17','strawberry,malaikat subuh'),
(79,'2015-10-18','malaikat subuh,blue emotion kw 1,bellagio,fantasy,antonio banderas,lovely kw 1,vanilla,boss orange,dolly girl,cool water man'),
(80,'2015-10-19','boss orange,antonio banderas,fantasy,jaguar vision kw 1,antonio banderas,bellagio,white musk'),
(81,'2015-10-20','bubble gum,bellagio,antonio banderas'),
(82,'2015-10-21','lovely kw 1,dolly girl'),
(83,'2015-10-22','melati,cool water lady,melati,bubble gum'),
(84,'2015-10-23','bellagio,fantasy,antonio banderas,vip for him,bulgary pour homme soir,vintage,antonio banderas'),
(85,'2015-10-24','antonio banderas,silver,melati,jovan,aigner black,boss energise,vanilla,white musk'),
(86,'2015-10-25','antonio banderas,boss orange,silver,blue emotion kw 1,fantasy,vip for him,cool water man kw 1,vanilla,1000 bunga,silver,heavenly kiss'),
(87,'2015-10-26','cool water man kw 1,lovely kw 1,cool water man kw 1,sexy gravity,boss orange'),
(88,'2015-10-27','bulgary extreme kw 1,melati,antonio banderas,eternity lady,jaguar vision kw 1'),
(89,'2015-10-28','cool water man kw 1,aigner black,kenzo in bali'),
(90,'2015-10-29','antonio banderas,antonio banderas,aigner black,heavenly kiss,antonio banderas'),
(91,'2015-10-30','antonio banderas,lucious pink,vanilla,boss orange,vip for him'),
(92,'2015-10-31','bulgary pour homme soir,exotic unisex,cool water man kw 1,heavenly kiss,essential sport,melati,1000 bunga,cool water man kw 1,blue emotion kw 1,sexy gravity'),
(93,'2015-11-01','bulgary pour homme soir,silver,kenzo in bali,melati,bellagio,antonio banderas,adidas fair play,cool water man kw 1'),
(94,'2015-11-02','sexy gravity,1000 bunga,kenzo in bali,vip for him,1000 bunga,dolly girl,blue desire kw 1,melati,silver,bubble gum,white musk,harajuku lovers,vip for him'),
(95,'2015-11-03','adidas fair play,exotic unisex,cool water man kw 1,aqua digio blue kw 1,vanilla,silver'),
(96,'2015-11-04','melati,blue desire kw 1,butterfly,lovely kw 1,harajuku lovers,blue desire kw 1,antonio banderas,melati,blue desire kw 1,bubble gum,antonio banderas'),
(97,'2015-11-05','cool water man kw 1,antonio banderas,cool water man kw 1,cool water man,dolly girl,cool water man,lovely kw 1,bulgary extreme kw 1'),
(98,'2015-11-06','jaguar vision kw 1,cool water man kw 1,blue emotion kw 1,malaikat subuh,silver,blue emotion kw 1,aqua digio blue kw 1,jovan,lucious pink,melati'),
(99,'2015-11-07','blue emotion kw 1,harajuku lovers,vip for him,lovely kw 1,harajuku lovers,antonio banderas,ferrari man in red kw 1,blue emotion kw 1'),
(100,'2015-11-08','blue desire kw 1,malaikat subuh,harajuku lovers,antonio banderas,butterfly,kenzo in bali,lovely kw 1,exotic unisex,strawberry'),
(101,'2015-11-09','antonio banderas,malaikat subuh,vip for him,melati'),
(102,'2015-11-10','melati,cool water man,butterfly,cool water man,dolly girl'),
(103,'2015-11-11','bulgary pour homme soir,melati,jaguar vision kw 1,silver,malaikat subuh,cool water man kw 1'),
(104,'2015-11-12','dolly girl,cool water man'),
(105,'2015-11-13','heavenly kiss,lovely kw 1,exotic unisex,vintage,cool water lady,melati'),
(106,'2015-11-14','aqua blue edition kw 1,aqua digio blue kw 1,blue desire kw 1,silver,bulgary extreme kw 1,cool water man kw 1'),
(107,'2015-11-15','aqua blue edition kw 1,fantasy,melati,silver,1000 bunga,blue emotion kw 1,lucious pink,cool water man,lucious pink,malaikat subuh'),
(108,'2015-11-16','cool water man kw 1,boss energise,lovely kw 1,bubble gum,heavenly kiss,fantasy,melati,bulgary pour homme soir,antonio banderas'),
(109,'2015-11-17','aqua blue edition kw 1,jimmy choo man,antonio banderas,melati,antonio banderas,cool water man,lovely kw 1,cool water man kw 1,cool water man kw 1'),
(110,'2015-11-18','exotic unisex,cool water man kw 1,essential sport,antonio banderas,cool water man kw 1,blue emotion kw 1'),
(111,'2015-11-19','silver,bulgary extreme kw 1,cool water man kw 1,cool water man kw 1,blue emotion kw 1,kenzo in bali,bellagio'),
(112,'2015-11-20','1000 bunga,cool water man kw 1'),
(113,'2015-11-21','antonio banderas,fantasy,antonio banderas,bulgary extreme kw 1,antonio banderas,cool water man,kenzo in bali,silver,melati,cool water man kw 1,blue desire kw 1,kenzo in bali'),
(114,'2015-11-22','antonio banderas,malaikat subuh,blue emotion kw 1,bubble gum,fantasy,cool water man kw 1,cool water man kw 1'),
(115,'2015-11-23','bulgary extreme kw 1,1000 bunga,lovely kw 1,1000  bunga,lovely kw 1,fantasy,vip for him,cool water man'),
(116,'2015-11-24','cool water man  kw 1,antonio banderas,1000 bunga,silver,fantasy'),
(117,'2015-11-25','lovely kw 1'),
(118,'2015-11-26','vip for him,1000 bunga,jovan,adidas fair play,aqua digio blue kw 1,white musk,vip for him'),
(119,'2015-11-27','bulgary extreme kw 1,blue desire kw 1,bulgary extreme kw 1,fantasy,bubble gum,aqua digio blue kw 1,antonio banderas'),
(120,'2015-11-28','antonio banderas,cool water man,1000 bunga,antonio banderas,lovely kw 1,silver,vip for him,malaikat subuh,blue desire kw 1,aqua digio blue kw 1,fantasy,bulgary extreme kw 1,antonio banderas,bulgary pour homme soir,bulgary pour homme soir'),
(121,'2015-11-29','malaikat subuh,ferrari man in red kw 1,vanilla,legend,ferrari man in red kw 1,blue emotion kw 1,lovely kw 1,sexy gravity,lovely kw 1'),
(122,'2015-11-30','1000 bunga,1000 bunga,bubble gum,antonio banderas,blue desire kw 1'),
(123,'2015-12-01','sexy gravity,bulgary extreme kw 1,silver,bulgary extreme kw 1,jaguar vision kw 1,bulgary pour homme soir'),
(124,'2015-12-02','silver,boss energise,jaguar vision kw 1,bulgary extreme kw 1,sexy gravity,blue emotion kw 1,heavenly kiss,vanilla,vip for him,adidas fair play,fantasy,lucious pink'),
(125,'2015-12-03','malaikat subuh,bulgary extreme kw 1,lucious pink,melati,vip for him,jovan,aqua blue edition kw 1,cool water man,vanilla,silver,silver,blue emotion kw 1'),
(126,'2015-12-04','fantasy,vanilla,blue emotion kw 1,vanilla,chic for man kw 1,blue desire kw 1'),
(127,'2015-12-05','kenzo in bali,blue emotion kw 1,blue desire kw 1,white musk,jovan,1000 bunga,malaikat subuh,aigner black,ferrari man in red kw 1,bulgary extreme kw 1,bulgary extreme kw 1'),
(128,'2015-12-06','blue desire kw 1,antonio banderas,malaikat subuh,fantasy,1000 bunga,antonio banderas,bubble gum,lovely kw 1,antonio banderas'),
(129,'2015-12-07','kasturi musk,bulgary extreme kw 1,blue desire kw 1,cobra,fantasy,vip for him,fantasy,antonio banderas,aqua blue edition kw 1,blue emotion kw 1,cool water lady'),
(130,'2015-12-08','bellagio,melati,silver,dolly girl,boss orange,cool water man'),
(131,'2015-12-09','bubble gum,vanilla,vanilla,ferrari man in red kw 1,212 sexy man,blue emotion kw 1,bubble gum,lovely kw 1,1000 bunga'),
(132,'2015-12-10','blue emotion kw 1,aigner black,vanilla,cool water man'),
(133,'2015-12-11','kenzo in bali,kasturi musk,melati,212 sexy man,dolly girl,fantasy,melati,bubble gum,sexy gravity,sexy gravity,bubble gum'),
(134,'2015-12-12','1000 bunga,1000 bunga,fantasy,fantasy,bulgary extreme kw 1,cool water lady,silver,212 sexy man'),
(135,'2015-12-13','bubble gum,melati,adidas fair play,blue emotion kw 1'),
(136,'2015-12-14','212 sexy man,jovan'),
(137,'2015-12-15','1000 bunga,antonio banderas,vanilla,1000 bunga,white musk,malaikat subuh,butterfly,sexy gravity'),
(138,'2015-12-16','kasturi musk,jean paul gaultier,blue emotion kw 1,lucious pink,blue desire kw 1,blue emotion kw 1'),
(139,'2015-12-17','vanilla,bubble gum,harajuku lovers,strawberry,aigner black,white musk,1000 bunga'),
(140,'2015-12-18','lovely kw 1,bulgary extreme kw 1,gahroudh,butterfly,melati,1000 bunga,boss orange'),
(141,'2015-12-19','sexy gravity,sexy gravity,charly silver,butterfly,212 sexy man,cool water man,dolly girl'),
(142,'2015-12-20','butterfly,antonio banderas,sexy gravity,sexy gravity,boss orange,lovely kw 1,eternity lady,boss energise,blue emotion kw 1,blue desire kw 1'),
(143,'2015-12-21','silver,malaikat subuh,white musk,sexy gravity,exotic unisex,bulgary pour homme soir,vintage,adidas fair play'),
(144,'2015-12-22','lovely kw 1,melati,malaikat subuh,sexy gravity,dolly girl,fantasy,antonio banderas,blue emotion kw 1,blue emotion kw1,1000 bunga,fantasy'),
(145,'2015-12-23','jovan,butterfly,fantasy,boss orange,silver,bellagio,1000 bunga,vanilla,antonio banderas,cool water man,adidas fair play,jovan'),
(146,'2015-12-24','1000 bunga,sedap malam,blue desire kw 1,kenzo in bali,fantasy kw 1,1000 bunga,malaikat subuh,silver,silver,melati'),
(147,'2015-12-25','blue emotion kw 1,antonio banderas,bubble gum,sedap malam,bubble gum,happy clinique woman,harajuku lovers,malaikat subuh,lucious pink'),
(148,'2015-12-26','malaikat subuh,melati,melati,bulgary extreme kw 1,kenzo in bali,jovan'),
(149,'2015-12-27','1000 bunga,fantasy,vanilla,sexy gravity'),
(150,'2015-12-28','silver,1000 bunga,fantasy,melati,ferrari man in red kw 1,ferrari man in red kw 1,sexy gravity,sexy gravity,sexy gravity'),
(151,'2015-12-29','fantasy,blue emotion kw 1,lovely kw 1'),
(152,'2015-12-30','eternity lady,lovely kw 1,adidas fair play,melati,melati,bulgary extreme kw 1,aigner black,jovan,kenzo in bali'),
(153,'2015-12-31','lovely kw 1,bulgary extreme kw 1,bubble gum,bulgary extreme kw 1,fantasy,blue emotion kw 1,kenzo in bali,blue desire kw 1,malaikat subuh,kenzo in bali,bulgary extreme kw 1'),
(154,'2016-01-01','white musk,white musk,melati,bulgary extreme kw 1,silver,charly silver,antonio banderas,bellagio,silver,blue emotion kw 1,malaikat subuh,blue emotion kw 1,christiano ronaldo,aigner black,lovely kw 1'),
(155,'2016-01-02','1000 bunga,1000 bunga,melati,melati,butterfly,vanilla,kenzo in bali'),
(156,'2016-01-03','boss orange,212 sexy man,butterfly,fantasy'),
(157,'2016-01-04','blue desire kw 1,blue emotion kw 1,white musk,harajuku lovers,fantasy,1000 bunga,dolly girl'),
(158,'2016-01-05','vanilla,melati,cool water man,gahroudh,1000 bunga,butterfly,harajuku lovers,adidas fair play'),
(159,'2016-01-06','butterfly,cool water man,1000 bunga,fantasy,fantasy,adidas fair play,white musk,gahroudh,fantasy,cool water man,dolly girl'),
(160,'2016-01-07','adidas fair play,sexy gravity,fantasy,1000 bunga,lovely kw 1,melati,melati,vanilla,kasturi musk,sexy gravity,silver,sedap malam,bubble gum,blue emotion kw 1'),
(161,'2016-01-08','lucious pink,melati,boss orange,silver,bubble gum,harajuku lovers,vanilla'),
(162,'2016-01-09','bulgary extreme kw 1,1000 bunga,bulgary extreme kw 1,malaikat subuh,sedap malam,fantasy'),
(163,'2016-01-10','malaikat subuh,vanilla,kenzo in bali,melati,blue desire kw 1,gahroudh,happy clinique woman,bulgary extreme kw 1'),
(164,'2016-01-11','gahroudh,eternity lady,adidas fair play,melati,bulgary extreme kw 1,adidas fair play,blue emotion kw 1,fantasy'),
(165,'2016-01-12','sedap malam,adidas fair play,sexy gravity,lovely kw 1,cool water man,kenzo in bali,vip for him'),
(166,'2016-01-13','sexy gravity,adidas fair play,harajuku lovers,silver,polo supreme oud kw 1,212 sexy man,fantasy,harajuku lovers,white musk,blue emotion kw 1'),
(167,'2016-01-14','sexy gravity,dolly girl,adidas fair play,1000 bunga,malaikat subuh,fantasy,vanilla,lucious pink'),
(168,'2016-01-15','sexy gravity,sexy gravity,adidas fair play,cool water lady,bulgary extreme kw 1,vintage,dolly girl,bubble gum'),
(169,'2016-01-16','1000 bunga,dolly girl,lacoste land kw 1,blue desire kw 1,adiadas fair play,white musk,adidas fair play,bulgary extreme kw 1,dolly girl'),
(170,'2016-01-17','adidas fair play,sexy gravity,dolly girl,adidas fair play'),
(171,'2016-01-18','adidas fair play,dolly girl,jovan,sexy gravity,dolly girl,vanilla,dolly girl'),
(172,'2016-01-19','vanilla,sexy gravity,malaikat subuh,dolly girl,blue emotion kw 1,harajuku lovers,bubble gum'),
(173,'2016-01-20','bulgary extreme kw 1,silver,dolly girl,cool water man,bulgary extreme kw 1,melati,flight of fancy kw 1'),
(174,'2016-01-21','vanilla,bubble gum,jovan,cool water lady,1000 bunga,adidas fair play'),
(175,'2016-01-22','bubble gum,aqua blue edition kw 1,adidas fair play,melati'),
(176,'2016-01-23','adidas fair play,bulgary extreme kw 1,hidden fantasy,adidas fair play'),
(177,'2016-01-24','silver,cool water lady,dolly girl,white musk,212 sexy man,melati,white musk,adidas fair play,lovely kw 1,dolly girl,silver'),
(178,'2016-01-25','white musk,strawberry,lovely kw 1,bubble gum,cool water man'),
(179,'2016-01-26','melati,sedap malam,aigner black,adidas fair play,white musk,lovely kw 1,sexy gravity,kenzo in bali,bellagio,silver'),
(180,'2016-01-27','bellagio,jasmine noir,blue desire kw 1,1000 bunga,adidas fair play'),
(181,'2016-01-28','kenzo in bali,blue desire kw 1,lucious pink,lovely kw 1,fantasy,silver'),
(182,'2016-01-29','missik putih super,malaikat subuh,boss energise,bulgary extreme kw 1,vintage,melati,eternity lady,melati,bulgary extreme kw 1'),
(183,'2016-01-30','melati,1000 bunga,ocean royal,the brilliant game,melati,boss energise,blue emotion kw 1'),
(184,'2016-01-31','bulgary extreme kw 1,blue desire kw 1,adidas fair play,white musk,lovely kw 1,jaguar marc II,lovely kw 1,fantasy,harajuku lovers'),
(185,'2016-02-01','blue emotion kw 1,adidas fair play,adidas fair play,212 sexy man,lovely kw 1'),
(186,'2016-02-02','kenzo air,bellagio,lovely kw 1,vanilla,vanilla,vanilla'),
(187,'2016-02-03','blue desire kw 1,blue desire kw 1,adidas fair play,lovely kw 1,bubble gum'),
(188,'2016-02-04','sexy gravity,malaikat subuh,blue emotion kw 1,silver'),
(189,'2016-02-05','bubble gum,malaikat subuh,missik putih super,lucious pink,sexy gravity,bubble gum,bubble gum,polo sport kw 1,blue emotion kw 1'),
(190,'2016-02-06','silver,polo sport kw 1,1000 bunga,lucious pink'),
(191,'2016-02-07','silver,bulgary extreme kw 1,lucious pink,lucious pink'),
(192,'2016-02-08','bulgary extreme kw 1,silver,bulgary pour homme soir,boss energise,eternity lady,vanilla,silver,malaikat subuh,malaikat subuh,malaikat subuh'),
(193,'2016-02-09','silver,melati,kasturi musk,sedap malam,melati,fantasy'),
(194,'2016-02-10','blue desire kw 1,bulgary extreme kw 1,bubble gum'),
(195,'2016-02-11','melati,silver,fantasy,bulgary extreme kw 1,bubble gum,fantasy,lovely kw 1,harajuku lovers'),
(196,'2016-02-12','blue emotion kw 1,white musk,boss energise,fantasy,fantasy,malaikat subuh'),
(197,'2016-02-13','white musk,bulgary extreme kw 1,adidas fair play,gahroudh'),
(198,'2016-02-14','bubble gum,boss orange,melati,sexy gravity,butterfly,boss energise,vintage,melati,harajuku lovers'),
(199,'2016-02-15','silver'),
(200,'2016-02-16','blue emotion kw 1,boss energise,lucious pink,bulgary extreme kw 1,adidas fair play,bubble gum,silver,kenzo in bali,boss energise,strawberry,bubble gum,essential sport'),
(201,'2016-02-17','bulgary pour homme soir,sedap malam,bulgary extreme kw 1,kasturi musk'),
(202,'2016-02-18','gahroudh,fantasy,fantasy,blue emotion kw 1,bulgary extreme kw 1,gahroudh,sexy gravity,adidas fair play'),
(203,'2016-02-19','adidas fair play,kenzo pour homme lady,butterfly,bulgary extreme kw 1,kenzo pour homme lady,melati,cool water man,212 sexy man,sexy gravity,vip for him,melati,white musk,212 sexy man,bubble gum,heavenly kiss,melati,sexy gravity'),
(204,'2016-02-20','blue emotion kw 1,bravast,adidas fair play,bubble gum'),
(205,'2016-02-21','kenzo in bali,silver,adidas fair play'),
(206,'2016-02-22','flight of fancy kw 1,lucious pink,bellagio,1000 bunga,kenzo pour homme lady,bulgary pour homme soir,boss energise,boss energise,1000 bunga'),
(207,'2016-02-23','melati,fantasy,fantasy,bubble gum,malaikat subuh,blue emotion kw 1,dolly girl'),
(208,'2016-02-24','212 sexy man,malaikat subuh,silver,lucious pink,silver,kenzo pour homme lady,silver'),
(209,'2016-02-25','butterfly,exotic unisex,vip for him,vip for him,the brilliant game,bubble gum,kenzo pour homme lady,vip for him,bulgary extreme kw 1,ocean royal,bulgary extreme kw 1,eternity lady,silver,bubble gum,the brilliant game,bubble gum,bubble gum,lovely kw 1'),
(210,'2016-02-26','vip for him,bubble gum,malaikat subuh,blue desire kw 1'),
(211,'2016-02-27','fantasy,212 sexy man,aigner black,adidas fair play,lovely kw 1'),
(212,'2016-02-28','blue desire kw 1,blue desire kw 1,boss energise,fantasy,aigner black,bulgary extreme kw 1,white musk,rose essential,cobra,dolly girl'),
(213,'2016-02-29','vip for him,cool water man,vip for him,polo stick,polo sport kw 1,bubble gum,1000 bunga,dolly girl,lovely kw 1,fantasy,vanilla'),
(214,'2016-03-01','fantasy,fantay,melati,malaikat subuh,white musk,white musk,vintage,blue emotion kw 1'),
(215,'2016-03-02','cool water man,1000 bunga,dolly girl,bubble gum'),
(216,'2016-03-03','bulgary extreme kw 1,vip for him,lucious pink,adidas fair play,kenzo in bali,sedap malam,bubble gum,vip for him,butterfly,vip for him,vanilla,ripcurl,malaikat subuh,blue de channel'),
(217,'2016-03-04','sexy gravity,cool water lady,blue emotion kw 1,1000 bunga,malaikat subuh,melati,polo sport kw 1,ferrari man in red kw 1,silver,boss energise,bulgary extreme kw 1,aigner black,blue emotion kw 1,lovely kw 1'),
(218,'2016-03-05','bubble gum,melati,bulgary extreme kw 1,fantasy,boss orange,vanilla,melati,vanilla,vip for him,bulgary extreme kw 1'),
(219,'2016-03-06','silver,malaikat subuh,1000 bunga,melati,malaikat subuh,boss orange,bulgary extreme kw 1,harajuku lovers,sexy gravity,adidas fair play,malaikat subuh'),
(220,'2016-03-07','silver,bulgary extreme kw 1,vip for him,lovely kw 1,white musk,gahroudh,ferrari man in red kw 1,fantasy'),
(221,'2016-03-08','blue emotion kw 1,strawberry,bulgary extreme kw 1,lovely kw 1,bulgary extreme kw 1,jovan'),
(222,'2016-03-09','cool water lady,kenzo in bali,kenzo in bali,bulgary extreme kw 1,silver,boss orange,malaikat subuh,1000 bunga,lovely kw 1'),
(223,'2016-03-10','silver,harajuku lovers,dolly girl,aigner black'),
(224,'2016-03-11','dolly girl,lovely kw 1,1000 bunga,flight of fancy kw 1,flight of fancy kw 1,sexy gravity,melati,1000 bunga'),
(225,'2016-03-12','bulgary extreme kw 1,bulgary extreme kw 1,vanilla,blue emotion kw 1,vanilla,harajuku lovers,strawberry,sexy gravity,kenzo pour homme lady,bulgary extreme kw 1'),
(226,'2016-03-13','bulgary extreme kw 1,ocean royal,dolly girl,kenzo in bali,silver,blue emotion kw 1,flight of fancy kw 1,sexy gravity,sexy gravity,flight of fancy kw 1'),
(227,'2016-03-14','cool water lady,harajuku lovers,white musk,white musk,bulgary extreme kw 1,1000  bunga,flight of fancy,strawberry'),
(228,'2016-03-15','aigner black,jovan,bulgary extreme kw 1,blue emotion kw 1,bellagio,silver'),
(229,'2016-03-16','lovely kw 1,blue emotion kw 1,lovely kw 1,kenzo in bali,boss energise,bulgary extreme kw 1,vanilla'),
(230,'2016-03-17','silver,dolly girl,cool water man,kenzo in bali,1000 bunga,vanilla,jaguar vision kw 1,bubble gum,malaikat subuh,the brilliant game,harajuku lovers,harajuku lovers,malaikat subuh'),
(231,'2016-03-18','kenzo in bali,silver,malaikat subuh,silver,1000 bunga'),
(232,'2016-03-19','bellagio,melati,polo sport kw 1,harajuku lovers,bubble gum'),
(233,'2016-03-20','cool water man,212 sexy man,eternity lady,lacoste land kw 1,vanilla,212 sexy man,the brilliant game,dolly girl,bulgary extreme kw 1,1000 bunga,jovan,butterfly,white musk,bulgary extreme kw 1,boss energise,vip for him,dolly girl'),
(234,'2016-03-21','malaikat subuh,fantasy,sexy gravity,sexy gravity,1000 bunga,uomo absolute,blue emotion kw 1'),
(235,'2016-03-22','fantasy,happy clinique woman,butterfly,butterfly,missik putih super,cool water lady,bubble gum,essential sport,silver,polo supreme oud kw 1,polo sport kw 1,sexy gravity,mukhalat al-malaki,strawberry'),
(236,'2016-03-23','1000 bunga,hello kitty,missik putih super'),
(237,'2016-03-24','1000 bunga,white musk,cool water man,melati,malaikat subuh,vanilla,bulgary extreme kw 1'),
(238,'2016-03-25','blue emotion kw 1,aigner black,vanilla,fantasy,fantasy,bubble gum,1000  bunga,butterfly,bulgary extreme kw 1,ripcurl,fantasy,vanilla'),
(239,'2016-03-26','polo sport kw 1,cool game,kenzo in bali,vanilla,aigner black,blue emotion kw 1'),
(240,'2016-03-27','1000 bunga,al-hanouf,bellagio,fantasy,fantasy,melati'),
(241,'2016-03-28','blue emotion kw 1,silver,bubble gum,bubble gum,melati'),
(242,'2016-03-29','missik putih super,polo sport kw 1,white musk,silver,silver'),
(243,'2016-03-30','omnia crystaline,sexy gravity,melati,vip for him'),
(244,'2016-03-31','melati,vanilla,silver,blue desire kw 1,melati,aigner black,sexy gravity,flight of fancy'),
(245,'2016-04-01','dolly girl,bubble gum,bubble gum,1000 bunga,white musk,bulgary pour homme soir,boss orange,bubble gum,bubble gum'),
(246,'2016-04-02','vanilla,bulgary extreme kw 1,butterfly,polo sport kw 1,polo black,white musk,sexy gravity'),
(247,'2016-04-03','polo sport kw 1,white musk,polo black,melati,bubble gum,harajuku lovers,white musk,fantasy,white musk,flight of fancy,bubble gum,vanilla,harajuku lovers,bubble gum,bulgary extreme kw 1,eternity lady'),
(248,'2016-04-04','melati,blue desire kw 1,cool water lady,eternity lady,silver,bulgary extreme kw 1,cool water lady,lucious pink,bubble gum'),
(249,'2016-04-05','butterfly,fantasy,butterfly,bulgary extreme kw 1,sexy gravity,sexy gravity,malaikat subuh,melati,white musk,fantasy'),
(250,'2016-04-06','blue desire kw 1,strawberry,cool water man,silver,deep red,bubble gum,lucious pink'),
(251,'2016-04-07','bellagio,blue emotion kw 1,lucious pink,lucious pink,lucious pink,blue desire kw 1,the brilliant game,melati,fantasy,white musk,blue emotion kw 1,aqua essenza kw 1,escada in paradise,sexy gravity,blue desire kw 1,fantasy'),
(252,'2016-04-08','blue emotion kw 1,exotic unisex,aigner black,aigner black,boss orange,lucious pink'),
(253,'2016-04-09','bellagio,dolly girl,blue emotion kw 1'),
(254,'2016-04-10','missik putih super,white musk,eternity lady,sexy gravity,exotic unisex,fantasy,coco chocolate'),
(255,'2016-04-11','bellagio,bellagio,bellagio,bellagio,bubble gum,sexy gravity,blue emotion kw 1,fantasy,aqua essenza kw 1,blue desire kw 1,melati,polo sport kw 1'),
(256,'2016-04-12','bubble gum,lacoste blue,dolly girl,ferrari man in red kw 1,coco chocolate'),
(257,'2016-04-13','sedap malam,1000 bunga,1000 bunga,1000 bunga,fantasy,cool water man,sexy gravity,white musk'),
(258,'2016-04-14','fantasy,bubble gum,bubble gum,malaikat subuh,melati,bubble gum,charly silver'),
(259,'2016-04-15','fantasy,polo sport kw 1,cool water man,fantasy'),
(260,'2016-04-16','exotic unisex,melati,malaikat subuh,lovely kw 1,lucious pink,playboy london,polo sport kw 1'),
(261,'2016-04-17','1000 bunga,melati,malaikat subuh,lucious pink,lovely kw 1,uomo absolute,uomo absolute,lucious pink,bubble gum,vanilla,blue emotion kw 1,melati'),
(262,'2016-04-18','white musk,white musk,bulgary pour homme soir,blue de channel,lovely kw 1,dolly girl,fantasy,lovely kw 1,boss orange'),
(263,'2016-04-19','melati,melati,stardust woman,the brilliant game,flight of fancy kw 1,vanilla,harajuku lovers,harajuku lovers,fantasy,bubble gum'),
(264,'2016-04-20','malaikat subuh,harajuku lovers,1000 bunga,uomo absolute'),
(265,'2016-04-21','lovely kw 1,lovely kw 1,bulgary pour homme soir,bubble gum,playboy london,bellagio,malaikat subuh,bulgary extreme kw 1,playboy london,vanilla,lucious pink,playboy london,playboy london'),
(266,'2016-04-22','blue emotion kw 1,jovan,playboy london,playboy london,malaikat subuh,playboy london,white musk,playboy london'),
(267,'2016-04-23','sexy gravity,harajuku lovers,sexy gravity,essential sport,polo sport kw 1,sexy gravity,playboy london,lucious pink,boss orange man,heavenly kiss,blue emotion kw 1,coco chocolate'),
(268,'2016-04-24','212 sexy man,kasturi musk,vanilla,playboy london,sexy gravity,playboy london,bulgary extreme kw 1,deep red,playboy london,bubble gum'),
(269,'2016-04-25','polo sport kw 1,sexy gravity,blue desire kw 1,fantasy,lovely kw 1,bubble gum,malaikat subuh,polo sport kw 1,lucious pink,dolly girl'),
(270,'2016-04-26','playboy london,melati,butterfly,bulgary extreme kw 1,playboy london'),
(271,'2016-04-27','playboy london,vanilla,sexy gravity,dolly girl,fantasy,sexy gravity,vanilla,bubble gum,lovely kw 1,lovely kw 1,bellagio,fantasy,kasturi musk,coco chocolate,vanilla'),
(272,'2016-04-28','kenzo in bali,melati,flight of fancy,vanilla'),
(273,'2016-04-29','fantasy,aigner black,bulgary extreme kw 1,fantasy,lovely kw 1,playboy london,playboy london,flight of fancy,flight of fancy,lovely kw 1'),
(274,'2016-04-30','lucious pink,strawberry,bubble gum,bubble gum,playboy london,sexy gravity,bulgary extreme kw 1,fantasy');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `password` text,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`nama`,`password`,`level`,`last_login`,`inactive`) values 
(1,'admin','Administrator','21232f297a57a5a743894a0e4a801fc3',1,'2017-02-22 01:49:04',0),
(2,'user','User Direktur','ee11cbb19052e40b07aac0ca060c23ee',2,'2016-05-22 09:19:02',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
