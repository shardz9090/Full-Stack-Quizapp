/*
 Navicat Premium Data Transfer

 Source Server         : quiz
 Source Server Type    : PostgreSQL
 Source Server Version : 150004 (150004)
 Source Host           : localhost:5432
 Source Catalog        : quiz
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150004 (150004)
 File Encoding         : 65001

 Date: 25/09/2023 12:05:17
*/


-- ----------------------------
-- Sequence structure for Untitled_iid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Untitled_iid_seq";
CREATE SEQUENCE "public"."Untitled_iid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for answers_aid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."answers_aid_seq";
CREATE SEQUENCE "public"."answers_aid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for leaderboard_lid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."leaderboard_lid_seq";
CREATE SEQUENCE "public"."leaderboard_lid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for powerpoints_pid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."powerpoints_pid_seq";
CREATE SEQUENCE "public"."powerpoints_pid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for quiz_questions_qid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."quiz_questions_qid_seq";
CREATE SEQUENCE "public"."quiz_questions_qid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_uid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_uid_seq";
CREATE SEQUENCE "public"."users_uid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for videos_vid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."videos_vid_seq";
CREATE SEQUENCE "public"."videos_vid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS "public"."answers";
CREATE TABLE "public"."answers" (
  "aid" int4 NOT NULL DEFAULT nextval('answers_aid_seq'::regclass),
  "qid" int4 NOT NULL,
  "answer" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_correct" varchar(11) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO "public"."answers" VALUES (1, 56, 'HTC', 'Y');
INSERT INTO "public"."answers" VALUES (2, 56, 'Oculus', 'N');
INSERT INTO "public"."answers" VALUES (3, 56, 'Google', 'N');
INSERT INTO "public"."answers" VALUES (4, 56, 'Razer', 'N');
INSERT INTO "public"."answers" VALUES (5, 57, 'Skin', 'Y');
INSERT INTO "public"."answers" VALUES (6, 57, 'Heart', 'N');
INSERT INTO "public"."answers" VALUES (7, 57, 'large Intestine', 'N');
INSERT INTO "public"."answers" VALUES (8, 57, 'Liver', 'N');
INSERT INTO "public"."answers" VALUES (9, 58, '19', 'Y');
INSERT INTO "public"."answers" VALUES (10, 58, '20', 'N');
INSERT INTO "public"."answers" VALUES (11, 58, '12', 'N');
INSERT INTO "public"."answers" VALUES (12, 58, '15', 'N');
INSERT INTO "public"."answers" VALUES (13, 59, 'Wax sculptures', 'Y');
INSERT INTO "public"."answers" VALUES (14, 59, 'Designer clothing', 'N');
INSERT INTO "public"."answers" VALUES (15, 59, 'Unreleased film reels', 'N');
INSERT INTO "public"."answers" VALUES (16, 59, 'Vintage cars', 'N');
INSERT INTO "public"."answers" VALUES (17, 60, 'Spruce Goose', 'Y');
INSERT INTO "public"."answers" VALUES (18, 60, 'Noah&#039;s Ark', 'N');
INSERT INTO "public"."answers" VALUES (19, 60, 'Fat Man', 'N');
INSERT INTO "public"."answers" VALUES (20, 60, 'Trojan Horse', 'N');
INSERT INTO "public"."answers" VALUES (21, 61, 'Benjamin Franklin', 'Y');
INSERT INTO "public"."answers" VALUES (22, 61, 'George Washington', 'N');
INSERT INTO "public"."answers" VALUES (23, 61, 'Abraham Lincoln', 'N');
INSERT INTO "public"."answers" VALUES (24, 61, 'Thomas Jefferson', 'N');
INSERT INTO "public"."answers" VALUES (25, 62, 'Metropolitan Line', 'Y');
INSERT INTO "public"."answers" VALUES (26, 62, 'Circle Line', 'N');
INSERT INTO "public"."answers" VALUES (27, 62, 'Bakerloo Line', 'N');
INSERT INTO "public"."answers" VALUES (28, 62, 'Victoria Line', 'N');
INSERT INTO "public"."answers" VALUES (29, 63, 'An Australian State', 'Y');
INSERT INTO "public"."answers" VALUES (30, 63, 'A flavor of Ben and Jerry&#039;s ice-cream', 'N');
INSERT INTO "public"."answers" VALUES (31, 63, 'A Psychological Disorder', 'N');
INSERT INTO "public"."answers" VALUES (32, 63, 'The Name of a Warner Brothers Cartoon Character', 'N');
INSERT INTO "public"."answers" VALUES (33, 64, 'Slacking', 'Y');
INSERT INTO "public"."answers" VALUES (34, 64, 'Smoking', 'N');
INSERT INTO "public"."answers" VALUES (35, 64, 'Stealing', 'N');
INSERT INTO "public"."answers" VALUES (36, 64, 'Cheating', 'N');
INSERT INTO "public"."answers" VALUES (37, 65, 'Straw', 'Y');
INSERT INTO "public"."answers" VALUES (38, 65, 'Silk', 'N');
INSERT INTO "public"."answers" VALUES (39, 65, 'Hemp', 'N');
INSERT INTO "public"."answers" VALUES (40, 65, 'Flax', 'N');
INSERT INTO "public"."answers" VALUES (41, 66, 'Medell&iacute;n', 'Y');
INSERT INTO "public"."answers" VALUES (42, 66, 'Bogot&aacute;', 'N');
INSERT INTO "public"."answers" VALUES (43, 66, 'Quito', 'N');
INSERT INTO "public"."answers" VALUES (44, 66, 'Cali', 'N');
INSERT INTO "public"."answers" VALUES (45, 67, 'poisson', 'Y');
INSERT INTO "public"."answers" VALUES (46, 67, 'fiche', 'N');
INSERT INTO "public"."answers" VALUES (47, 67, 'escargot', 'N');
INSERT INTO "public"."answers" VALUES (48, 67, 'mer', 'N');
INSERT INTO "public"."answers" VALUES (49, 68, 'Schnatter', 'Y');
INSERT INTO "public"."answers" VALUES (50, 68, 'Chowder', 'N');
INSERT INTO "public"."answers" VALUES (51, 68, 'Williams', 'N');
INSERT INTO "public"."answers" VALUES (52, 68, 'ANDERSON', 'N');
INSERT INTO "public"."answers" VALUES (53, 69, 'Joseph Fry', 'Y');
INSERT INTO "public"."answers" VALUES (54, 69, 'Andrew Johnson', 'N');
INSERT INTO "public"."answers" VALUES (55, 69, 'John Cadbury', 'N');
INSERT INTO "public"."answers" VALUES (56, 69, 'John Tyler', 'N');
INSERT INTO "public"."answers" VALUES (57, 70, 'Spider-Man 2', 'Y');
INSERT INTO "public"."answers" VALUES (58, 70, 'Silver Surfer', 'N');
INSERT INTO "public"."answers" VALUES (59, 70, 'Howard the Duck', 'N');
INSERT INTO "public"."answers" VALUES (60, 70, 'Wolverine: Adamantium Rage', 'N');
INSERT INTO "public"."answers" VALUES (61, 71, 'July 4, 1776', 'Y');
INSERT INTO "public"."answers" VALUES (62, 71, 'May 4, 1776', 'N');
INSERT INTO "public"."answers" VALUES (63, 71, 'June 4, 1776', 'N');
INSERT INTO "public"."answers" VALUES (64, 71, 'July 2, 1776', 'N');
INSERT INTO "public"."answers" VALUES (65, 72, 'A body pillow', 'Y');
INSERT INTO "public"."answers" VALUES (66, 72, 'A Chinese meal, essentially composed of fish', 'N');
INSERT INTO "public"."answers" VALUES (67, 72, 'A yoga posture', 'N');
INSERT INTO "public"."answers" VALUES (68, 72, 'A word used to describe two people who truly love each other', 'N');
INSERT INTO "public"."answers" VALUES (69, 73, '$12.7 Billion', 'Y');
INSERT INTO "public"."answers" VALUES (70, 73, '$95 Million', 'N');
INSERT INTO "public"."answers" VALUES (71, 73, '$956 Million', 'N');
INSERT INTO "public"."answers" VALUES (72, 73, '$2.7 Billion', 'N');
INSERT INTO "public"."answers" VALUES (73, 74, 'Tandoori', 'Y');
INSERT INTO "public"."answers" VALUES (74, 74, 'Biryani', 'N');
INSERT INTO "public"."answers" VALUES (75, 74, 'Pani puri', 'N');
INSERT INTO "public"."answers" VALUES (76, 74, 'Tiki masala', 'N');
INSERT INTO "public"."answers" VALUES (77, 75, 'Big Mouth Billy Bass', 'Y');
INSERT INTO "public"."answers" VALUES (78, 75, 'Big Billy Bass', 'N');
INSERT INTO "public"."answers" VALUES (79, 75, 'Singing Fish', 'N');
INSERT INTO "public"."answers" VALUES (80, 75, 'Sardeen', 'N');
INSERT INTO "public"."answers" VALUES (81, 76, 'India', 'Y');
INSERT INTO "public"."answers" VALUES (82, 76, 'United States of America', 'N');
INSERT INTO "public"."answers" VALUES (83, 76, 'Soviet Union', 'N');
INSERT INTO "public"."answers" VALUES (84, 76, 'Poland', 'N');
INSERT INTO "public"."answers" VALUES (85, 77, 'Ampersand', 'Y');
INSERT INTO "public"."answers" VALUES (86, 77, 'Interrobang', 'N');
INSERT INTO "public"."answers" VALUES (87, 77, 'Tilde', 'N');
INSERT INTO "public"."answers" VALUES (88, 77, 'Pilcrow', 'N');
INSERT INTO "public"."answers" VALUES (89, 78, 'Fruit Brute', 'Y');
INSERT INTO "public"."answers" VALUES (90, 78, 'Count Chocula', 'N');
INSERT INTO "public"."answers" VALUES (91, 78, 'Franken Berry', 'N');
INSERT INTO "public"."answers" VALUES (92, 78, 'Boo-Berry', 'N');
INSERT INTO "public"."answers" VALUES (93, 79, '1979', 'Y');
INSERT INTO "public"."answers" VALUES (94, 79, '1984', 'N');
INSERT INTO "public"."answers" VALUES (95, 79, '1972', 'N');
INSERT INTO "public"."answers" VALUES (96, 79, '1980', 'N');
INSERT INTO "public"."answers" VALUES (97, 80, 'Brasil', 'Y');
INSERT INTO "public"."answers" VALUES (98, 80, 'Brazil', 'N');
INSERT INTO "public"."answers" VALUES (99, 80, 'Brasilia', 'N');
INSERT INTO "public"."answers" VALUES (100, 80, 'Bras&iacute;l', 'N');
INSERT INTO "public"."answers" VALUES (101, 81, 'Maine, United States', 'Y');
INSERT INTO "public"."answers" VALUES (102, 81, 'Hesse, Germany', 'N');
INSERT INTO "public"."answers" VALUES (103, 81, 'Masovia, Poland', 'N');
INSERT INTO "public"."answers" VALUES (104, 81, 'Bavaria, Poland', 'N');
INSERT INTO "public"."answers" VALUES (105, 82, 'A flag', 'Y');
INSERT INTO "public"."answers" VALUES (106, 82, 'A rope', 'N');
INSERT INTO "public"."answers" VALUES (107, 82, 'A window', 'N');
INSERT INTO "public"."answers" VALUES (108, 82, 'A type of food', 'N');
INSERT INTO "public"."answers" VALUES (109, 83, 'Shogun', 'Y');
INSERT INTO "public"."answers" VALUES (110, 83, 'Ninja', 'N');
INSERT INTO "public"."answers" VALUES (111, 83, 'Samurai', 'N');
INSERT INTO "public"."answers" VALUES (112, 83, 'Shinobi', 'N');
INSERT INTO "public"."answers" VALUES (113, 84, 'Peace', 'Y');
INSERT INTO "public"."answers" VALUES (114, 84, 'Physics', 'N');
INSERT INTO "public"."answers" VALUES (115, 84, 'Economics', 'N');
INSERT INTO "public"."answers" VALUES (116, 84, 'Physiology/Medicine', 'N');
INSERT INTO "public"."answers" VALUES (117, 85, 'Snivy, Tepig, Oshawott', 'Y');
INSERT INTO "public"."answers" VALUES (118, 85, 'Snivy, Fennekin, Froakie', 'N');
INSERT INTO "public"."answers" VALUES (119, 85, 'Chespin, Tepig, Froakie', 'N');
INSERT INTO "public"."answers" VALUES (120, 85, 'Chespin, Fennekin, Oshawott', 'N');
INSERT INTO "public"."answers" VALUES (121, 86, 'Parlor', 'Y');
INSERT INTO "public"."answers" VALUES (122, 86, 'Open Room', 'N');
INSERT INTO "public"."answers" VALUES (123, 86, 'Sitting Room', 'N');
INSERT INTO "public"."answers" VALUES (124, 86, 'Loft', 'N');
INSERT INTO "public"."answers" VALUES (125, 87, 'Charlie Chaplin', 'Y');
INSERT INTO "public"."answers" VALUES (126, 87, 'Paul Newman', 'N');
INSERT INTO "public"."answers" VALUES (127, 87, 'Rowan Atkinson ', 'N');
INSERT INTO "public"."answers" VALUES (128, 87, 'Alfred Hitchcock', 'N');
INSERT INTO "public"."answers" VALUES (129, 88, 'Nicotine', 'Y');
INSERT INTO "public"."answers" VALUES (130, 88, 'Mescaline', 'N');
INSERT INTO "public"."answers" VALUES (131, 88, 'Cyanide', 'N');
INSERT INTO "public"."answers" VALUES (132, 88, 'Psilocybin', 'N');
INSERT INTO "public"."answers" VALUES (133, 89, 'Qamar', 'Y');
INSERT INTO "public"."answers" VALUES (134, 89, 'Najma', 'N');
INSERT INTO "public"."answers" VALUES (135, 89, 'Kawkab', 'N');
INSERT INTO "public"."answers" VALUES (136, 89, 'Shams', 'N');
INSERT INTO "public"."answers" VALUES (137, 90, '1 Month', 'Y');
INSERT INTO "public"."answers" VALUES (138, 90, '3 Weeks', 'N');
INSERT INTO "public"."answers" VALUES (139, 90, '1 Week', 'N');
INSERT INTO "public"."answers" VALUES (140, 90, '2 Months', 'N');
INSERT INTO "public"."answers" VALUES (141, 91, 'IKEA', 'Y');
INSERT INTO "public"."answers" VALUES (142, 91, 'H &amp; M', 'N');
INSERT INTO "public"."answers" VALUES (143, 91, 'Lindex', 'N');
INSERT INTO "public"."answers" VALUES (144, 91, 'Clas Ohlson', 'N');
INSERT INTO "public"."answers" VALUES (145, 92, '150', 'Y');
INSERT INTO "public"."answers" VALUES (146, 92, '200', 'N');
INSERT INTO "public"."answers" VALUES (147, 92, '100', 'N');
INSERT INTO "public"."answers" VALUES (148, 92, '155', 'N');
INSERT INTO "public"."answers" VALUES (149, 93, '2004', 'Y');
INSERT INTO "public"."answers" VALUES (150, 93, '2000', 'N');
INSERT INTO "public"."answers" VALUES (151, 93, '2001', 'N');
INSERT INTO "public"."answers" VALUES (152, 93, '2006', 'N');
INSERT INTO "public"."answers" VALUES (153, 94, 'Sal Khan', 'Y');
INSERT INTO "public"."answers" VALUES (154, 94, 'Ben Khan', 'N');
INSERT INTO "public"."answers" VALUES (155, 94, 'Kitt Khan', 'N');
INSERT INTO "public"."answers" VALUES (156, 94, 'Adel Khan', 'N');
INSERT INTO "public"."answers" VALUES (157, 95, 'Traffic Collision Avoidance System', 'Y');
INSERT INTO "public"."answers" VALUES (158, 95, 'Traffic Communication Alert System', 'N');
INSERT INTO "public"."answers" VALUES (159, 95, 'Traffic Configuration Alignment System', 'N');
INSERT INTO "public"."answers" VALUES (160, 95, 'Traffic Call-sign Abbreviation System', 'N');
INSERT INTO "public"."answers" VALUES (161, 96, 'Red', 'Y');
INSERT INTO "public"."answers" VALUES (162, 96, 'Green', 'N');
INSERT INTO "public"."answers" VALUES (163, 96, 'Blue', 'N');
INSERT INTO "public"."answers" VALUES (164, 96, 'Pink', 'N');
INSERT INTO "public"."answers" VALUES (165, 97, 'Finding shapes in clouds', 'Y');
INSERT INTO "public"."answers" VALUES (166, 97, 'Sleeping with your eyes open', 'N');
INSERT INTO "public"."answers" VALUES (167, 97, 'Breaking glass with your voice', 'N');
INSERT INTO "public"."answers" VALUES (168, 97, 'Swimming in freezing water', 'N');
INSERT INTO "public"."answers" VALUES (169, 98, 'A percussion instrument', 'Y');
INSERT INTO "public"."answers" VALUES (170, 98, 'A building in Oxford University', 'N');
INSERT INTO "public"."answers" VALUES (171, 98, 'A chess move', 'N');
INSERT INTO "public"."answers" VALUES (172, 98, 'A geometric theorem', 'N');
INSERT INTO "public"."answers" VALUES (173, 99, 'The inability to concentrate on anything', 'Y');
INSERT INTO "public"."answers" VALUES (174, 99, 'The inability to make decisions', 'N');
INSERT INTO "public"."answers" VALUES (175, 99, 'A feverish desire to rip one&#039;s clothes off', 'N');
INSERT INTO "public"."answers" VALUES (176, 99, 'The inability to stand up', 'N');
INSERT INTO "public"."answers" VALUES (177, 100, 'Edward VIII', 'Y');
INSERT INTO "public"."answers" VALUES (178, 100, 'Victoria', 'N');
INSERT INTO "public"."answers" VALUES (179, 100, 'George VI', 'N');
INSERT INTO "public"."answers" VALUES (180, 100, 'Charles II', 'N');
INSERT INTO "public"."answers" VALUES (181, 101, 'Tudor', 'Y');
INSERT INTO "public"."answers" VALUES (182, 101, 'York', 'N');
INSERT INTO "public"."answers" VALUES (183, 101, 'Stuart', 'N');
INSERT INTO "public"."answers" VALUES (184, 101, 'Lancaster', 'N');
INSERT INTO "public"."answers" VALUES (185, 102, 'Tog II', 'Y');
INSERT INTO "public"."answers" VALUES (186, 102, 'M4 Sherman', 'N');
INSERT INTO "public"."answers" VALUES (187, 102, 'Tiger H1', 'N');
INSERT INTO "public"."answers" VALUES (188, 102, 'T-34', 'N');
INSERT INTO "public"."answers" VALUES (189, 103, 'Nagasaki', 'Y');
INSERT INTO "public"."answers" VALUES (190, 103, 'Kawasaki', 'N');
INSERT INTO "public"."answers" VALUES (191, 103, 'Tokyo', 'N');
INSERT INTO "public"."answers" VALUES (192, 103, 'Kagoshima', 'N');
INSERT INTO "public"."answers" VALUES (193, 104, 'Illyrians', 'Y');
INSERT INTO "public"."answers" VALUES (194, 104, 'Dorians', 'N');
INSERT INTO "public"."answers" VALUES (195, 104, 'Achaeans', 'N');
INSERT INTO "public"."answers" VALUES (196, 104, 'Ionians', 'N');
INSERT INTO "public"."answers" VALUES (197, 105, 'Turkey', 'Y');
INSERT INTO "public"."answers" VALUES (198, 105, 'Syria', 'N');
INSERT INTO "public"."answers" VALUES (199, 105, 'Greece', 'N');
INSERT INTO "public"."answers" VALUES (200, 105, 'Egypt', 'N');
INSERT INTO "public"."answers" VALUES (201, 106, 'John Blunt', 'Y');
INSERT INTO "public"."answers" VALUES (202, 106, 'Daniel Defoe', 'N');
INSERT INTO "public"."answers" VALUES (203, 106, 'Robert Harley', 'N');
INSERT INTO "public"."answers" VALUES (204, 106, 'John Churchill', 'N');
INSERT INTO "public"."answers" VALUES (205, 107, '1914', 'Y');
INSERT INTO "public"."answers" VALUES (206, 107, '1905', 'N');
INSERT INTO "public"."answers" VALUES (207, 107, '1919', 'N');
INSERT INTO "public"."answers" VALUES (208, 107, '1925', 'N');
INSERT INTO "public"."answers" VALUES (209, 108, '56', 'Y');
INSERT INTO "public"."answers" VALUES (210, 108, '43', 'N');
INSERT INTO "public"."answers" VALUES (211, 108, '65', 'N');
INSERT INTO "public"."answers" VALUES (212, 108, '47', 'N');
INSERT INTO "public"."answers" VALUES (213, 109, 'Afghanistan', 'Y');
INSERT INTO "public"."answers" VALUES (214, 109, 'China', 'N');
INSERT INTO "public"."answers" VALUES (215, 109, 'Iraq', 'N');
INSERT INTO "public"."answers" VALUES (216, 109, 'Russia', 'N');
INSERT INTO "public"."answers" VALUES (217, 110, 'Constantinople', 'Y');
INSERT INTO "public"."answers" VALUES (218, 110, 'Rome', 'N');
INSERT INTO "public"."answers" VALUES (219, 110, 'Hamburg', 'N');
INSERT INTO "public"."answers" VALUES (220, 110, 'Athens', 'N');
INSERT INTO "public"."answers" VALUES (221, 111, 'Mormonism', 'Y');
INSERT INTO "public"."answers" VALUES (222, 111, 'Buddhism', 'N');
INSERT INTO "public"."answers" VALUES (223, 111, 'Christianity', 'N');
INSERT INTO "public"."answers" VALUES (224, 111, 'Hinduism', 'N');
INSERT INTO "public"."answers" VALUES (225, 112, 'Leif Erikson', 'Y');
INSERT INTO "public"."answers" VALUES (226, 112, 'Christopher Columbus', 'N');
INSERT INTO "public"."answers" VALUES (227, 112, 'Amerigo Vespucci', 'N');
INSERT INTO "public"."answers" VALUES (228, 112, 'Ferdinand Magellan', 'N');
INSERT INTO "public"."answers" VALUES (229, 113, 'Ukraine', 'Y');
INSERT INTO "public"."answers" VALUES (230, 113, 'Belarus', 'N');
INSERT INTO "public"."answers" VALUES (231, 113, 'Latvia', 'N');
INSERT INTO "public"."answers" VALUES (232, 113, 'Lithuania', 'N');
INSERT INTO "public"."answers" VALUES (233, 114, 'September 11, 1941', 'Y');
INSERT INTO "public"."answers" VALUES (234, 114, 'June 15, 1947', 'N');
INSERT INTO "public"."answers" VALUES (235, 114, 'January 15, 1943', 'N');
INSERT INTO "public"."answers" VALUES (236, 114, 'September 2, 1962', 'N');
INSERT INTO "public"."answers" VALUES (237, 115, 'England, 1817', 'Y');
INSERT INTO "public"."answers" VALUES (238, 115, 'United States, 1817', 'N');
INSERT INTO "public"."answers" VALUES (239, 115, 'England, 1917', 'N');
INSERT INTO "public"."answers" VALUES (240, 115, 'United States, 1917', 'N');
INSERT INTO "public"."answers" VALUES (241, 116, 'The White House', 'Y');
INSERT INTO "public"."answers" VALUES (242, 116, 'Parliament Building', 'N');
INSERT INTO "public"."answers" VALUES (243, 116, 'Grand National Assembly Building', 'N');
INSERT INTO "public"."answers" VALUES (244, 116, 'Palace of the Nation', 'N');
INSERT INTO "public"."answers" VALUES (245, 117, '1983', 'Y');
INSERT INTO "public"."answers" VALUES (246, 117, '1934', 'N');
INSERT INTO "public"."answers" VALUES (247, 117, '1984', 'N');
INSERT INTO "public"."answers" VALUES (248, 117, '1822', 'N');
INSERT INTO "public"."answers" VALUES (249, 118, '1950', 'Y');
INSERT INTO "public"."answers" VALUES (250, 118, '1945', 'N');
INSERT INTO "public"."answers" VALUES (251, 118, '1960', 'N');
INSERT INTO "public"."answers" VALUES (252, 118, '1912', 'N');
INSERT INTO "public"."answers" VALUES (253, 119, 'George H. W. Bush', 'Y');
INSERT INTO "public"."answers" VALUES (254, 119, 'Richard Nixon', 'N');
INSERT INTO "public"."answers" VALUES (255, 119, 'George W. Bush ', 'N');
INSERT INTO "public"."answers" VALUES (256, 119, 'Ronald Regan', 'N');
INSERT INTO "public"."answers" VALUES (257, 120, 'D-Day', 'Y');
INSERT INTO "public"."answers" VALUES (258, 120, 'Atomic bombings of Hiroshima and Nagasaki', 'N');
INSERT INTO "public"."answers" VALUES (259, 120, 'Attack on Pearl Harbor', 'N');
INSERT INTO "public"."answers" VALUES (260, 120, 'The Liberation of Paris', 'N');
INSERT INTO "public"."answers" VALUES (261, 121, 'Culper Ring', 'Y');
INSERT INTO "public"."answers" VALUES (262, 121, 'New York Spy Ring', 'N');
INSERT INTO "public"."answers" VALUES (263, 121, 'Washington&#039;s Spies', 'N');
INSERT INTO "public"."answers" VALUES (264, 121, 'Unnamed', 'N');
INSERT INTO "public"."answers" VALUES (265, 122, '1808', 'Y');
INSERT INTO "public"."answers" VALUES (266, 122, '1806', 'N');
INSERT INTO "public"."answers" VALUES (267, 122, '1810', 'N');
INSERT INTO "public"."answers" VALUES (268, 122, '1809', 'N');
INSERT INTO "public"."answers" VALUES (269, 123, 'Justinian I', 'Y');
INSERT INTO "public"."answers" VALUES (270, 123, 'Constantine IV', 'N');
INSERT INTO "public"."answers" VALUES (271, 123, 'Arcadius', 'N');
INSERT INTO "public"."answers" VALUES (272, 123, 'Theodosius the Great', 'N');
INSERT INTO "public"."answers" VALUES (273, 124, '1066', 'Y');
INSERT INTO "public"."answers" VALUES (274, 124, '911', 'N');
INSERT INTO "public"."answers" VALUES (275, 124, '1204', 'N');
INSERT INTO "public"."answers" VALUES (276, 124, '1420', 'N');
INSERT INTO "public"."answers" VALUES (277, 125, 'Genuine universal suffrage', 'Y');
INSERT INTO "public"."answers" VALUES (278, 125, 'Gaining Independence', 'N');
INSERT INTO "public"."answers" VALUES (279, 125, 'Go back under British Rule', 'N');
INSERT INTO "public"."answers" VALUES (280, 125, 'Lower taxes', 'N');
INSERT INTO "public"."answers" VALUES (281, 126, 'March 25th', 'Y');
INSERT INTO "public"."answers" VALUES (282, 126, 'June 1st', 'N');
INSERT INTO "public"."answers" VALUES (283, 126, 'September 25th', 'N');
INSERT INTO "public"."answers" VALUES (284, 126, 'December 1st', 'N');
INSERT INTO "public"."answers" VALUES (285, 127, 'George Washington', 'Y');
INSERT INTO "public"."answers" VALUES (286, 127, 'Abraham Lincoln', 'N');
INSERT INTO "public"."answers" VALUES (287, 127, 'Thomas Jefferson', 'N');
INSERT INTO "public"."answers" VALUES (288, 127, 'James Monroe', 'N');
INSERT INTO "public"."answers" VALUES (289, 128, 'Threw them out of a window', 'Y');
INSERT INTO "public"."answers" VALUES (290, 128, 'Insulted their mothers', 'N');
INSERT INTO "public"."answers" VALUES (291, 128, 'Locked them in stockades', 'N');
INSERT INTO "public"."answers" VALUES (292, 128, 'Hung them.', 'N');
INSERT INTO "public"."answers" VALUES (293, 129, 'Murray Gell-Mann', 'Y');
INSERT INTO "public"."answers" VALUES (294, 129, 'Richard Feynman', 'N');
INSERT INTO "public"."answers" VALUES (295, 129, 'J. Robert Oppenheimer', 'N');
INSERT INTO "public"."answers" VALUES (296, 129, 'John Von-Neumann', 'N');
INSERT INTO "public"."answers" VALUES (297, 130, 'Australia', 'Y');
INSERT INTO "public"."answers" VALUES (298, 130, 'India', 'N');
INSERT INTO "public"."answers" VALUES (299, 130, 'Canada', 'N');
INSERT INTO "public"."answers" VALUES (300, 130, 'Brazil', 'N');
INSERT INTO "public"."answers" VALUES (301, 131, '&#039;For&#039; loops', 'Y');
INSERT INTO "public"."answers" VALUES (302, 131, '&#039;If&#039; Statements', 'N');
INSERT INTO "public"."answers" VALUES (303, 131, '&#039;Do-while&#039; loops', 'N');
INSERT INTO "public"."answers" VALUES (304, 131, '&#039;While&#039; loops', 'N');
INSERT INTO "public"."answers" VALUES (305, 132, 'Final', 'Y');
INSERT INTO "public"."answers" VALUES (306, 132, 'Static', 'N');
INSERT INTO "public"."answers" VALUES (307, 132, 'Private', 'N');
INSERT INTO "public"."answers" VALUES (308, 132, 'Public', 'N');
INSERT INTO "public"."answers" VALUES (313, 135, '140', 'Y');
INSERT INTO "public"."answers" VALUES (314, 135, '120', 'N');
INSERT INTO "public"."answers" VALUES (315, 135, '160', 'N');
INSERT INTO "public"."answers" VALUES (316, 135, '100', 'N');
INSERT INTO "public"."answers" VALUES (323, 139, 'Hexidecimal', 'Y');
INSERT INTO "public"."answers" VALUES (324, 139, 'Binary', 'N');
INSERT INTO "public"."answers" VALUES (325, 139, 'Duodecimal', 'N');
INSERT INTO "public"."answers" VALUES (326, 139, 'Octal', 'N');
INSERT INTO "public"."answers" VALUES (327, 140, 'JavaScript', 'Y');
INSERT INTO "public"."answers" VALUES (328, 140, 'Java', 'N');
INSERT INTO "public"."answers" VALUES (329, 140, 'Java Source', 'N');
INSERT INTO "public"."answers" VALUES (330, 140, 'Joomla Source Code', 'N');
INSERT INTO "public"."answers" VALUES (333, 142, 'Active Directory', 'Y');
INSERT INTO "public"."answers" VALUES (334, 142, 'Alternative Drive', 'N');
INSERT INTO "public"."answers" VALUES (335, 142, 'Automated Database', 'N');
INSERT INTO "public"."answers" VALUES (336, 142, 'Active Department', 'N');
INSERT INTO "public"."answers" VALUES (339, 144, 'Heat Sink', 'Y');
INSERT INTO "public"."answers" VALUES (340, 144, 'CPU Vent', 'N');
INSERT INTO "public"."answers" VALUES (341, 144, 'Temperature Decipator', 'N');
INSERT INTO "public"."answers" VALUES (342, 144, 'Heat Vent', 'N');
INSERT INTO "public"."answers" VALUES (343, 145, 'Assembly', 'Y');
INSERT INTO "public"."answers" VALUES (344, 145, 'Python', 'N');
INSERT INTO "public"."answers" VALUES (345, 145, 'C#', 'N');
INSERT INTO "public"."answers" VALUES (346, 145, 'Pascal', 'N');
INSERT INTO "public"."answers" VALUES (347, 146, 'Mac OS', 'Y');
INSERT INTO "public"."answers" VALUES (348, 146, 'Windows', 'N');
INSERT INTO "public"."answers" VALUES (349, 146, 'Linux', 'N');
INSERT INTO "public"."answers" VALUES (350, 146, 'OS/2', 'N');
INSERT INTO "public"."answers" VALUES (351, 147, 'Honeycomb', 'Y');
INSERT INTO "public"."answers" VALUES (352, 147, 'Eclair', 'N');
INSERT INTO "public"."answers" VALUES (353, 147, 'Froyo', 'N');
INSERT INTO "public"."answers" VALUES (354, 147, 'Marshmellow', 'N');
INSERT INTO "public"."answers" VALUES (355, 148, '200', 'Y');
INSERT INTO "public"."answers" VALUES (356, 148, '100', 'N');
INSERT INTO "public"."answers" VALUES (357, 148, '500', 'N');
INSERT INTO "public"."answers" VALUES (358, 148, '1000', 'N');
INSERT INTO "public"."answers" VALUES (359, 149, 'Redundant Array of Independent Disks', 'Y');
INSERT INTO "public"."answers" VALUES (360, 149, 'Rapid Access for Indexed Devices', 'N');
INSERT INTO "public"."answers" VALUES (361, 149, 'Range of Applications with Identical Designs', 'N');
INSERT INTO "public"."answers" VALUES (362, 149, 'Randomized Abstract Identification Description', 'N');
INSERT INTO "public"."answers" VALUES (363, 150, 'Midnight, January 1, 1970', 'Y');
INSERT INTO "public"."answers" VALUES (364, 150, 'Midnight, July 4, 1976', 'N');
INSERT INTO "public"."answers" VALUES (365, 150, 'Midnight on the creator of Unix&#039;s birthday', 'N');
INSERT INTO "public"."answers" VALUES (366, 150, 'Midnight, July 4, 1980', 'N');
INSERT INTO "public"."answers" VALUES (369, 152, 'NovodeX', 'Y');
INSERT INTO "public"."answers" VALUES (370, 152, 'Ageia', 'N');
INSERT INTO "public"."answers" VALUES (371, 152, 'Nvidia', 'N');
INSERT INTO "public"."answers" VALUES (372, 152, 'AMD', 'N');
INSERT INTO "public"."answers" VALUES (373, 153, 'Stack', 'Y');
INSERT INTO "public"."answers" VALUES (374, 153, 'Queue', 'N');
INSERT INTO "public"."answers" VALUES (375, 153, 'Heap', 'N');
INSERT INTO "public"."answers" VALUES (376, 153, 'Tree', 'N');
INSERT INTO "public"."answers" VALUES (377, 154, 'TRS-80', 'Y');
INSERT INTO "public"."answers" VALUES (378, 154, 'Commodore 64', 'N');
INSERT INTO "public"."answers" VALUES (379, 154, 'ZX Spectrum', 'N');
INSERT INTO "public"."answers" VALUES (380, 154, 'Apple 3', 'N');
INSERT INTO "public"."answers" VALUES (381, 155, 'Quantum Teleportation', 'Y');
INSERT INTO "public"."answers" VALUES (382, 155, 'Super Dense Coding', 'N');
INSERT INTO "public"."answers" VALUES (383, 155, 'Quantum Entanglement', 'N');
INSERT INTO "public"."answers" VALUES (384, 155, 'Quantum Programming', 'N');
INSERT INTO "public"."answers" VALUES (385, 156, 'Apple', 'Y');
INSERT INTO "public"."answers" VALUES (386, 156, 'IBM', 'N');
INSERT INTO "public"."answers" VALUES (387, 156, 'Microsoft', 'N');
INSERT INTO "public"."answers" VALUES (388, 156, 'Google', 'N');
INSERT INTO "public"."answers" VALUES (389, 157, 'Game Maker', 'Y');
INSERT INTO "public"."answers" VALUES (390, 157, 'Stencyl', 'N');
INSERT INTO "public"."answers" VALUES (391, 157, 'Construct', 'N');
INSERT INTO "public"."answers" VALUES (392, 157, 'Torque 2D', 'N');
INSERT INTO "public"."answers" VALUES (393, 158, 'IMKO-1', 'Y');
INSERT INTO "public"."answers" VALUES (394, 158, 'Pravetz 82', 'N');
INSERT INTO "public"."answers" VALUES (395, 158, 'Pravetz 8D', 'N');
INSERT INTO "public"."answers" VALUES (396, 158, 'IZOT 1030', 'N');
INSERT INTO "public"."answers" VALUES (397, 159, 'Coffee Lake', 'Y');
INSERT INTO "public"."answers" VALUES (398, 159, 'Sandy Bridge', 'N');
INSERT INTO "public"."answers" VALUES (399, 159, 'Skylake', 'N');
INSERT INTO "public"."answers" VALUES (400, 159, 'Broadwell', 'N');
INSERT INTO "public"."answers" VALUES (401, 160, 'Peter Thiel', 'Y');
INSERT INTO "public"."answers" VALUES (402, 160, 'Mark Zuckerberg', 'N');
INSERT INTO "public"."answers" VALUES (403, 160, 'Marc Benioff', 'N');
INSERT INTO "public"."answers" VALUES (404, 160, 'Jack Dorsey', 'N');
INSERT INTO "public"."answers" VALUES (405, 161, 'Turin', 'Y');
INSERT INTO "public"."answers" VALUES (406, 161, 'Maranello', 'N');
INSERT INTO "public"."answers" VALUES (407, 161, 'Modena', 'N');
INSERT INTO "public"."answers" VALUES (408, 161, 'Rome', 'N');
INSERT INTO "public"."answers" VALUES (409, 162, 'Toyota', 'Y');
INSERT INTO "public"."answers" VALUES (410, 162, 'Honda', 'N');
INSERT INTO "public"."answers" VALUES (411, 162, 'Ford', 'N');
INSERT INTO "public"."answers" VALUES (412, 162, 'Volkswagen', 'N');
INSERT INTO "public"."answers" VALUES (413, 163, 'TCAS', 'Y');
INSERT INTO "public"."answers" VALUES (414, 163, 'GPWS', 'N');
INSERT INTO "public"."answers" VALUES (415, 163, 'OCAS', 'N');
INSERT INTO "public"."answers" VALUES (416, 163, 'TAWS', 'N');
INSERT INTO "public"."answers" VALUES (417, 164, 'Toyota', 'Y');
INSERT INTO "public"."answers" VALUES (418, 164, 'Honda', 'N');
INSERT INTO "public"."answers" VALUES (419, 164, 'Kawasaki', 'N');
INSERT INTO "public"."answers" VALUES (420, 164, 'Yamaha', 'N');
INSERT INTO "public"."answers" VALUES (421, 165, 'Electricity', 'Y');
INSERT INTO "public"."answers" VALUES (422, 165, 'Gasoline', 'N');
INSERT INTO "public"."answers" VALUES (423, 165, 'Diesel', 'N');
INSERT INTO "public"."answers" VALUES (424, 165, 'Nuclear', 'N');
INSERT INTO "public"."answers" VALUES (425, 166, 'Goodyear', 'Y');
INSERT INTO "public"."answers" VALUES (426, 166, 'Pirelli', 'N');
INSERT INTO "public"."answers" VALUES (427, 166, 'Bridgestone', 'N');
INSERT INTO "public"."answers" VALUES (428, 166, 'Michelin', 'N');
INSERT INTO "public"."answers" VALUES (429, 167, '364', 'Y');
INSERT INTO "public"."answers" VALUES (430, 167, '346', 'N');
INSERT INTO "public"."answers" VALUES (431, 167, '376', 'N');
INSERT INTO "public"."answers" VALUES (432, 167, '402', 'N');
INSERT INTO "public"."answers" VALUES (433, 168, '427', 'Y');
INSERT INTO "public"."answers" VALUES (434, 168, '346', 'N');
INSERT INTO "public"."answers" VALUES (435, 168, '364', 'N');
INSERT INTO "public"."answers" VALUES (436, 168, '376', 'N');
INSERT INTO "public"."answers" VALUES (437, 169, '376', 'Y');
INSERT INTO "public"."answers" VALUES (438, 169, '346', 'N');
INSERT INTO "public"."answers" VALUES (439, 169, '364', 'N');
INSERT INTO "public"."answers" VALUES (440, 169, '427', 'N');
INSERT INTO "public"."answers" VALUES (441, 170, 'Leaf', 'Y');
INSERT INTO "public"."answers" VALUES (442, 170, 'Tree', 'N');
INSERT INTO "public"."answers" VALUES (443, 170, 'Deer', 'N');
INSERT INTO "public"."answers" VALUES (444, 170, 'Roots', 'N');
INSERT INTO "public"."answers" VALUES (445, 171, 'Cheetah', 'Y');
INSERT INTO "public"."answers" VALUES (446, 171, 'Lion', 'N');
INSERT INTO "public"."answers" VALUES (447, 171, 'Thomson&rsquo;s Gazelle', 'N');
INSERT INTO "public"."answers" VALUES (448, 171, 'Pronghorn Antelope', 'N');
INSERT INTO "public"."answers" VALUES (449, 172, 'Homo Sapiens', 'Y');
INSERT INTO "public"."answers" VALUES (450, 172, 'Homo Ergaster', 'N');
INSERT INTO "public"."answers" VALUES (451, 172, 'Homo Erectus', 'N');
INSERT INTO "public"."answers" VALUES (452, 172, 'Homo Neanderthalensis', 'N');
INSERT INTO "public"."answers" VALUES (453, 173, 'New Zealand', 'Y');
INSERT INTO "public"."answers" VALUES (454, 173, 'South Africa', 'N');
INSERT INTO "public"."answers" VALUES (455, 173, 'Australia', 'N');
INSERT INTO "public"."answers" VALUES (456, 173, 'Madagascar', 'N');
INSERT INTO "public"."answers" VALUES (457, 174, 'Seahorse', 'Y');
INSERT INTO "public"."answers" VALUES (458, 174, 'Dolphin', 'N');
INSERT INTO "public"."answers" VALUES (459, 174, 'Whale', 'N');
INSERT INTO "public"."answers" VALUES (460, 174, 'Octopus', 'N');
INSERT INTO "public"."answers" VALUES (461, 175, '6', 'Y');
INSERT INTO "public"."answers" VALUES (462, 175, '2', 'N');
INSERT INTO "public"."answers" VALUES (463, 175, '4', 'N');
INSERT INTO "public"."answers" VALUES (464, 175, '0', 'N');
INSERT INTO "public"."answers" VALUES (465, 176, 'Tardar Sauce', 'Y');
INSERT INTO "public"."answers" VALUES (466, 176, 'Sauce', 'N');
INSERT INTO "public"."answers" VALUES (467, 176, 'Minnie', 'N');
INSERT INTO "public"."answers" VALUES (468, 176, 'Broccoli', 'N');
INSERT INTO "public"."answers" VALUES (469, 177, 'Amphibian', 'Y');
INSERT INTO "public"."answers" VALUES (470, 177, 'Fish', 'N');
INSERT INTO "public"."answers" VALUES (471, 177, 'Reptiles', 'N');
INSERT INTO "public"."answers" VALUES (472, 177, 'Mammals', 'N');
INSERT INTO "public"."answers" VALUES (473, 178, 'At the bottom of the ocean', 'Y');
INSERT INTO "public"."answers" VALUES (474, 178, 'In the desert', 'N');
INSERT INTO "public"."answers" VALUES (475, 178, 'On top of a mountain', 'N');
INSERT INTO "public"."answers" VALUES (476, 178, 'Inside a tree', 'N');
INSERT INTO "public"."answers" VALUES (477, 179, 'Brown', 'Y');
INSERT INTO "public"."answers" VALUES (478, 179, 'Black', 'N');
INSERT INTO "public"."answers" VALUES (479, 179, 'White', 'N');
INSERT INTO "public"."answers" VALUES (480, 179, 'Yellow', 'N');
INSERT INTO "public"."answers" VALUES (481, 180, 'Burrow', 'Y');
INSERT INTO "public"."answers" VALUES (482, 180, 'Nest', 'N');
INSERT INTO "public"."answers" VALUES (483, 180, 'Den', 'N');
INSERT INTO "public"."answers" VALUES (484, 180, 'Dray', 'N');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS "public"."images";
CREATE TABLE "public"."images" (
  "iid" int4 NOT NULL DEFAULT nextval('"Untitled_iid_seq"'::regclass),
  "iname" varchar(255) COLLATE "pg_catalog"."default",
  "idescription" varchar(255) COLLATE "pg_catalog"."default",
  "iimage" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO "public"."images" VALUES (1, 'swayambhu', 'asuid hgasghigfudg g dg df ', '360_F_239221224_ZspRhx9wK21O82bALOVfCJfH2ox2YgNx.jpg');
INSERT INTO "public"."images" VALUES (2, 'scene', 'asdasd rad fds ds fds ds sd', 'istockphoto-637696304-612x612.jpg');
INSERT INTO "public"."images" VALUES (3, 'swenea ', 'asuid hgasghigfudg g dg df  dsa dsa as da', 'gettyimages-637030542-612x612.jpg');
INSERT INTO "public"."images" VALUES (4, 'samurai', 'das das dasd asd sadaweqwe qweqwe qwe qw e', '8k-samurai-d7tp92n8wc05lzul.jpg');
INSERT INTO "public"."images" VALUES (5, 'sdwcs ', ' weqw sdas qw ads wqe sd asd asda', 'quiz.jpg');
INSERT INTO "public"."images" VALUES (6, 'kmt', 'asd asda dwe qweq eqe ', 'istockphoto-499654668-612x612.jpg');
INSERT INTO "public"."images" VALUES (7, 'sadas da', 'dsad sad asdas as ', 'quiz1.jpg');

-- ----------------------------
-- Table structure for leaderboard
-- ----------------------------
DROP TABLE IF EXISTS "public"."leaderboard";
CREATE TABLE "public"."leaderboard" (
  "lid" int4 NOT NULL DEFAULT nextval('leaderboard_lid_seq'::regclass),
  "uid" int4,
  "marks" float8,
  "correct" int8,
  "time" int8,
  "quiztime" timestamp(6) DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of leaderboard
-- ----------------------------
INSERT INTO "public"."leaderboard" VALUES (28, 5, 20, 2, 3, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (29, 5, 20, 2, 12, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (30, 5, 20, 2, 3, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (31, 5, 95, 7, 24, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (33, 5, 95.5, 8, 43, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (34, 5, 90, 7, 115, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (39, 5, 60, 4, 51, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (40, 5, 115, 8, 25, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (41, 5, 80, 6, 18, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (43, 5, 20, 1, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (44, 5, 30, 2, 6, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (45, 5, 30, 2, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (46, 5, 15, 1, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (49, 5, 45, 3, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (51, 5, 0, 0, 60, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (54, 5, 0, 0, 52, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (56, 5, 0, 0, 169, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (57, 5, 30, 2, 5, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (58, 5, 30, 2, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (59, 5, 30, 2, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (60, 5, 15, 1, 4, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (61, 5, 45, 3, 15, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (62, 5, 15, 1, 14, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (63, 5, 0, 0, 160, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (64, 5, 10, 1, 7, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (66, 5, 35, 2, 8, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (67, 5, 20, 1, 10, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (68, 5, 0, 0, 88, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (69, 5, 10.5, 1, 39, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (70, 5, 0, 0, 172, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (71, 5, 35, 2, 40, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (72, 5, 30, 2, 10, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (73, 5, 30, 2, 7, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (74, 5, 30, 2, 6, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (75, 5, 10, 1, 13, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (76, 5, 22, 2, 37, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (77, 5, 7, 1, 15, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (78, 5, 7, 1, 10, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (79, 5, 10, 1, 3, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (80, 5, 45, 3, 6, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (81, 5, 30, 2, 5, '2023-09-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (82, 1, 65, 8, 15, '2023-09-21 14:30:58.92353');
INSERT INTO "public"."leaderboard" VALUES (27, 5, 10, 1, 5, '2023-09-20 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (42, 5, 45, 3, 5, '2023-09-10 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (48, 5, 30, 2, 5, '2023-09-09 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (136, 9, 25, 2, 5, '2023-09-24 11:34:10.530747');
INSERT INTO "public"."leaderboard" VALUES (50, 5, 45, 3, 6, '2023-08-21 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (32, 5, 135, 10, 27, '2023-08-24 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (137, 9, 10, 1, 11, '2023-09-24 11:41:35.210216');
INSERT INTO "public"."leaderboard" VALUES (55, 5, 45, 3, 9, '2023-08-24 14:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (65, 5, 0, 0, 4, '2023-09-21 12:29:12.781115');
INSERT INTO "public"."leaderboard" VALUES (47, 5, 45, 3, 3, '2023-08-24 14:25:12');
INSERT INTO "public"."leaderboard" VALUES (83, 7, 76, 5, 89, '2023-09-21 14:59:51.282026');
INSERT INTO "public"."leaderboard" VALUES (84, 7, 45, 2, 34, '2023-09-15 15:00:07');
INSERT INTO "public"."leaderboard" VALUES (85, 7, 78, 5, 68, '2023-09-08 15:00:33');
INSERT INTO "public"."leaderboard" VALUES (86, 1, 10, 1, 3, '2023-09-18 15:07:57');
INSERT INTO "public"."leaderboard" VALUES (87, 1, 10, 1, 1, '2023-09-08 15:08:10');
INSERT INTO "public"."leaderboard" VALUES (88, 5, 30, 2, 5, '2023-09-21 15:20:35.077547');
INSERT INTO "public"."leaderboard" VALUES (89, 5, 30, 2, 8, '2023-09-21 15:47:04.668638');
INSERT INTO "public"."leaderboard" VALUES (90, 5, 10, 1, 4, '2023-09-21 17:30:01.556242');
INSERT INTO "public"."leaderboard" VALUES (91, 5, 30, 2, 4, '2023-09-21 17:32:33.832195');
INSERT INTO "public"."leaderboard" VALUES (92, 5, 0, 0, 5, '2023-09-21 17:38:08.484818');
INSERT INTO "public"."leaderboard" VALUES (93, 5, 30, 2, 5, '2023-09-21 17:42:42.454045');
INSERT INTO "public"."leaderboard" VALUES (94, 5, 20, 1, 14, '2023-09-21 17:43:37.796728');
INSERT INTO "public"."leaderboard" VALUES (95, 5, 0, 0, 150, '2023-09-21 17:48:48.633101');
INSERT INTO "public"."leaderboard" VALUES (96, 5, 10, 1, 10, '2023-09-22 10:02:11.974987');
INSERT INTO "public"."leaderboard" VALUES (97, 5, 10, 1, 95, '2023-09-22 10:10:06.96743');
INSERT INTO "public"."leaderboard" VALUES (98, 5, 10, 1, 10, '2023-09-22 10:12:58.739811');
INSERT INTO "public"."leaderboard" VALUES (99, 5, 30, 2, 6, '2023-09-22 10:31:31.449919');
INSERT INTO "public"."leaderboard" VALUES (100, 5, 10, 1, 4, '2023-09-22 10:42:35.006182');
INSERT INTO "public"."leaderboard" VALUES (101, 5, 20, 1, 55, '2023-09-22 10:58:36.602769');
INSERT INTO "public"."leaderboard" VALUES (102, 5, 10, 1, 6, '2023-09-22 11:01:49.009191');
INSERT INTO "public"."leaderboard" VALUES (103, 5, 10, 1, 3, '2023-09-22 11:03:21.517153');
INSERT INTO "public"."leaderboard" VALUES (104, 5, 30, 2, 5, '2023-09-22 11:05:04.000175');
INSERT INTO "public"."leaderboard" VALUES (105, 5, 30, 2, 4, '2023-09-22 11:08:38.997158');
INSERT INTO "public"."leaderboard" VALUES (106, 5, 25, 2, 3, '2023-09-22 11:09:56.678921');
INSERT INTO "public"."leaderboard" VALUES (107, 8, 25, 2, 4, '2023-09-22 11:12:25.255509');
INSERT INTO "public"."leaderboard" VALUES (108, 9, 10, 1, 4, '2023-09-22 11:13:20.742629');
INSERT INTO "public"."leaderboard" VALUES (109, 9, 30, 2, 5, '2023-09-22 11:19:14.726901');
INSERT INTO "public"."leaderboard" VALUES (110, 9, 10, 1, 4, '2023-09-22 11:20:39.191392');
INSERT INTO "public"."leaderboard" VALUES (111, 9, 10, 1, 4, '2023-09-22 11:22:25.701693');
INSERT INTO "public"."leaderboard" VALUES (112, 9, 45, 3, 6, '2023-09-22 11:24:17.162781');
INSERT INTO "public"."leaderboard" VALUES (113, 9, 30, 2, 8, '2023-09-22 11:43:22.860913');
INSERT INTO "public"."leaderboard" VALUES (114, 9, 10, 1, 5, '2023-09-22 11:48:11.987236');
INSERT INTO "public"."leaderboard" VALUES (115, 9, 10, 1, 3, '2023-09-22 11:50:41.3304');
INSERT INTO "public"."leaderboard" VALUES (116, 9, 30, 2, 5, '2023-09-22 12:05:24.908645');
INSERT INTO "public"."leaderboard" VALUES (117, 9, 10, 1, 4, '2023-09-22 12:06:02.122477');
INSERT INTO "public"."leaderboard" VALUES (118, 5, 30, 2, 9, '2023-09-22 12:07:44.499196');
INSERT INTO "public"."leaderboard" VALUES (119, 5, 20, 1, 47, '2023-09-22 12:12:36.019061');
INSERT INTO "public"."leaderboard" VALUES (120, 5, 0, 0, 16, '2023-09-22 12:14:43.761053');
INSERT INTO "public"."leaderboard" VALUES (121, 5, 0, 0, 3, '2023-09-22 12:16:47.206932');
INSERT INTO "public"."leaderboard" VALUES (122, 5, 25, 2, 4, '2023-09-22 14:43:08.875732');
INSERT INTO "public"."leaderboard" VALUES (123, 5, 0, 0, 8, '2023-09-22 15:09:01.66427');
INSERT INTO "public"."leaderboard" VALUES (124, 5, 55, 4, 25, '2023-09-22 15:28:48.531105');
INSERT INTO "public"."leaderboard" VALUES (125, 5, 35, 3, 12, '2023-09-22 15:30:25.031071');
INSERT INTO "public"."leaderboard" VALUES (126, 5, 45, 3, 21, '2023-09-22 16:58:59.477778');
INSERT INTO "public"."leaderboard" VALUES (127, 5, 52, 4, 36, '2023-09-22 17:06:24.238143');
INSERT INTO "public"."leaderboard" VALUES (128, 5, 60, 4, 39, '2023-09-24 11:13:54.084173');
INSERT INTO "public"."leaderboard" VALUES (129, 5, 35, 3, 12, '2023-09-24 11:20:40.363076');
INSERT INTO "public"."leaderboard" VALUES (130, 5, 35, 2, 11, '2023-09-24 11:22:55.01622');
INSERT INTO "public"."leaderboard" VALUES (131, 5, 15, 1, 7, '2023-09-24 11:23:27.092752');
INSERT INTO "public"."leaderboard" VALUES (132, 5, 10, 1, 12, '2023-09-24 11:25:25.749921');
INSERT INTO "public"."leaderboard" VALUES (133, 5, 0, 0, 7, '2023-09-24 11:27:33.406913');
INSERT INTO "public"."leaderboard" VALUES (134, 5, 10, 1, 24, '2023-09-24 11:28:18.546659');
INSERT INTO "public"."leaderboard" VALUES (135, 5, 20, 2, 15, '2023-09-24 11:31:08.753187');
INSERT INTO "public"."leaderboard" VALUES (138, 9, 40, 3, 5, '2023-09-24 11:47:27.576886');
INSERT INTO "public"."leaderboard" VALUES (139, 9, 40, 3, 7, '2023-09-24 11:50:07.857766');
INSERT INTO "public"."leaderboard" VALUES (140, 9, 25, 2, 8, '2023-09-24 11:54:42.206124');
INSERT INTO "public"."leaderboard" VALUES (141, 9, 20, 2, 8, '2023-09-24 12:02:42.819652');
INSERT INTO "public"."leaderboard" VALUES (142, 9, 30, 2, 5, '2023-09-24 12:05:17.933944');
INSERT INTO "public"."leaderboard" VALUES (143, 9, 0, 0, 4, '2023-09-24 12:09:51.553819');
INSERT INTO "public"."leaderboard" VALUES (144, 9, 30, 2, 7, '2023-09-24 12:12:42.381412');
INSERT INTO "public"."leaderboard" VALUES (145, 9, 0, 0, 4, '2023-09-24 12:15:59.976861');
INSERT INTO "public"."leaderboard" VALUES (146, 9, 15, 1, 3, '2023-09-24 12:20:42.132568');
INSERT INTO "public"."leaderboard" VALUES (147, 9, 10, 1, 5, '2023-09-24 12:23:18.529277');
INSERT INTO "public"."leaderboard" VALUES (148, 9, 15, 1, 6, '2023-09-24 12:25:55.054489');
INSERT INTO "public"."leaderboard" VALUES (149, 9, 0, 0, 3, '2023-09-24 12:28:55.806237');
INSERT INTO "public"."leaderboard" VALUES (150, 9, 15, 1, 2, '2023-09-24 12:31:10.451887');
INSERT INTO "public"."leaderboard" VALUES (151, 9, 20, 1, 3, '2023-09-24 12:36:21.443644');
INSERT INTO "public"."leaderboard" VALUES (152, 9, 10, 1, 3, '2023-09-24 12:37:40.20075');
INSERT INTO "public"."leaderboard" VALUES (153, 9, 0, 0, 18, '2023-09-24 12:45:08.197498');
INSERT INTO "public"."leaderboard" VALUES (154, 9, 0, 0, 10, '2023-09-24 12:48:34.616667');
INSERT INTO "public"."leaderboard" VALUES (155, 9, 20, 1, 5, '2023-09-24 12:48:54.686545');
INSERT INTO "public"."leaderboard" VALUES (156, 9, 15, 1, 5, '2023-09-24 12:49:15.910978');
INSERT INTO "public"."leaderboard" VALUES (157, 9, 0, 0, 4, '2023-09-24 12:49:32.934098');
INSERT INTO "public"."leaderboard" VALUES (158, 9, 10, 1, 7, '2023-09-24 12:49:54.100318');
INSERT INTO "public"."leaderboard" VALUES (159, 9, 0, 0, 75, '2023-09-24 15:18:54.53627');
INSERT INTO "public"."leaderboard" VALUES (160, 9, 0, 0, 13, '2023-09-24 15:27:25.281147');
INSERT INTO "public"."leaderboard" VALUES (161, 9, 0, 0, 21, '2023-09-24 15:29:20.82803');
INSERT INTO "public"."leaderboard" VALUES (162, 9, 20, 1, 30, '2023-09-24 15:31:44.748937');
INSERT INTO "public"."leaderboard" VALUES (163, 5, 0, 0, 11, '2023-09-24 16:09:42.137347');
INSERT INTO "public"."leaderboard" VALUES (164, 5, 0, 0, 5, '2023-09-24 16:12:23.432972');
INSERT INTO "public"."leaderboard" VALUES (165, 5, 0, 0, 14, '2023-09-24 16:13:34.043653');
INSERT INTO "public"."leaderboard" VALUES (166, 5, 15, 1, 18, '2023-09-24 16:15:49.046043');
INSERT INTO "public"."leaderboard" VALUES (167, 5, 0, 0, 45, '2023-09-24 16:30:34.178161');
INSERT INTO "public"."leaderboard" VALUES (168, 5, 10, 1, 2, '2023-09-24 16:35:08.135516');
INSERT INTO "public"."leaderboard" VALUES (169, 5, 10, 1, 4, '2023-09-24 16:37:08.76065');
INSERT INTO "public"."leaderboard" VALUES (170, 5, 0, 0, 18, '2023-09-24 16:38:03.094286');
INSERT INTO "public"."leaderboard" VALUES (171, 5, 0, 0, 10, '2023-09-24 16:41:09.399026');
INSERT INTO "public"."leaderboard" VALUES (172, 5, 10, 1, 5, '2023-09-24 16:41:48.974122');
INSERT INTO "public"."leaderboard" VALUES (173, 5, 20, 1, 41, '2023-09-24 17:12:53.946868');
INSERT INTO "public"."leaderboard" VALUES (174, 9, 0, 0, 9, '2023-09-25 10:49:50.507466');
INSERT INTO "public"."leaderboard" VALUES (175, 9, 0, 0, 15, '2023-09-25 10:52:17.168782');

-- ----------------------------
-- Table structure for powerpoints
-- ----------------------------
DROP TABLE IF EXISTS "public"."powerpoints";
CREATE TABLE "public"."powerpoints" (
  "pid" int4 NOT NULL DEFAULT nextval('powerpoints_pid_seq'::regclass),
  "pname" varchar(255) COLLATE "pg_catalog"."default",
  "pdescription" varchar(255) COLLATE "pg_catalog"."default",
  "ppowerpoint" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of powerpoints
-- ----------------------------
INSERT INTO "public"."powerpoints" VALUES (1, 'AI', 'sad asd asd asd as das', '160495-artificial-intelligence-template-16x9.pptx');
INSERT INTO "public"."powerpoints" VALUES (2, 'ai 2 ', '  aiai ai iai ai aia ia iaiaai a a dsa das', '160930-artificial-intelligence-template-16x9.pptx');
INSERT INTO "public"."powerpoints" VALUES (3, 'good', 'd asdsa das sa deqw asdas', '076.ppt');
INSERT INTO "public"."powerpoints" VALUES (4, 'brain', ' eqwe qwe qeqeqw eqweqw ee qweqw ', '16199.pptx');

-- ----------------------------
-- Table structure for quiz_questions
-- ----------------------------
DROP TABLE IF EXISTS "public"."quiz_questions";
CREATE TABLE "public"."quiz_questions" (
  "qid" int4 NOT NULL DEFAULT nextval('quiz_questions_qid_seq'::regclass),
  "category" text COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "difficulty" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "question" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "time" int8 NOT NULL
)
;

-- ----------------------------
-- Records of quiz_questions
-- ----------------------------
INSERT INTO "public"."quiz_questions" VALUES (55, 'General Knowledge', 'multiple', 'easy', 'In past times, what would a gentleman keep in his fob pocket?', 30);
INSERT INTO "public"."quiz_questions" VALUES (57, 'General Knowledge', 'multiple', 'easy', 'What is the largest organ of the human body?', 30);
INSERT INTO "public"."quiz_questions" VALUES (58, 'General Knowledge', 'multiple', 'easy', 'On a dartboard, what number is directly opposite No. 1?', 30);
INSERT INTO "public"."quiz_questions" VALUES (59, 'General Knowledge', 'multiple', 'easy', 'What is on display in the Madame Tussaud&#039;s museum in London?', 30);
INSERT INTO "public"."quiz_questions" VALUES (60, 'General Knowledge', 'multiple', 'easy', 'What was the nickname given to the Hughes H-4 Hercules, a heavy transport flying boat which achieved flight in 1947?', 30);
INSERT INTO "public"."quiz_questions" VALUES (61, 'General Knowledge', 'multiple', 'easy', 'Who is depicted on the US hundred dollar bill?', 30);
INSERT INTO "public"."quiz_questions" VALUES (62, 'General Knowledge', 'multiple', 'easy', 'What was the first ever London Underground line to be built?', 30);
INSERT INTO "public"."quiz_questions" VALUES (63, 'General Knowledge', 'multiple', 'easy', 'What is Tasmania?', 30);
INSERT INTO "public"."quiz_questions" VALUES (64, 'General Knowledge', 'multiple', 'easy', 'If you are caught &quot;Goldbricking&quot;, what are you doing wrong?', 30);
INSERT INTO "public"."quiz_questions" VALUES (65, 'General Knowledge', 'multiple', 'easy', 'What are Panama hats made out of?', 30);
INSERT INTO "public"."quiz_questions" VALUES (66, 'General Knowledge', 'multiple', 'easy', 'The drug cartel run by Pablo Escobar originated in which South American city?', 30);
INSERT INTO "public"."quiz_questions" VALUES (67, 'General Knowledge', 'multiple', 'easy', 'What is the French word for &quot;fish&quot;?', 30);
INSERT INTO "public"."quiz_questions" VALUES (68, 'General Knowledge', 'multiple', 'easy', 'What is the famous Papa John&#039;s last name?', 30);
INSERT INTO "public"."quiz_questions" VALUES (69, 'General Knowledge', 'multiple', 'easy', 'Who invented the first ever chocolate bar, in 1847?', 30);
INSERT INTO "public"."quiz_questions" VALUES (70, 'General Knowledge', 'multiple', 'easy', 'Which of these Marvel games was released on the Playstation 2?', 30);
INSERT INTO "public"."quiz_questions" VALUES (71, 'General Knowledge', 'multiple', 'medium', 'When was the Declaration of Independence approved by the Second Continental Congress?', 60);
INSERT INTO "public"."quiz_questions" VALUES (72, 'General Knowledge', 'multiple', 'medium', 'What is a &quot;dakimakura&quot;?', 60);
INSERT INTO "public"."quiz_questions" VALUES (73, 'General Knowledge', 'multiple', 'medium', 'In 2013 how much money was lost by Nigerian scams?', 60);
INSERT INTO "public"."quiz_questions" VALUES (74, 'General Knowledge', 'multiple', 'medium', 'What is the name given to Indian food cooked over charcoal in a clay oven?', 60);
INSERT INTO "public"."quiz_questions" VALUES (75, 'General Knowledge', 'multiple', 'medium', 'What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?', 60);
INSERT INTO "public"."quiz_questions" VALUES (76, 'General Knowledge', 'multiple', 'medium', 'What country saw a world record 315 million voters turn out for elections on May 20, 1991?', 60);
INSERT INTO "public"."quiz_questions" VALUES (77, 'General Knowledge', 'multiple', 'medium', 'What character was once considered to be the 27th letter of the alphabet?', 60);
INSERT INTO "public"."quiz_questions" VALUES (78, 'General Knowledge', 'multiple', 'medium', 'Which of the General Mills Corporation&#039;s monster cereals was the last to be released in the 1970&#039;s?', 60);
INSERT INTO "public"."quiz_questions" VALUES (79, 'General Knowledge', 'multiple', 'medium', 'When was Hubba Bubba first introduced?', 60);
INSERT INTO "public"."quiz_questions" VALUES (80, 'General Knowledge', 'multiple', 'medium', 'What is the Portuguese word for &quot;Brazil&quot;?', 60);
INSERT INTO "public"."quiz_questions" VALUES (81, 'General Knowledge', 'multiple', 'medium', 'Where does water from Poland Spring water bottles come from?', 60);
INSERT INTO "public"."quiz_questions" VALUES (82, 'General Knowledge', 'multiple', 'medium', 'What is a Burgee?', 60);
INSERT INTO "public"."quiz_questions" VALUES (83, 'General Knowledge', 'multiple', 'medium', 'What was the name given to Japanese military dictators who ruled the country through the 12th and 19th Century?', 60);
INSERT INTO "public"."quiz_questions" VALUES (84, 'General Knowledge', 'multiple', 'medium', 'Linus Pauling, one of the only winners of multiple Nobel Prizes, earned his Nobel Prizes in Chemistry and what?', 60);
INSERT INTO "public"."quiz_questions" VALUES (85, 'General Knowledge', 'multiple', 'medium', 'What are the three starter Pokemon available in Pokemon Black and White?', 60);
INSERT INTO "public"."quiz_questions" VALUES (56, 'General Knowledge', 'multiple', 'easy', 'Which company did Valve cooperate with in the creation of the Vive?', 30);
INSERT INTO "public"."quiz_questions" VALUES (86, 'General Knowledge', 'multiple', 'hard', 'Before the 19th Century, the &quot;Living Room&quot; was originally called the...', 90);
INSERT INTO "public"."quiz_questions" VALUES (87, 'General Knowledge', 'multiple', 'hard', 'Which film star has his statue in Leicester Square?', 90);
INSERT INTO "public"."quiz_questions" VALUES (88, 'General Knowledge', 'multiple', 'hard', 'Which of the following chemicals are found in eggplant seeds?', 90);
INSERT INTO "public"."quiz_questions" VALUES (89, 'General Knowledge', 'multiple', 'hard', 'What is the romanized Arabic word for &quot;moon&quot;?', 90);
INSERT INTO "public"."quiz_questions" VALUES (90, 'General Knowledge', 'multiple', 'hard', 'How long did it take the motorized window washers of the original World Trade Center to clean the entire exterior of the building?', 90);
INSERT INTO "public"."quiz_questions" VALUES (91, 'General Knowledge', 'multiple', 'hard', 'Which one of these Swedish companies was founded in 1943?', 90);
INSERT INTO "public"."quiz_questions" VALUES (92, 'General Knowledge', 'multiple', 'hard', 'How many calories are in a 355 ml can of Pepsi Cola?', 90);
INSERT INTO "public"."quiz_questions" VALUES (93, 'General Knowledge', 'multiple', 'hard', 'What year was the RoboSapien toy robot released?', 90);
INSERT INTO "public"."quiz_questions" VALUES (94, 'General Knowledge', 'multiple', 'hard', 'Who founded the Khan Academy?', 90);
INSERT INTO "public"."quiz_questions" VALUES (95, 'General Knowledge', 'multiple', 'hard', 'In flight systems, what does the initialism &quot;TCAS&quot; stand for?', 90);
INSERT INTO "public"."quiz_questions" VALUES (96, 'General Knowledge', 'multiple', 'hard', 'Originally another word for poppy, coquelicot is a shade of what?', 90);
INSERT INTO "public"."quiz_questions" VALUES (97, 'General Knowledge', 'multiple', 'hard', 'Nephelococcygia is the practice of doing what?', 90);
INSERT INTO "public"."quiz_questions" VALUES (98, 'General Knowledge', 'multiple', 'hard', 'The Quadrangularis Reversum is best described as which of the following?', 90);
INSERT INTO "public"."quiz_questions" VALUES (99, 'General Knowledge', 'multiple', 'hard', 'The word &quot;aprosexia&quot; means which of the following?', 90);
INSERT INTO "public"."quiz_questions" VALUES (100, 'General Knowledge', 'multiple', 'hard', 'Which of the following  British Monarchs never appeared on a circulated pound sterling coin?', 90);
INSERT INTO "public"."quiz_questions" VALUES (101, 'History', 'multiple', 'easy', 'King Henry VIII was the second monarch of which European royal house?', 30);
INSERT INTO "public"."quiz_questions" VALUES (102, 'History', 'multiple', 'easy', 'Which one of these tanks was designed and operated by the United Kingdom?', 30);
INSERT INTO "public"."quiz_questions" VALUES (103, 'History', 'multiple', 'easy', 'During WWII, in 1945, the United States dropped atomic bombs on the two Japanese cities of Hiroshima and what other city?', 30);
INSERT INTO "public"."quiz_questions" VALUES (104, 'History', 'multiple', 'easy', 'Which of the following ancient peoples was NOT classified as Hellenic (Greek)?', 30);
INSERT INTO "public"."quiz_questions" VALUES (105, 'History', 'multiple', 'easy', 'Which modern day country is the region that was known as Phrygia in ancient times?', 30);
INSERT INTO "public"."quiz_questions" VALUES (106, 'History', 'multiple', 'easy', 'In 1720, England was in massive debt and became involved in the South Sea Bubble. Who was the main mastermind behind it?', 30);
INSERT INTO "public"."quiz_questions" VALUES (107, 'History', 'multiple', 'easy', 'What year did World War I begin?', 30);
INSERT INTO "public"."quiz_questions" VALUES (108, 'History', 'multiple', 'easy', 'How old was Adolf Hitler when he died?', 30);
INSERT INTO "public"."quiz_questions" VALUES (109, 'History', 'multiple', 'easy', 'Which modern country is known as &quot;The Graveyard of Empires&quot;?', 30);
INSERT INTO "public"."quiz_questions" VALUES (110, 'History', 'multiple', 'easy', 'In 1453, which important city fell?', 30);
INSERT INTO "public"."quiz_questions" VALUES (111, 'History', 'multiple', 'medium', 'Joseph Smith was the founder of what religion?', 60);
INSERT INTO "public"."quiz_questions" VALUES (112, 'History', 'multiple', 'medium', 'Who was the first explorer to sail to North America?', 60);
INSERT INTO "public"."quiz_questions" VALUES (113, 'History', 'multiple', 'medium', 'Which country had an &quot;Orange Revolution&quot; between 2004 and 2005?', 60);
INSERT INTO "public"."quiz_questions" VALUES (114, 'History', 'multiple', 'medium', 'On which day did construction start on &quot;The Pentagon&quot;, the headquarters for the United States Department of Defense?', 60);
INSERT INTO "public"."quiz_questions" VALUES (115, 'History', 'multiple', 'medium', 'Where and when was the first cardboard box made for industrial use?', 60);
INSERT INTO "public"."quiz_questions" VALUES (116, 'History', 'multiple', 'medium', 'Which building was set aflame on August 24th, 1812?', 60);
INSERT INTO "public"."quiz_questions" VALUES (117, 'History', 'multiple', 'medium', 'What year did Skoal, a smokeless Tobacco company, release their first line of Pouches, known as &quot;Skoal Bandits&quot;?', 60);
INSERT INTO "public"."quiz_questions" VALUES (118, 'History', 'multiple', 'medium', 'The Korean War started in what year?', 60);
INSERT INTO "public"."quiz_questions" VALUES (119, 'History', 'multiple', 'medium', 'Which U.S. President was in office when the Gulf War began?', 60);
INSERT INTO "public"."quiz_questions" VALUES (120, 'History', 'multiple', 'medium', 'What happened on June 6, 1944?', 60);
INSERT INTO "public"."quiz_questions" VALUES (121, 'History', 'multiple', 'hard', 'What was the name of the spy ring that helped the United States win the Revolutionary War?', 90);
INSERT INTO "public"."quiz_questions" VALUES (122, 'History', 'multiple', 'hard', 'When did Spanish Peninsular War start?', 90);
INSERT INTO "public"."quiz_questions" VALUES (123, 'History', 'multiple', 'hard', 'The Hagia Sophia was commissioned by which emperor of the Byzantine Empire?', 90);
INSERT INTO "public"."quiz_questions" VALUES (124, 'History', 'multiple', 'hard', 'The Battle of Hastings was fought in which year?', 90);
INSERT INTO "public"."quiz_questions" VALUES (125, 'History', 'multiple', 'hard', 'What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?', 90);
INSERT INTO "public"."quiz_questions" VALUES (126, 'History', 'multiple', 'hard', 'Before the American colonies switched to the Gregorian calendar in 1752, on what date did their new year start?', 90);
INSERT INTO "public"."quiz_questions" VALUES (127, 'History', 'multiple', 'hard', 'Which U.S. president was said to have been too honest to lie to his father about chopping down a cherry tree?', 90);
INSERT INTO "public"."quiz_questions" VALUES (128, 'History', 'multiple', 'hard', 'The Bohemian Revolt (1618-1620) started after Protestants in Prague did what to their Catholic Lords Regents?', 90);
INSERT INTO "public"."quiz_questions" VALUES (129, 'History', 'multiple', 'hard', 'Which of the following physicists did NOT work on the Manhattan project?', 90);
INSERT INTO "public"."quiz_questions" VALUES (130, 'History', 'multiple', 'hard', 'Which country did the Eureka Rebellion, an 1856 battle against colonial rule, take place in?', 90);
INSERT INTO "public"."quiz_questions" VALUES (131, 'Science: Computers', 'multiple', 'easy', 'In any programming language, what is the most common way to iterate through an array?', 30);
INSERT INTO "public"."quiz_questions" VALUES (132, 'Science: Computers', 'multiple', 'easy', 'In the programming language Java, which of these keywords would you put on a variable to make sure it doesn&#039;t get modified?', 30);
INSERT INTO "public"."quiz_questions" VALUES (135, 'Science: Computers', 'multiple', 'easy', 'On Twitter, what was the original character limit for a Tweet?', 30);
INSERT INTO "public"."quiz_questions" VALUES (139, 'Science: Computers', 'multiple', 'easy', 'The numbering system with a radix of 16 is more commonly referred to as ', 30);
INSERT INTO "public"."quiz_questions" VALUES (140, 'Science: Computers', 'multiple', 'easy', 'What language does Node.js use?', 30);
INSERT INTO "public"."quiz_questions" VALUES (142, 'Science: Computers', 'multiple', 'medium', 'What does AD stand for in relation to Windows Operating Systems? ', 60);
INSERT INTO "public"."quiz_questions" VALUES (144, 'Science: Computers', 'multiple', 'medium', 'What is the correct term for the metal object in between the CPU and the CPU fan within a computer system?', 60);
INSERT INTO "public"."quiz_questions" VALUES (145, 'Science: Computers', 'multiple', 'medium', 'Which of these programming languages is a low-level language?', 60);
INSERT INTO "public"."quiz_questions" VALUES (146, 'Science: Computers', 'multiple', 'medium', 'Which operating system was released first?', 60);
INSERT INTO "public"."quiz_questions" VALUES (147, 'Science: Computers', 'multiple', 'medium', 'What was the first Android version specifically optimized for tablets?', 60);
INSERT INTO "public"."quiz_questions" VALUES (148, 'Science: Computers', 'multiple', 'medium', 'Approximately how many Apple I personal computers were created?', 60);
INSERT INTO "public"."quiz_questions" VALUES (149, 'Science: Computers', 'multiple', 'medium', 'What does RAID stand for?', 60);
INSERT INTO "public"."quiz_questions" VALUES (150, 'Science: Computers', 'multiple', 'medium', 'Unix Time is defined as the number of seconds that have elapsed since when?', 60);
INSERT INTO "public"."quiz_questions" VALUES (152, 'Science: Computers', 'multiple', 'hard', 'Who is the original author of the realtime physics engine called PhysX?', 90);
INSERT INTO "public"."quiz_questions" VALUES (153, 'Science: Computers', 'multiple', 'hard', 'Which data structure does FILO apply to?', 90);
INSERT INTO "public"."quiz_questions" VALUES (154, 'Science: Computers', 'multiple', 'hard', 'Which of the following is the oldest of these computers by release date?', 90);
INSERT INTO "public"."quiz_questions" VALUES (155, 'Science: Computers', 'multiple', 'hard', 'What is the name of the process that sends one qubit of information using two bits of classical information?', 90);
INSERT INTO "public"."quiz_questions" VALUES (156, 'Science: Computers', 'multiple', 'hard', 'What was the first company to use the term &quot;Golden Master&quot;?', 90);
INSERT INTO "public"."quiz_questions" VALUES (157, 'Science: Computers', 'multiple', 'hard', 'Dutch computer scientist Mark Overmars is known for creating which game development engine?', 90);
INSERT INTO "public"."quiz_questions" VALUES (158, 'Science: Computers', 'multiple', 'hard', 'What was the name of the first Bulgarian personal computer?', 90);
INSERT INTO "public"."quiz_questions" VALUES (159, 'Science: Computers', 'multiple', 'hard', 'What is the codename of the eighth generation Intel Core micro-architecture launched in October 2017?', 90);
INSERT INTO "public"."quiz_questions" VALUES (160, 'Science: Computers', 'multiple', 'hard', 'Who is the founder of Palantir?', 90);
INSERT INTO "public"."quiz_questions" VALUES (161, 'Vehicles', 'multiple', 'easy', 'Which Italian city is home of the car manufacturer &#039;Fiat&#039;?', 30);
INSERT INTO "public"."quiz_questions" VALUES (162, 'Vehicles', 'multiple', 'easy', 'Which of the following car manufacturers had a war named after it?', 30);
INSERT INTO "public"."quiz_questions" VALUES (163, 'Vehicles', 'multiple', 'easy', 'Which of the following collision avoidance systems helps airplanes avoid colliding with each other?', 30);
INSERT INTO "public"."quiz_questions" VALUES (164, 'Vehicles', 'multiple', 'easy', 'Which of these companies does NOT manufacture motorcycles?', 30);
INSERT INTO "public"."quiz_questions" VALUES (165, 'Vehicles', 'multiple', 'easy', 'Automobiles produced by Tesla Motors operate on which form of energy?', 30);
INSERT INTO "public"."quiz_questions" VALUES (166, 'Vehicles', 'multiple', 'easy', 'Which car tire manufacturer is famous for its &quot;Eagle&quot; brand of tires, and is the official tire supplier of NASCAR?', 30);
INSERT INTO "public"."quiz_questions" VALUES (167, 'Vehicles', 'multiple', 'easy', 'The LS2 engine is how many cubic inches?', 30);
INSERT INTO "public"."quiz_questions" VALUES (168, 'Vehicles', 'multiple', 'easy', 'The LS7 engine is how many cubic inches?', 30);
INSERT INTO "public"."quiz_questions" VALUES (169, 'Vehicles', 'multiple', 'easy', 'The LS3 engine is how many cubic inches?', 30);
INSERT INTO "public"."quiz_questions" VALUES (170, 'Vehicles', 'multiple', 'easy', 'What is the name of Nissan&#039;s most popular electric car?', 30);
INSERT INTO "public"."quiz_questions" VALUES (171, 'Animals', 'multiple', 'easy', 'What is the fastest  land animal?', 30);
INSERT INTO "public"."quiz_questions" VALUES (172, 'Animals', 'multiple', 'easy', 'What is the scientific name for modern day humans?', 30);
INSERT INTO "public"."quiz_questions" VALUES (173, 'Animals', 'multiple', 'easy', 'The Kākāpō is a large, flightless, nocturnal parrot native to which country?', 30);
INSERT INTO "public"."quiz_questions" VALUES (174, 'Animals', 'multiple', 'easy', 'Hippocampus is the Latin name for which marine creature?', 30);
INSERT INTO "public"."quiz_questions" VALUES (175, 'Animals', 'multiple', 'easy', 'How many legs do butterflies have?', 30);
INSERT INTO "public"."quiz_questions" VALUES (176, 'Animals', 'multiple', 'easy', 'What is Grumpy Cat&#039;s real name?', 30);
INSERT INTO "public"."quiz_questions" VALUES (177, 'Animals', 'multiple', 'easy', 'Which class of animals are newts members of?', 30);
INSERT INTO "public"."quiz_questions" VALUES (178, 'Animals', 'multiple', 'easy', 'By definition, where does an abyssopelagic animal live?', 30);
INSERT INTO "public"."quiz_questions" VALUES (179, 'Animals', 'multiple', 'easy', 'What colour is the female blackbird?', 30);
INSERT INTO "public"."quiz_questions" VALUES (180, 'Animals', 'multiple', 'easy', 'What is the name of a rabbit&#039;s abode?', 30);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "uid" int4 NOT NULL DEFAULT nextval('users_uid_seq'::regclass),
  "uname" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fname" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 'shardul1', 'Shardul Mishra', 'shardul123', 'Thasikhel');
INSERT INTO "public"."users" VALUES (5, 'shardul1234', 'Shardul Mishra', 'shard', 'shard');
INSERT INTO "public"."users" VALUES (7, 'shard', 'shardul mishra', 'sha', 'sard');
INSERT INTO "public"."users" VALUES (8, 'shardulalalala', 'Shardul Mishra', 'shardul', 'Kathmandu');
INSERT INTO "public"."users" VALUES (9, 'newuser', 'New User', 'new', 'New Address');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS "public"."videos";
CREATE TABLE "public"."videos" (
  "vid" int4 NOT NULL DEFAULT nextval('videos_vid_seq'::regclass),
  "vname" varchar(255) COLLATE "pg_catalog"."default",
  "vdescription" varchar(255) COLLATE "pg_catalog"."default",
  "vvideo" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO "public"."videos" VALUES (1, 'Sea', 'Seaajsdhasid gfsu gdgadgg   gd gdf gdf', 'vidd1.mp4');
INSERT INTO "public"."videos" VALUES (2, 'Ocean', 'Oceanaid aishasdau a ssous fhsuh s sduh duh ushf iu  sd fhdsuhd dsuhsdiu  uh fis fiu ', 'vidb.mp4');
INSERT INTO "public"."videos" VALUES (3, 'wave', 'wavwereeuwe baiudba b isabsiudui siuf sif shfds iuds sudh iushuosh usah si', 'vidf.mp4');
INSERT INTO "public"."videos" VALUES (4, 'noraml', 'andagi asug dsi fgoisdg osdfgsdogeer', 'vida.mp4');
INSERT INTO "public"."videos" VALUES (5, 'road', 'sad asdasd adaOceanaid aishasdau a ssous fhsuh s sduh duh ushf iu  sd fhdsuhd dsuhsdiu  uh fis fiu sd asdasd sadasdaa das da', 'vidc.mp4');
INSERT INTO "public"."videos" VALUES (6, 'fire ', 'd sd d sad asd a sa dsa dad wre wr rew rew rwe rwe', 'vide.mp4');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Untitled_iid_seq"
OWNED BY "public"."images"."iid";
SELECT setval('"public"."Untitled_iid_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."answers_aid_seq"
OWNED BY "public"."answers"."aid";
SELECT setval('"public"."answers_aid_seq"', 484, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."leaderboard_lid_seq"
OWNED BY "public"."leaderboard"."lid";
SELECT setval('"public"."leaderboard_lid_seq"', 175, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."powerpoints_pid_seq"
OWNED BY "public"."powerpoints"."pid";
SELECT setval('"public"."powerpoints_pid_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."quiz_questions_qid_seq"
OWNED BY "public"."quiz_questions"."qid";
SELECT setval('"public"."quiz_questions_qid_seq"', 180, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_uid_seq"
OWNED BY "public"."users"."uid";
SELECT setval('"public"."users_uid_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."videos_vid_seq"
OWNED BY "public"."videos"."vid";
SELECT setval('"public"."videos_vid_seq"', 8, true);

-- ----------------------------
-- Primary Key structure for table answers
-- ----------------------------
ALTER TABLE "public"."answers" ADD CONSTRAINT "answers_pkey" PRIMARY KEY ("aid");

-- ----------------------------
-- Primary Key structure for table images
-- ----------------------------
ALTER TABLE "public"."images" ADD CONSTRAINT "Untitled_pkey" PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table leaderboard
-- ----------------------------
ALTER TABLE "public"."leaderboard" ADD CONSTRAINT "leaderboard_pkey" PRIMARY KEY ("lid");

-- ----------------------------
-- Primary Key structure for table powerpoints
-- ----------------------------
ALTER TABLE "public"."powerpoints" ADD CONSTRAINT "powerpoints_pkey" PRIMARY KEY ("pid");

-- ----------------------------
-- Primary Key structure for table quiz_questions
-- ----------------------------
ALTER TABLE "public"."quiz_questions" ADD CONSTRAINT "quiz_questions_pkey" PRIMARY KEY ("qid");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "uname" UNIQUE ("uname");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("uid");

-- ----------------------------
-- Primary Key structure for table videos
-- ----------------------------
ALTER TABLE "public"."videos" ADD CONSTRAINT "videos_pkey" PRIMARY KEY ("vid");

-- ----------------------------
-- Foreign Keys structure for table answers
-- ----------------------------
ALTER TABLE "public"."answers" ADD CONSTRAINT "qid" FOREIGN KEY ("qid") REFERENCES "public"."quiz_questions" ("qid") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table leaderboard
-- ----------------------------
ALTER TABLE "public"."leaderboard" ADD CONSTRAINT "uid" FOREIGN KEY ("uid") REFERENCES "public"."users" ("uid") ON DELETE CASCADE ON UPDATE CASCADE;
