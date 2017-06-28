/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : information_schema

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-12-24 21:12:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for CHARACTER_SETS
-- ----------------------------
DROP TABLE IF EXISTS `CHARACTER_SETS`;
CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CHARACTER_SETS
-- ----------------------------
INSERT INTO `CHARACTER_SETS` VALUES ('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('dec8', 'dec8_swedish_ci', 'DEC West European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp850', 'cp850_general_ci', 'DOS West European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('hp8', 'hp8_english_ci', 'HP West European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('latin1', 'latin1_swedish_ci', 'cp1252 West European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('swe7', 'swe7_swedish_ci', '7bit Swedish', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('ascii', 'ascii_general_ci', 'US ASCII', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', '3');
INSERT INTO `CHARACTER_SETS` VALUES ('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('tis620', 'tis620_thai_ci', 'TIS620 Thai', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('euckr', 'euckr_korean_ci', 'EUC-KR Korean', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('greek', 'greek_general_ci', 'ISO 8859-7 Greek', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp1250', 'cp1250_general_ci', 'Windows Central European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('utf8', 'utf8_general_ci', 'UTF-8 Unicode', '3');
INSERT INTO `CHARACTER_SETS` VALUES ('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('cp866', 'cp866_general_ci', 'DOS Russian', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('macce', 'macce_general_ci', 'Mac Central European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('macroman', 'macroman_general_ci', 'Mac West European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp852', 'cp852_general_ci', 'DOS Central European', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp1256', 'cp1256_general_ci', 'Windows Arabic', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp1257', 'cp1257_general_ci', 'Windows Baltic', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('binary', 'binary', 'Binary pseudo charset', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', '1');
INSERT INTO `CHARACTER_SETS` VALUES ('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', '2');
INSERT INTO `CHARACTER_SETS` VALUES ('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', '3');

-- ----------------------------
-- Table structure for COLLATIONS
-- ----------------------------
DROP TABLE IF EXISTS `COLLATIONS`;
CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COLLATIONS
-- ----------------------------
INSERT INTO `COLLATIONS` VALUES ('big5_chinese_ci', 'big5', '1', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('big5_bin', 'big5', '84', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('dec8_swedish_ci', 'dec8', '3', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('dec8_bin', 'dec8', '69', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp850_general_ci', 'cp850', '4', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp850_bin', 'cp850', '80', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('hp8_english_ci', 'hp8', '6', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('hp8_bin', 'hp8', '72', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('koi8r_general_ci', 'koi8r', '7', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('koi8r_bin', 'koi8r', '74', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('latin1_german1_ci', 'latin1', '5', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin1_swedish_ci', 'latin1', '8', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin1_danish_ci', 'latin1', '15', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin1_german2_ci', 'latin1', '31', '', 'Yes', '2');
INSERT INTO `COLLATIONS` VALUES ('latin1_bin', 'latin1', '47', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin1_general_ci', 'latin1', '48', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin1_general_cs', 'latin1', '49', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin1_spanish_ci', 'latin1', '94', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin2_czech_cs', 'latin2', '2', '', 'Yes', '4');
INSERT INTO `COLLATIONS` VALUES ('latin2_general_ci', 'latin2', '9', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin2_hungarian_ci', 'latin2', '21', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin2_croatian_ci', 'latin2', '27', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin2_bin', 'latin2', '77', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('swe7_swedish_ci', 'swe7', '10', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('swe7_bin', 'swe7', '82', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('ascii_general_ci', 'ascii', '11', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('ascii_bin', 'ascii', '65', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('ujis_japanese_ci', 'ujis', '12', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('ujis_bin', 'ujis', '91', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('sjis_japanese_ci', 'sjis', '13', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('sjis_bin', 'sjis', '88', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('hebrew_general_ci', 'hebrew', '16', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('hebrew_bin', 'hebrew', '71', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('tis620_thai_ci', 'tis620', '18', 'Yes', 'Yes', '4');
INSERT INTO `COLLATIONS` VALUES ('tis620_bin', 'tis620', '89', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('euckr_korean_ci', 'euckr', '19', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('euckr_bin', 'euckr', '85', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('koi8u_general_ci', 'koi8u', '22', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('koi8u_bin', 'koi8u', '75', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('gb2312_chinese_ci', 'gb2312', '24', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('gb2312_bin', 'gb2312', '86', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('greek_general_ci', 'greek', '25', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('greek_bin', 'greek', '70', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1250_general_ci', 'cp1250', '26', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('cp1250_czech_cs', 'cp1250', '34', '', 'Yes', '2');
INSERT INTO `COLLATIONS` VALUES ('cp1250_croatian_ci', 'cp1250', '44', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('cp1250_bin', 'cp1250', '66', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('gbk_chinese_ci', 'gbk', '28', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('gbk_bin', 'gbk', '87', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('latin5_turkish_ci', 'latin5', '30', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('latin5_bin', 'latin5', '78', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('armscii8_general_ci', 'armscii8', '32', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('armscii8_bin', 'armscii8', '64', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('utf8_general_ci', 'utf8', '33', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('utf8_bin', 'utf8', '83', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('utf8_unicode_ci', 'utf8', '192', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_icelandic_ci', 'utf8', '193', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_latvian_ci', 'utf8', '194', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_romanian_ci', 'utf8', '195', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_slovenian_ci', 'utf8', '196', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_polish_ci', 'utf8', '197', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_estonian_ci', 'utf8', '198', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_spanish_ci', 'utf8', '199', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_swedish_ci', 'utf8', '200', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_turkish_ci', 'utf8', '201', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_czech_ci', 'utf8', '202', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_danish_ci', 'utf8', '203', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_lithuanian_ci', 'utf8', '204', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_slovak_ci', 'utf8', '205', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_spanish2_ci', 'utf8', '206', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_roman_ci', 'utf8', '207', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_persian_ci', 'utf8', '208', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_esperanto_ci', 'utf8', '209', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('utf8_hungarian_ci', 'utf8', '210', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_general_ci', 'ucs2', '35', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('ucs2_bin', 'ucs2', '90', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('ucs2_unicode_ci', 'ucs2', '128', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_icelandic_ci', 'ucs2', '129', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_latvian_ci', 'ucs2', '130', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_romanian_ci', 'ucs2', '131', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_slovenian_ci', 'ucs2', '132', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_polish_ci', 'ucs2', '133', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_estonian_ci', 'ucs2', '134', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_spanish_ci', 'ucs2', '135', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_swedish_ci', 'ucs2', '136', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_turkish_ci', 'ucs2', '137', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_czech_ci', 'ucs2', '138', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_danish_ci', 'ucs2', '139', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_lithuanian_ci', 'ucs2', '140', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_slovak_ci', 'ucs2', '141', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_spanish2_ci', 'ucs2', '142', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_roman_ci', 'ucs2', '143', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_persian_ci', 'ucs2', '144', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_esperanto_ci', 'ucs2', '145', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('ucs2_hungarian_ci', 'ucs2', '146', '', 'Yes', '8');
INSERT INTO `COLLATIONS` VALUES ('cp866_general_ci', 'cp866', '36', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp866_bin', 'cp866', '68', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('keybcs2_general_ci', 'keybcs2', '37', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('keybcs2_bin', 'keybcs2', '73', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('macce_general_ci', 'macce', '38', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('macce_bin', 'macce', '43', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('macroman_general_ci', 'macroman', '39', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('macroman_bin', 'macroman', '53', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp852_general_ci', 'cp852', '40', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp852_bin', 'cp852', '81', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('latin7_estonian_cs', 'latin7', '20', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('latin7_general_ci', 'latin7', '41', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('latin7_general_cs', 'latin7', '42', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('latin7_bin', 'latin7', '79', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1251_bulgarian_ci', 'cp1251', '14', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1251_ukrainian_ci', 'cp1251', '23', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1251_bin', 'cp1251', '50', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1251_general_ci', 'cp1251', '51', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1251_general_cs', 'cp1251', '52', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1256_general_ci', 'cp1256', '57', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1256_bin', 'cp1256', '67', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1257_lithuanian_ci', 'cp1257', '29', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1257_bin', 'cp1257', '58', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp1257_general_ci', 'cp1257', '59', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('binary', 'binary', '63', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('geostd8_general_ci', 'geostd8', '92', 'Yes', '', '0');
INSERT INTO `COLLATIONS` VALUES ('geostd8_bin', 'geostd8', '93', '', '', '0');
INSERT INTO `COLLATIONS` VALUES ('cp932_japanese_ci', 'cp932', '95', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('cp932_bin', 'cp932', '96', '', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('eucjpms_japanese_ci', 'eucjpms', '97', 'Yes', 'Yes', '1');
INSERT INTO `COLLATIONS` VALUES ('eucjpms_bin', 'eucjpms', '98', '', 'Yes', '1');

-- ----------------------------
-- Table structure for COLLATION_CHARACTER_SET_APPLICABILITY
-- ----------------------------
DROP TABLE IF EXISTS `COLLATION_CHARACTER_SET_APPLICABILITY`;
CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COLLATION_CHARACTER_SET_APPLICABILITY
-- ----------------------------
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('big5_chinese_ci', 'big5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('big5_bin', 'big5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('dec8_swedish_ci', 'dec8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('dec8_bin', 'dec8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp850_general_ci', 'cp850');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp850_bin', 'cp850');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('hp8_english_ci', 'hp8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('hp8_bin', 'hp8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('koi8r_general_ci', 'koi8r');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('koi8r_bin', 'koi8r');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_german1_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_swedish_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_danish_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_german2_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_bin', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_general_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_general_cs', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin1_spanish_ci', 'latin1');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin2_czech_cs', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin2_general_ci', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin2_hungarian_ci', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin2_croatian_ci', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin2_bin', 'latin2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('swe7_swedish_ci', 'swe7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('swe7_bin', 'swe7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ascii_general_ci', 'ascii');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ascii_bin', 'ascii');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ujis_japanese_ci', 'ujis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ujis_bin', 'ujis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('sjis_japanese_ci', 'sjis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('sjis_bin', 'sjis');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('hebrew_general_ci', 'hebrew');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('hebrew_bin', 'hebrew');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('tis620_thai_ci', 'tis620');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('tis620_bin', 'tis620');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('euckr_korean_ci', 'euckr');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('euckr_bin', 'euckr');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('koi8u_general_ci', 'koi8u');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('koi8u_bin', 'koi8u');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('gb2312_chinese_ci', 'gb2312');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('gb2312_bin', 'gb2312');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('greek_general_ci', 'greek');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('greek_bin', 'greek');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1250_general_ci', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1250_czech_cs', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1250_croatian_ci', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1250_bin', 'cp1250');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('gbk_chinese_ci', 'gbk');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('gbk_bin', 'gbk');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin5_turkish_ci', 'latin5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin5_bin', 'latin5');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('armscii8_general_ci', 'armscii8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('armscii8_bin', 'armscii8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_general_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_bin', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_unicode_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_icelandic_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_latvian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_romanian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_slovenian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_polish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_estonian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_spanish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_swedish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_turkish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_czech_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_danish_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_lithuanian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_slovak_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_spanish2_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_roman_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_persian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_esperanto_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('utf8_hungarian_ci', 'utf8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_general_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_bin', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_unicode_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_icelandic_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_latvian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_romanian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_slovenian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_polish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_estonian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_spanish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_swedish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_turkish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_czech_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_danish_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_lithuanian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_slovak_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_spanish2_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_roman_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_persian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_esperanto_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('ucs2_hungarian_ci', 'ucs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp866_general_ci', 'cp866');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp866_bin', 'cp866');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('keybcs2_general_ci', 'keybcs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('keybcs2_bin', 'keybcs2');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('macce_general_ci', 'macce');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('macce_bin', 'macce');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('macroman_general_ci', 'macroman');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('macroman_bin', 'macroman');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp852_general_ci', 'cp852');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp852_bin', 'cp852');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin7_estonian_cs', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin7_general_ci', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin7_general_cs', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('latin7_bin', 'latin7');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1251_bulgarian_ci', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1251_ukrainian_ci', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1251_bin', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1251_general_ci', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1251_general_cs', 'cp1251');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1256_general_ci', 'cp1256');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1256_bin', 'cp1256');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1257_lithuanian_ci', 'cp1257');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1257_bin', 'cp1257');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp1257_general_ci', 'cp1257');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('binary', 'binary');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('geostd8_general_ci', 'geostd8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('geostd8_bin', 'geostd8');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp932_japanese_ci', 'cp932');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('cp932_bin', 'cp932');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('eucjpms_japanese_ci', 'eucjpms');
INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` VALUES ('eucjpms_bin', 'eucjpms');

-- ----------------------------
-- Table structure for COLUMNS
-- ----------------------------
DROP TABLE IF EXISTS `COLUMNS`;
CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COLUMNS
-- ----------------------------
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', '1', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', '3', '', 'NO', 'varchar', '60', '180', null, null, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', '4', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', '1', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATIONS', 'ID', '3', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(11)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', '4', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATIONS', 'IS_COMPILED', '5', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATIONS', 'SORTLEN', '6', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', '1', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'TABLE_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'COLUMN_NAME', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', '5', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', '6', null, 'YES', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'IS_NULLABLE', '7', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'DATA_TYPE', '8', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', '9', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', '10', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', '11', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', '12', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', '13', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'COLLATION_NAME', '14', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', '15', null, 'NO', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'COLUMN_KEY', '16', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'EXTRA', '17', '', 'NO', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'PRIVILEGES', '18', '', 'NO', 'varchar', '80', '240', null, null, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', '19', '', 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', '1', '', 'NO', 'varchar', '81', '243', null, null, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', '2', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', '5', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', '6', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', '7', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', '4', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', '5', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', '6', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', '7', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', '8', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', '9', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', '10', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', '11', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', '12', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'QUERY_ID', '1', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'SEQ', '2', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'STATE', '3', '', 'NO', 'varchar', '30', '90', null, null, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'DURATION', '4', '0.000000', 'NO', 'decimal', null, null, '9', '6', null, null, 'decimal(9,6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'CPU_USER', '5', null, 'YES', 'decimal', null, null, '9', '6', null, null, 'decimal(9,6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'CPU_SYSTEM', '6', null, 'YES', 'decimal', null, null, '9', '6', null, null, 'decimal(9,6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', '7', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', '8', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', '9', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', '10', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'MESSAGES_SENT', '11', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', '12', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', '13', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', '14', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'SWAPS', '15', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', '16', null, 'YES', 'varchar', '30', '90', null, null, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'SOURCE_FILE', '17', null, 'YES', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'PROFILING', 'SOURCE_LINE', '18', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', '1', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', '2', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', '5', '', 'NO', 'varchar', '9', '27', null, null, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', '6', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', '7', '', 'NO', 'varchar', '8', '24', null, null, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', '8', null, 'YES', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', '9', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', '10', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', '11', '', 'NO', 'varchar', '8', '24', null, null, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', '12', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', '13', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'SQL_PATH', '14', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', '15', '', 'NO', 'varchar', '7', '21', null, null, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'CREATED', '16', '0000-00-00 00:00:00', 'NO', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'LAST_ALTERED', '17', '0000-00-00 00:00:00', 'NO', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'SQL_MODE', '18', null, 'NO', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', '19', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'ROUTINES', 'DEFINER', '20', '', 'NO', 'varchar', '77', '231', null, null, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMATA', 'SQL_PATH', '5', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', '1', '', 'NO', 'varchar', '81', '243', null, null, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', '2', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', '5', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'TABLE_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'NON_UNIQUE', '4', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(1)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', '5', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'INDEX_NAME', '6', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', '7', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(2)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'COLUMN_NAME', '8', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'COLLATION', '9', null, 'YES', 'varchar', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'CARDINALITY', '10', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'SUB_PART', '11', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'PACKED', '12', null, 'YES', 'varchar', '10', '30', null, null, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'NULLABLE', '13', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'INDEX_TYPE', '14', '', 'NO', 'varchar', '16', '48', null, null, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'STATISTICS', 'COMMENT', '15', null, 'YES', 'varchar', '16', '48', null, null, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_TYPE', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'ENGINE', '5', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'VERSION', '6', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'ROW_FORMAT', '7', null, 'YES', 'varchar', '10', '30', null, null, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_ROWS', '8', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', '9', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'DATA_LENGTH', '10', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', '11', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'INDEX_LENGTH', '12', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'DATA_FREE', '13', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'AUTO_INCREMENT', '14', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'CREATE_TIME', '15', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'UPDATE_TIME', '16', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'CHECK_TIME', '17', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_COLLATION', '18', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'CHECKSUM', '19', null, 'YES', 'bigint', null, null, '19', '0', null, null, 'bigint(21)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'CREATE_OPTIONS', '20', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLES', 'TABLE_COMMENT', '21', '', 'NO', 'varchar', '80', '240', null, null, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', '5', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', '6', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', '1', '', 'NO', 'varchar', '81', '243', null, null, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', '2', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', '4', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', '5', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', '6', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', '4', '', 'NO', 'varchar', '6', '18', null, null, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', '5', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', '6', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', '7', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', '8', '0', 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(4)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', '9', null, 'YES', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', '10', null, 'NO', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', '11', '', 'NO', 'varchar', '9', '27', null, null, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', '12', '', 'NO', 'varchar', '6', '18', null, null, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', '13', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', '14', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', '15', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', '16', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'CREATED', '17', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'SQL_MODE', '18', null, 'NO', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'TRIGGERS', 'DEFINER', '19', null, 'NO', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', '1', '', 'NO', 'varchar', '81', '243', null, null, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', '2', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', '4', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'TABLE_CATALOG', '1', null, 'YES', 'varchar', '512', '1536', null, null, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', '2', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'TABLE_NAME', '3', '', 'NO', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', '4', null, 'NO', 'longtext', '4294967295', '4294967295', null, null, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'CHECK_OPTION', '5', '', 'NO', 'varchar', '8', '24', null, null, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'IS_UPDATABLE', '6', '', 'NO', 'varchar', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'DEFINER', '7', '', 'NO', 'varchar', '77', '231', null, null, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'information_schema', 'VIEWS', 'SECURITY_TYPE', '8', '', 'NO', 'varchar', '7', '21', null, null, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'ITEM_ID', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(20)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'ITEM_TITLE', '2', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'ITEM_CONTENT', '3', null, 'YES', 'text', '65535', '65535', null, null, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'AUTHOR', '4', null, 'NO', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'COMPOSE_DATE', '5', null, 'NO', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'MODIFY_DATE', '6', null, 'YES', 'varchar', '100', '300', null, null, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'IS_ORIGIONAL', '7', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(1)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'FATHERS_ID', '8', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(10)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'REPLYED_TIMES', '9', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(1)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'BROWSED_TIMES', '10', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(1)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'LATEST_REPLICATION_ID', '11', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(10)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'bbsitems', 'FACE', '12', null, 'NO', 'tinyint', null, null, '3', '0', null, null, 'tinyint(2)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(20)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'username', '2', null, 'NO', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'userpwd', '3', null, 'NO', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'total', '4', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(100)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'categoryid', '5', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(100)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'loginnum', '6', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(100)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'master', 'registertime', '7', null, 'NO', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'news', 'id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(20)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'news', 'title', '2', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'news', 'content', '3', null, 'NO', 'text', '65535', '65535', null, null, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'news', 'create_date', '4', null, 'NO', 'date', null, null, null, null, null, null, 'date', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'news', 'type', '5', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'userinfo', 'userName', '1', '', 'NO', 'varchar', '12', '36', null, null, 'utf8', 'utf8_general_ci', 'varchar(12)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'userinfo', 'passWord', '2', null, 'YES', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'userinfo', 'gender', '3', null, 'YES', 'bit', null, null, '20', null, null, null, 'bit(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'cms', 'userinfo', 'email', '4', null, 'YES', 'varchar', '30', '90', null, null, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'cms_content', 'id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(20)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'cms_content', 'title', '2', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'cms_content', 'content', '3', null, 'NO', 'text', '65535', '65535', null, null, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'cms_content', 'create_date', '4', null, 'NO', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'userinfo', 'id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(20)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'userinfo', 'userName', '2', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'conn', 'userinfo', 'passWord', '3', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'adminuser', 'uid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'adminuser', 'username', '2', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'adminuser', 'password', '3', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'category', 'cid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'category', 'cname', '2', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'categorysecond', 'csid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'categorysecond', 'csname', '2', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'categorysecond', 'cid', '3', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'Host', '1', '', 'NO', 'char', '60', '180', null, null, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'Db', '2', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'User', '3', '', 'NO', 'char', '16', '48', null, null, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'Table_name', '4', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'Column_name', '5', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'Timestamp', '6', 'CURRENT_TIMESTAMP', 'NO', 'timestamp', null, null, null, null, null, null, 'timestamp', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'columns_priv', 'Column_priv', '7', '', 'NO', 'set', '31', '93', null, null, 'utf8', 'utf8_general_ci', 'set(\'Select\',\'Insert\',\'Update\',\'References\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Host', '1', '', 'NO', 'char', '60', '180', null, null, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Db', '2', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'User', '3', '', 'NO', 'char', '16', '48', null, null, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Select_priv', '4', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Insert_priv', '5', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Update_priv', '6', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Delete_priv', '7', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Create_priv', '8', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Drop_priv', '9', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Grant_priv', '10', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'References_priv', '11', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Index_priv', '12', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Alter_priv', '13', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Create_tmp_table_priv', '14', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Lock_tables_priv', '15', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Create_view_priv', '16', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Show_view_priv', '17', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Create_routine_priv', '18', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Alter_routine_priv', '19', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'db', 'Execute_priv', '20', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'func', 'name', '1', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'func', 'ret', '2', '0', 'NO', 'tinyint', null, null, '3', '0', null, null, 'tinyint(1)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'func', 'dl', '3', '', 'NO', 'char', '128', '384', null, null, 'utf8', 'utf8_bin', 'char(128)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'func', 'type', '4', null, 'NO', 'enum', '9', '27', null, null, 'utf8', 'utf8_general_ci', 'enum(\'function\',\'aggregate\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_category', 'help_category_id', '1', null, 'NO', 'smallint', null, null, '5', '0', null, null, 'smallint(5) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_category', 'name', '2', null, 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_category', 'parent_category_id', '3', null, 'YES', 'smallint', null, null, '5', '0', null, null, 'smallint(5) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_category', 'url', '4', null, 'NO', 'char', '128', '384', null, null, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_keyword', 'help_keyword_id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_keyword', 'name', '2', null, 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_relation', 'help_topic_id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_relation', 'help_keyword_id', '2', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_topic', 'help_topic_id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_topic', 'name', '2', null, 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_topic', 'help_category_id', '3', null, 'NO', 'smallint', null, null, '5', '0', null, null, 'smallint(5) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_topic', 'description', '4', null, 'NO', 'text', '65535', '65535', null, null, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_topic', 'example', '5', null, 'NO', 'text', '65535', '65535', null, null, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'help_topic', 'url', '6', null, 'NO', 'char', '128', '384', null, null, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Host', '1', '', 'NO', 'char', '60', '180', null, null, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Db', '2', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Select_priv', '3', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Insert_priv', '4', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Update_priv', '5', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Delete_priv', '6', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Create_priv', '7', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Drop_priv', '8', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Grant_priv', '9', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'References_priv', '10', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Index_priv', '11', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Alter_priv', '12', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Create_tmp_table_priv', '13', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Lock_tables_priv', '14', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Create_view_priv', '15', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Show_view_priv', '16', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Create_routine_priv', '17', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Alter_routine_priv', '18', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'host', 'Execute_priv', '19', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orderitem', 'itemid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orderitem', 'count', '2', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orderitem', 'subtotal', '3', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orderitem', 'pid', '4', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orderitem', 'oid', '5', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'oid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'total', '2', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'ordertime', '3', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'state', '4', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'name', '5', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'phone', '6', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'addr', '7', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'orders', 'uid', '8', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'db', '1', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'name', '2', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'type', '3', null, 'NO', 'enum', '9', '27', null, null, 'utf8', 'utf8_general_ci', 'enum(\'FUNCTION\',\'PROCEDURE\')', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'specific_name', '4', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'language', '5', 'SQL', 'NO', 'enum', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'enum(\'SQL\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'sql_data_access', '6', 'CONTAINS_SQL', 'NO', 'enum', '17', '51', null, null, 'utf8', 'utf8_general_ci', 'enum(\'CONTAINS_SQL\',\'NO_SQL\',\'READS_SQL_DATA\',\'MODIFIES_SQL_DATA\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'is_deterministic', '7', 'NO', 'NO', 'enum', '3', '9', null, null, 'utf8', 'utf8_general_ci', 'enum(\'YES\',\'NO\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'security_type', '8', 'DEFINER', 'NO', 'enum', '7', '21', null, null, 'utf8', 'utf8_general_ci', 'enum(\'INVOKER\',\'DEFINER\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'param_list', '9', null, 'NO', 'blob', '65535', '65535', null, null, null, null, 'blob', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'returns', '10', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'body', '11', null, 'NO', 'longblob', '4294967295', '4294967295', null, null, null, null, 'longblob', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'definer', '12', '', 'NO', 'char', '77', '231', null, null, 'utf8', 'utf8_bin', 'char(77)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'created', '13', 'CURRENT_TIMESTAMP', 'NO', 'timestamp', null, null, null, null, null, null, 'timestamp', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'modified', '14', '0000-00-00 00:00:00', 'NO', 'timestamp', null, null, null, null, null, null, 'timestamp', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'sql_mode', '15', '', 'NO', 'set', '431', '1293', null, null, 'utf8', 'utf8_general_ci', 'set(\'REAL_AS_FLOAT\',\'PIPES_AS_CONCAT\',\'ANSI_QUOTES\',\'IGNORE_SPACE\',\'NOT_USED\',\'ONLY_FULL_GROUP_BY\',\'NO_UNSIGNED_SUBTRACTION\',\'NO_DIR_IN_CREATE\',\'POSTGRESQL\',\'ORACLE\',\'MSSQL\',\'DB2\',\'MAXDB\',\'NO_KEY_OPTIONS\',\'NO_TABLE_OPTIONS\',\'NO_FIELD_OPTIONS\',\'MYSQL323\',\'MYSQL40\',\'ANSI\',\'NO_AUTO_VALUE_ON_ZERO\',\'NO_BACKSLASH_ESCAPES\',\'STRICT_TRANS_TABLES\',\'STRICT_ALL_TABLES\',\'NO_ZERO_IN_DATE\',\'NO_ZERO_DATE\',\'INVALID_DATES\',\'ERROR_FOR_DIVISION_BY_ZERO\',\'TRADITIONAL\',\'NO_AUTO_CREATE_USER\',\'HIGH_NOT_PRECEDENCE\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'proc', 'comment', '16', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Host', '1', '', 'NO', 'char', '60', '180', null, null, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Db', '2', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'User', '3', '', 'NO', 'char', '16', '48', null, null, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Routine_name', '4', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Routine_type', '5', null, 'NO', 'enum', '9', '27', null, null, 'utf8', 'utf8_bin', 'enum(\'FUNCTION\',\'PROCEDURE\')', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Grantor', '6', '', 'NO', 'char', '77', '231', null, null, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Proc_priv', '7', '', 'NO', 'set', '27', '81', null, null, 'utf8', 'utf8_general_ci', 'set(\'Execute\',\'Alter Routine\',\'Grant\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'procs_priv', 'Timestamp', '8', 'CURRENT_TIMESTAMP', 'NO', 'timestamp', null, null, null, null, null, null, 'timestamp', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'pid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'pname', '2', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'market_price', '3', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'shop_price', '4', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'image', '5', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'pdesc', '6', null, 'YES', 'varchar', '255', '255', null, null, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'is_hot', '7', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'pdate', '8', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'product', 'csid', '9', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Host', '1', '', 'NO', 'char', '60', '180', null, null, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Db', '2', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'User', '3', '', 'NO', 'char', '16', '48', null, null, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Table_name', '4', '', 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Grantor', '5', '', 'NO', 'char', '77', '231', null, null, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Timestamp', '6', 'CURRENT_TIMESTAMP', 'NO', 'timestamp', null, null, null, null, null, null, 'timestamp', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Table_priv', '7', '', 'NO', 'set', '90', '270', null, null, 'utf8', 'utf8_general_ci', 'set(\'Select\',\'Insert\',\'Update\',\'Delete\',\'Create\',\'Drop\',\'Grant\',\'References\',\'Index\',\'Alter\',\'Create View\',\'Show view\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'tables_priv', 'Column_priv', '8', '', 'NO', 'set', '31', '93', null, null, 'utf8', 'utf8_general_ci', 'set(\'Select\',\'Insert\',\'Update\',\'References\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone', 'Time_zone_id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone', 'Use_leap_seconds', '2', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'Y\',\'N\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_leap_second', 'Transition_time', '1', null, 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_leap_second', 'Correction', '2', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_name', 'Name', '1', null, 'NO', 'char', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_name', 'Time_zone_id', '2', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition', 'Time_zone_id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition', 'Transition_time', '2', null, 'NO', 'bigint', null, null, '19', '0', null, null, 'bigint(20)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition', 'Transition_type_id', '3', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition_type', 'Time_zone_id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition_type', 'Transition_type_id', '2', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition_type', 'Offset', '3', '0', 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition_type', 'Is_DST', '4', '0', 'NO', 'tinyint', null, null, '3', '0', null, null, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'time_zone_transition_type', 'Abbreviation', '5', '', 'NO', 'char', '8', '24', null, null, 'utf8', 'utf8_general_ci', 'char(8)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Host', '1', '', 'NO', 'char', '60', '180', null, null, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'User', '2', '', 'NO', 'char', '16', '48', null, null, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Password', '3', '', 'NO', 'char', '41', '41', null, null, 'latin1', 'latin1_bin', 'char(41)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Select_priv', '4', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Insert_priv', '5', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Update_priv', '6', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Delete_priv', '7', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Create_priv', '8', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Drop_priv', '9', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Reload_priv', '10', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Shutdown_priv', '11', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Process_priv', '12', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'File_priv', '13', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Grant_priv', '14', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'References_priv', '15', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Index_priv', '16', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Alter_priv', '17', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Show_db_priv', '18', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Super_priv', '19', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Create_tmp_table_priv', '20', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Lock_tables_priv', '21', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Execute_priv', '22', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Repl_slave_priv', '23', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Repl_client_priv', '24', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Create_view_priv', '25', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Show_view_priv', '26', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Create_routine_priv', '27', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Alter_routine_priv', '28', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'Create_user_priv', '29', 'N', 'NO', 'enum', '1', '3', null, null, 'utf8', 'utf8_general_ci', 'enum(\'N\',\'Y\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'ssl_type', '30', '', 'NO', 'enum', '9', '27', null, null, 'utf8', 'utf8_general_ci', 'enum(\'\',\'ANY\',\'X509\',\'SPECIFIED\')', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'ssl_cipher', '31', null, 'NO', 'blob', '65535', '65535', null, null, null, null, 'blob', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'x509_issuer', '32', null, 'NO', 'blob', '65535', '65535', null, null, null, null, 'blob', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'x509_subject', '33', null, 'NO', 'blob', '65535', '65535', null, null, null, null, 'blob', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'max_questions', '34', '0', 'NO', 'int', null, null, '10', '0', null, null, 'int(11) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'max_updates', '35', '0', 'NO', 'int', null, null, '10', '0', null, null, 'int(11) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'max_connections', '36', '0', 'NO', 'int', null, null, '10', '0', null, null, 'int(11) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'max_user_connections', '37', '0', 'NO', 'int', null, null, '10', '0', null, null, 'int(11) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'uid', '38', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'username', '39', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'name', '40', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'email', '41', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'phone', '42', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'addr', '43', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'state', '44', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'mysql', 'user', 'code', '45', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'news', 'news', 'id', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(10)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'news', 'news', 'title', '2', null, 'NO', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '新闻名称');
INSERT INTO `COLUMNS` VALUES (null, 'news', 'news', 'content', '3', null, 'NO', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '内容');
INSERT INTO `COLUMNS` VALUES (null, 'news', 'news', 'time', '4', null, 'NO', 'date', null, null, null, null, null, null, 'date', '', '', 'select,insert,update,references', '发布时间');
INSERT INTO `COLUMNS` VALUES (null, 'news', 'news', 'person', '5', null, 'NO', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '发布人');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'adminuser', 'uid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'adminuser', 'username', '2', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'adminuser', 'password', '3', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'category', 'cid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'category', 'cname', '2', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'categorysecond', 'csid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'categorysecond', 'csname', '2', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'categorysecond', 'cid', '3', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orderitem', 'itemid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orderitem', 'count', '2', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orderitem', 'subtotal', '3', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orderitem', 'pid', '4', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orderitem', 'oid', '5', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'oid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'total', '2', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'ordertime', '3', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'state', '4', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'name', '5', null, 'YES', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'phone', '6', null, 'YES', 'varchar', '20', '60', null, null, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'addr', '7', null, 'YES', 'varchar', '50', '150', null, null, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'orders', 'uid', '8', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'pid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'pname', '2', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'market_price', '3', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'shop_price', '4', null, 'YES', 'double', null, null, '22', null, null, null, 'double', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'image', '5', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'pdesc', '6', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'is_hot', '7', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'pdate', '8', null, 'YES', 'datetime', null, null, null, null, null, null, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'product', 'csid', '9', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'uid', '1', null, 'NO', 'int', null, null, '10', '0', null, null, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'username', '2', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'password', '3', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'name', '4', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'email', '5', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'phone', '6', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'addr', '7', null, 'YES', 'varchar', '255', '765', null, null, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'state', '8', null, 'YES', 'int', null, null, '10', '0', null, null, 'int(11)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` VALUES (null, 'test', 'user', 'code', '9', null, 'YES', 'varchar', '64', '192', null, null, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', '');

-- ----------------------------
-- Table structure for COLUMN_PRIVILEGES
-- ----------------------------
DROP TABLE IF EXISTS `COLUMN_PRIVILEGES`;
CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COLUMN_PRIVILEGES
-- ----------------------------

-- ----------------------------
-- Table structure for KEY_COLUMN_USAGE
-- ----------------------------
DROP TABLE IF EXISTS `KEY_COLUMN_USAGE`;
CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of KEY_COLUMN_USAGE
-- ----------------------------
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'cms', 'PRIMARY', null, 'cms', 'bbsitems', 'ITEM_ID', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'cms', 'PRIMARY', null, 'cms', 'master', 'id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'cms', 'PRIMARY', null, 'cms', 'news', 'id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'cms', 'PRIMARY', null, 'cms', 'userinfo', 'userName', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'conn', 'PRIMARY', null, 'conn', 'cms_content', 'id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'conn', 'PRIMARY', null, 'conn', 'userinfo', 'id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'adminuser', 'uid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'category', 'cid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'categorysecond', 'csid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'FK936FCAF27631B398', null, 'mysql', 'categorysecond', 'cid', '1', '1', 'mysql', 'category', 'cid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'columns_priv', 'Host', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'columns_priv', 'Db', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'columns_priv', 'User', '3', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'columns_priv', 'Table_name', '4', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'columns_priv', 'Column_name', '5', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'db', 'Host', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'db', 'Db', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'db', 'User', '3', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'func', 'name', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'help_category', 'help_category_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'name', null, 'mysql', 'help_category', 'name', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'help_keyword', 'help_keyword_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'name', null, 'mysql', 'help_keyword', 'name', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'help_relation', 'help_keyword_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'help_relation', 'help_topic_id', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'help_topic', 'help_topic_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'name', null, 'mysql', 'help_topic', 'name', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'host', 'Host', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'host', 'Db', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'orderitem', 'itemid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'FKE8B2AB6140ACF87A', null, 'mysql', 'orderitem', 'oid', '1', '1', 'mysql', 'orders', 'oid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'FKE8B2AB61EE85435B', null, 'mysql', 'orderitem', 'pid', '1', '1', 'mysql', 'product', 'pid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'orders', 'oid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'proc', 'db', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'proc', 'name', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'proc', 'type', '3', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'procs_priv', 'Host', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'procs_priv', 'Db', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'procs_priv', 'User', '3', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'procs_priv', 'Routine_name', '4', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'procs_priv', 'Routine_type', '5', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'product', 'pid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'FKED8DCCEF3DBE112D', null, 'mysql', 'product', 'csid', '1', '1', 'mysql', 'categorysecond', 'csid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'tables_priv', 'Host', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'tables_priv', 'Db', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'tables_priv', 'User', '3', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'tables_priv', 'Table_name', '4', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone', 'Time_zone_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone_leap_second', 'Transition_time', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone_name', 'Name', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone_transition', 'Time_zone_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone_transition', 'Transition_time', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone_transition_type', 'Time_zone_id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'time_zone_transition_type', 'Transition_type_id', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'user', 'Host', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'mysql', 'PRIMARY', null, 'mysql', 'user', 'User', '2', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'news', 'PRIMARY', null, 'news', 'news', 'id', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'adminuser', 'uid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'category', 'cid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'categorysecond', 'csid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'FK936FCAF21DB1FD15', null, 'test', 'categorysecond', 'cid', '1', '1', 'test', 'category', 'cid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'orderitem', 'itemid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'FKE8B2AB6140ACF87A', null, 'test', 'orderitem', 'oid', '1', '1', 'test', 'orders', 'oid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'FKE8B2AB6171DB7AE4', null, 'test', 'orderitem', 'pid', '1', '1', 'test', 'product', 'pid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'orders', 'oid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'FKC3DF62E5AA3D9C7', null, 'test', 'orders', 'uid', '1', '1', 'test', 'user', 'uid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'product', 'pid', '1', null, null, null, null);
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'FKED8DCCEFB9B74E02', null, 'test', 'product', 'csid', '1', '1', 'test', 'categorysecond', 'csid');
INSERT INTO `KEY_COLUMN_USAGE` VALUES (null, 'test', 'PRIMARY', null, 'test', 'user', 'uid', '1', null, null, null, null);

-- ----------------------------
-- Table structure for PROFILING
-- ----------------------------
DROP TABLE IF EXISTS `PROFILING`;
CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` decimal(9,6) NOT NULL default '0.000000',
  `CPU_USER` decimal(9,6) default NULL,
  `CPU_SYSTEM` decimal(9,6) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PROFILING
-- ----------------------------

-- ----------------------------
-- Table structure for ROUTINES
-- ----------------------------
DROP TABLE IF EXISTS `ROUTINES`;
CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ROUTINES
-- ----------------------------

-- ----------------------------
-- Table structure for SCHEMATA
-- ----------------------------
DROP TABLE IF EXISTS `SCHEMATA`;
CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SCHEMATA
-- ----------------------------
INSERT INTO `SCHEMATA` VALUES (null, 'information_schema', 'utf8', 'utf8_general_ci', null);
INSERT INTO `SCHEMATA` VALUES (null, 'cms', 'utf8', 'utf8_general_ci', null);
INSERT INTO `SCHEMATA` VALUES (null, 'conn', 'utf8', 'utf8_general_ci', null);
INSERT INTO `SCHEMATA` VALUES (null, 'mysql', 'latin1', 'latin1_swedish_ci', null);
INSERT INTO `SCHEMATA` VALUES (null, 'news', 'utf8', 'utf8_general_ci', null);
INSERT INTO `SCHEMATA` VALUES (null, 'test', 'latin1', 'latin1_swedish_ci', null);

-- ----------------------------
-- Table structure for SCHEMA_PRIVILEGES
-- ----------------------------
DROP TABLE IF EXISTS `SCHEMA_PRIVILEGES`;
CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SCHEMA_PRIVILEGES
-- ----------------------------

-- ----------------------------
-- Table structure for STATISTICS
-- ----------------------------
DROP TABLE IF EXISTS `STATISTICS`;
CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of STATISTICS
-- ----------------------------
INSERT INTO `STATISTICS` VALUES (null, 'cms', 'bbsitems', '0', 'cms', 'PRIMARY', '1', 'ITEM_ID', 'A', '24', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'cms', 'master', '0', 'cms', 'PRIMARY', '1', 'id', 'A', '2', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'cms', 'news', '0', 'cms', 'PRIMARY', '1', 'id', 'A', '41', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'cms', 'userinfo', '0', 'cms', 'PRIMARY', '1', 'userName', 'A', '6', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'conn', 'cms_content', '0', 'conn', 'PRIMARY', '1', 'id', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'conn', 'userinfo', '0', 'conn', 'PRIMARY', '1', 'id', 'A', '2', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'adminuser', '0', 'mysql', 'PRIMARY', '1', 'uid', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'category', '0', 'mysql', 'PRIMARY', '1', 'cid', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'categorysecond', '0', 'mysql', 'PRIMARY', '1', 'csid', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'categorysecond', '1', 'mysql', 'FK936FCAF27631B398', '1', 'cid', 'A', '0', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'columns_priv', '0', 'mysql', 'PRIMARY', '1', 'Host', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'columns_priv', '0', 'mysql', 'PRIMARY', '2', 'Db', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'columns_priv', '0', 'mysql', 'PRIMARY', '3', 'User', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'columns_priv', '0', 'mysql', 'PRIMARY', '4', 'Table_name', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'columns_priv', '0', 'mysql', 'PRIMARY', '5', 'Column_name', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'db', '0', 'mysql', 'PRIMARY', '1', 'Host', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'db', '0', 'mysql', 'PRIMARY', '2', 'Db', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'db', '0', 'mysql', 'PRIMARY', '3', 'User', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'db', '1', 'mysql', 'User', '1', 'User', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'func', '0', 'mysql', 'PRIMARY', '1', 'name', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_category', '0', 'mysql', 'PRIMARY', '1', 'help_category_id', 'A', '37', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_category', '0', 'mysql', 'name', '1', 'name', 'A', '37', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_keyword', '0', 'mysql', 'PRIMARY', '1', 'help_keyword_id', 'A', '404', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_keyword', '0', 'mysql', 'name', '1', 'name', 'A', '404', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_relation', '0', 'mysql', 'PRIMARY', '1', 'help_keyword_id', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_relation', '0', 'mysql', 'PRIMARY', '2', 'help_topic_id', 'A', '848', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_topic', '0', 'mysql', 'PRIMARY', '1', 'help_topic_id', 'A', '487', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'help_topic', '0', 'mysql', 'name', '1', 'name', 'A', '487', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'host', '0', 'mysql', 'PRIMARY', '1', 'Host', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'host', '0', 'mysql', 'PRIMARY', '2', 'Db', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'orderitem', '0', 'mysql', 'PRIMARY', '1', 'itemid', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'orderitem', '1', 'mysql', 'FKE8B2AB6140ACF87A', '1', 'oid', 'A', '0', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'orderitem', '1', 'mysql', 'FKE8B2AB61EE85435B', '1', 'pid', 'A', '0', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'orders', '0', 'mysql', 'PRIMARY', '1', 'oid', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'proc', '0', 'mysql', 'PRIMARY', '1', 'db', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'proc', '0', 'mysql', 'PRIMARY', '2', 'name', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'proc', '0', 'mysql', 'PRIMARY', '3', 'type', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'procs_priv', '0', 'mysql', 'PRIMARY', '1', 'Host', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'procs_priv', '0', 'mysql', 'PRIMARY', '2', 'Db', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'procs_priv', '0', 'mysql', 'PRIMARY', '3', 'User', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'procs_priv', '0', 'mysql', 'PRIMARY', '4', 'Routine_name', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'procs_priv', '0', 'mysql', 'PRIMARY', '5', 'Routine_type', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'procs_priv', '1', 'mysql', 'Grantor', '1', 'Grantor', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'product', '0', 'mysql', 'PRIMARY', '1', 'pid', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'product', '1', 'mysql', 'FKED8DCCEF3DBE112D', '1', 'csid', 'A', '0', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'tables_priv', '0', 'mysql', 'PRIMARY', '1', 'Host', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'tables_priv', '0', 'mysql', 'PRIMARY', '2', 'Db', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'tables_priv', '0', 'mysql', 'PRIMARY', '3', 'User', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'tables_priv', '0', 'mysql', 'PRIMARY', '4', 'Table_name', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'tables_priv', '1', 'mysql', 'Grantor', '1', 'Grantor', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone', '0', 'mysql', 'PRIMARY', '1', 'Time_zone_id', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone_leap_second', '0', 'mysql', 'PRIMARY', '1', 'Transition_time', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone_name', '0', 'mysql', 'PRIMARY', '1', 'Name', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone_transition', '0', 'mysql', 'PRIMARY', '1', 'Time_zone_id', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone_transition', '0', 'mysql', 'PRIMARY', '2', 'Transition_time', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone_transition_type', '0', 'mysql', 'PRIMARY', '1', 'Time_zone_id', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'time_zone_transition_type', '0', 'mysql', 'PRIMARY', '2', 'Transition_type_id', 'A', '0', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'user', '0', 'mysql', 'PRIMARY', '1', 'Host', 'A', null, null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'mysql', 'user', '0', 'mysql', 'PRIMARY', '2', 'User', 'A', '1', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'news', 'news', '0', 'news', 'PRIMARY', '1', 'id', 'A', '4', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'adminuser', '0', 'test', 'PRIMARY', '1', 'uid', 'A', '1', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'category', '0', 'test', 'PRIMARY', '1', 'cid', 'A', '8', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'categorysecond', '0', 'test', 'PRIMARY', '1', 'csid', 'A', '36', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'categorysecond', '1', 'test', 'FK936FCAF21DB1FD15', '1', 'cid', 'A', '18', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'orderitem', '0', 'test', 'PRIMARY', '1', 'itemid', 'A', '17', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'orderitem', '1', 'test', 'FKE8B2AB6166C01961', '1', 'oid', 'A', '17', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'orderitem', '1', 'test', 'FKE8B2AB6171DB7AE4', '1', 'pid', 'A', '17', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'orderitem', '1', 'test', 'FKE8B2AB6140ACF87A', '1', 'oid', 'A', '17', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'orders', '0', 'test', 'PRIMARY', '1', 'oid', 'A', '13', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'orders', '1', 'test', 'FKC3DF62E5AA3D9C7', '1', 'uid', 'A', '4', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'product', '0', 'test', 'PRIMARY', '1', 'pid', 'A', '61', null, null, '', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'product', '1', 'test', 'FKED8DCCEFB9B74E02', '1', 'csid', 'A', '20', null, null, 'YES', 'BTREE', '');
INSERT INTO `STATISTICS` VALUES (null, 'test', 'user', '0', 'test', 'PRIMARY', '1', 'uid', 'A', '4', null, null, '', 'BTREE', '');

-- ----------------------------
-- Table structure for TABLES
-- ----------------------------
DROP TABLE IF EXISTS `TABLES`;
CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TABLES
-- ----------------------------
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '576', '0', '16547328', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=29127', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '423', '0', '16737264', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=39662', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '387', '0', '16563213', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=43351', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', '0', 'Dynamic', null, '0', '0', '281474976710655', '1024', '0', null, '2016-12-24 21:12:17', '2016-12-24 21:12:17', null, 'utf8_general_ci', null, 'max_rows=9260', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '2565', '0', '16757145', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=6540', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '4637', '0', '16762755', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=3618', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '356', '0', '16590668', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=47127', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', '0', 'Dynamic', null, '0', '0', '281474976710655', '1024', '0', null, '2016-12-24 21:12:17', '2016-12-24 21:12:17', null, 'utf8_general_ci', null, 'max_rows=9746', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '3656', '0', '16737168', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=4588', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '2179', '0', '16736899', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=7699', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '2679', '0', '16770540', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=6262', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '3641', '0', '16744959', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=4607', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '2504', '0', '16721712', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=6700', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '2372', '0', '16748692', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=7073', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', '0', 'Dynamic', null, '0', '0', '281474976710655', '1024', '0', null, '2016-12-24 21:12:17', '2016-12-24 21:12:17', null, 'utf8_general_ci', null, 'max_rows=8130', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', '0', 'Fixed', null, '1986', '0', '16726092', '0', '0', null, null, null, null, 'utf8_general_ci', null, 'max_rows=8447', '');
INSERT INTO `TABLES` VALUES (null, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', '0', 'Dynamic', null, '0', '0', '281474976710655', '1024', '0', null, '2016-12-24 21:12:17', '2016-12-24 21:12:17', null, 'utf8_general_ci', null, 'max_rows=16015', '');
INSERT INTO `TABLES` VALUES (null, 'cms', 'bbsitems', 'BASE TABLE', 'InnoDB', '10', 'Compact', '24', '682', '16384', '0', '0', '0', '46', '2016-04-17 20:03:15', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'cms', 'master', 'BASE TABLE', 'InnoDB', '10', 'Compact', '2', '8192', '16384', '0', '0', '0', '9', '2016-04-17 11:14:20', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'cms', 'news', 'BASE TABLE', 'InnoDB', '10', 'Compact', '41', '1998', '81920', '0', '0', '0', '119', '2016-04-11 18:23:50', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'cms', 'userinfo', 'BASE TABLE', 'InnoDB', '10', 'Compact', '6', '2730', '16384', '0', '0', '0', null, '2016-04-12 01:34:19', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'conn', 'cms_content', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '0', '0', '1', '2015-12-25 19:32:55', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'conn', 'userinfo', 'BASE TABLE', 'InnoDB', '10', 'Compact', '2', '8192', '16384', '0', '0', '0', '3', '2015-12-25 19:33:05', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'adminuser', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '0', '0', '1', '2016-03-26 20:06:49', null, null, 'latin1_swedish_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'category', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '0', '0', '1', '2016-03-26 20:06:50', null, null, 'latin1_swedish_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'categorysecond', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '16384', '0', '1', '2016-03-26 20:06:51', null, null, 'latin1_swedish_ci', null, '', 'InnoDB free: 11264 kB; (`cid`) REFER `mysql/category`(`cid`)');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'columns_priv', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '227994731135631359', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_bin', null, '', 'Column privileges');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'db', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '876', '123286039799267327', '4096', '876', null, '2012-03-02 22:14:24', '2015-12-08 17:37:30', '2012-03-02 22:14:24', 'utf8_bin', null, '', 'Database privileges');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'func', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '162974011515469823', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_bin', null, '', 'User defined functions');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'help_category', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '37', '581', '21497', '163536961468891135', '3072', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'help categories');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'help_keyword', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '404', '197', '79588', '55450570411999231', '14336', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'help keywords');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'help_relation', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '848', '9', '7632', '2533274790395903', '15360', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'keyword-topic relation');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'help_topic', 'BASE TABLE', 'MyISAM', '10', 'Dynamic', '487', '802', '390608', '281474976710655', '17408', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'help topics');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'host', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '109775240917155839', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_bin', null, '', 'Host privileges;  Merged with database privileges');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'orderitem', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '32768', '0', '1', '2016-03-26 20:06:52', null, null, 'latin1_swedish_ci', null, '', 'InnoDB free: 11264 kB; (`oid`) REFER `mysql/orders`(`oid`); (`pid`) REFER `mysql');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'orders', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '0', '0', '1', '2016-03-26 20:06:50', null, null, 'latin1_swedish_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'proc', 'BASE TABLE', 'MyISAM', '10', 'Dynamic', '0', '0', '0', '281474976710655', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'Stored Procedures');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'procs_priv', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '239253730204057599', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_bin', null, '', 'Procedure privileges');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'product', 'BASE TABLE', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '16384', '0', '1', '2016-03-26 20:06:52', null, null, 'latin1_swedish_ci', null, '', 'InnoDB free: 11264 kB; (`csid`) REFER `mysql/categorysecond`(`csid`)');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'tables_priv', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '239535205180768255', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_bin', null, '', 'Table privileges');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'time_zone', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '1970324836974591', '1024', '0', '1', '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'Time zones');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'time_zone_leap_second', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '3659174697238527', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'Leap seconds information for time zones');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'time_zone_name', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '55450570411999231', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'Time zone names');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'time_zone_transition', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '4785074604081151', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'Time zone transitions');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'time_zone_transition_type', 'BASE TABLE', 'MyISAM', '10', 'Fixed', '0', '0', '0', '10696049115004927', '1024', '0', null, '2012-03-02 22:14:24', '2012-03-02 15:14:24', null, 'utf8_general_ci', null, '', 'Time zone transition types');
INSERT INTO `TABLES` VALUES (null, 'mysql', 'user', 'BASE TABLE', 'MyISAM', '10', 'Dynamic', '1', '96', '96', '281474976710655', '2048', '0', null, '2016-03-26 20:06:51', '2016-03-26 20:06:51', null, 'utf8_bin', null, '', 'Users and global privileges');
INSERT INTO `TABLES` VALUES (null, 'news', 'news', 'BASE TABLE', 'InnoDB', '10', 'Compact', '4', '4096', '16384', '0', '0', '0', '15', '2016-04-03 14:34:14', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'test', 'adminuser', 'BASE TABLE', 'InnoDB', '10', 'Compact', '1', '16384', '16384', '0', '0', '0', '3', '2016-03-12 12:56:31', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'test', 'category', 'BASE TABLE', 'InnoDB', '10', 'Compact', '8', '2048', '16384', '0', '0', '0', '11', '2016-03-12 12:56:32', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');
INSERT INTO `TABLES` VALUES (null, 'test', 'categorysecond', 'BASE TABLE', 'InnoDB', '10', 'Compact', '36', '455', '16384', '0', '16384', '0', '41', '2016-03-12 12:56:32', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB; (`cid`) REFER `test/category`(`cid`)');
INSERT INTO `TABLES` VALUES (null, 'test', 'orderitem', 'BASE TABLE', 'InnoDB', '10', 'Compact', '17', '963', '16384', '0', '49152', '0', '19', '2016-03-12 12:56:33', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB; (`oid`) REFER `test/orders`(`oid`); (`pid`) REFER `test/p');
INSERT INTO `TABLES` VALUES (null, 'test', 'orders', 'BASE TABLE', 'InnoDB', '10', 'Compact', '13', '1260', '16384', '0', '16384', '0', '9006', '2016-03-12 12:56:33', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB; (`uid`) REFER `test/user`(`uid`)');
INSERT INTO `TABLES` VALUES (null, 'test', 'product', 'BASE TABLE', 'InnoDB', '10', 'Compact', '61', '1074', '65536', '0', '16384', '0', '80', '2016-03-12 12:56:33', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB; (`csid`) REFER `test/categorysecond`(`csid`)');
INSERT INTO `TABLES` VALUES (null, 'test', 'user', 'BASE TABLE', 'InnoDB', '10', 'Compact', '4', '4096', '16384', '0', '0', '0', '11', '2016-03-12 12:56:34', null, null, 'utf8_general_ci', null, '', 'InnoDB free: 11264 kB');

-- ----------------------------
-- Table structure for TABLE_CONSTRAINTS
-- ----------------------------
DROP TABLE IF EXISTS `TABLE_CONSTRAINTS`;
CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TABLE_CONSTRAINTS
-- ----------------------------
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'cms', 'PRIMARY', 'cms', 'bbsitems', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'cms', 'PRIMARY', 'cms', 'master', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'cms', 'PRIMARY', 'cms', 'news', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'cms', 'PRIMARY', 'cms', 'userinfo', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'conn', 'PRIMARY', 'conn', 'cms_content', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'conn', 'PRIMARY', 'conn', 'userinfo', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'adminuser', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'category', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'categorysecond', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'FK936FCAF27631B398', 'mysql', 'categorysecond', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'columns_priv', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'db', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'func', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'help_category', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'name', 'mysql', 'help_category', 'UNIQUE');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'help_keyword', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'name', 'mysql', 'help_keyword', 'UNIQUE');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'help_relation', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'help_topic', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'name', 'mysql', 'help_topic', 'UNIQUE');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'host', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'orderitem', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'FKE8B2AB6140ACF87A', 'mysql', 'orderitem', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'FKE8B2AB61EE85435B', 'mysql', 'orderitem', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'orders', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'proc', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'procs_priv', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'product', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'FKED8DCCEF3DBE112D', 'mysql', 'product', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'tables_priv', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'time_zone', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'time_zone_leap_second', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'time_zone_name', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition_type', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'mysql', 'PRIMARY', 'mysql', 'user', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'news', 'PRIMARY', 'news', 'news', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'adminuser', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'category', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'categorysecond', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'FK936FCAF21DB1FD15', 'test', 'categorysecond', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'orderitem', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'FKE8B2AB6140ACF87A', 'test', 'orderitem', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'FKE8B2AB6171DB7AE4', 'test', 'orderitem', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'orders', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'FKC3DF62E5AA3D9C7', 'test', 'orders', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'product', 'PRIMARY KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'FKED8DCCEFB9B74E02', 'test', 'product', 'FOREIGN KEY');
INSERT INTO `TABLE_CONSTRAINTS` VALUES (null, 'test', 'PRIMARY', 'test', 'user', 'PRIMARY KEY');

-- ----------------------------
-- Table structure for TABLE_PRIVILEGES
-- ----------------------------
DROP TABLE IF EXISTS `TABLE_PRIVILEGES`;
CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TABLE_PRIVILEGES
-- ----------------------------

-- ----------------------------
-- Table structure for TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `TRIGGERS`;
CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for USER_PRIVILEGES
-- ----------------------------
DROP TABLE IF EXISTS `USER_PRIVILEGES`;
CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of USER_PRIVILEGES
-- ----------------------------
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'SELECT', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'INSERT', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'UPDATE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'DELETE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'CREATE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'DROP', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'RELOAD', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'SHUTDOWN', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'PROCESS', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'FILE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'REFERENCES', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'INDEX', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'ALTER', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'SHOW DATABASES', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'SUPER', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'CREATE TEMPORARY TABLES', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'LOCK TABLES', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'EXECUTE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'REPLICATION SLAVE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'REPLICATION CLIENT', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'CREATE VIEW', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'SHOW VIEW', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'CREATE ROUTINE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'ALTER ROUTINE', 'YES');
INSERT INTO `USER_PRIVILEGES` VALUES ('\'root\'@\'localhost\'', null, 'CREATE USER', 'YES');

-- ----------------------------
-- Table structure for VIEWS
-- ----------------------------
DROP TABLE IF EXISTS `VIEWS`;
CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of VIEWS
-- ----------------------------
