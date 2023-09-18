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

 Date: 18/09/2023 13:35:13
*/


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

-- ----------------------------
-- Table structure for leaderboard
-- ----------------------------
DROP TABLE IF EXISTS "public"."leaderboard";
CREATE TABLE "public"."leaderboard" (
  "lid" int4 NOT NULL DEFAULT nextval('leaderboard_lid_seq'::regclass),
  "uid" int4,
  "marks" varchar(255) COLLATE "pg_catalog"."default",
  "correct" varchar(255) COLLATE "pg_catalog"."default",
  "time" int8
)
;

-- ----------------------------
-- Records of leaderboard
-- ----------------------------
INSERT INTO "public"."leaderboard" VALUES (27, 5, '10', '1', 5);
INSERT INTO "public"."leaderboard" VALUES (28, 5, '20', '2', 3);
INSERT INTO "public"."leaderboard" VALUES (29, 5, '20', '2', 12);
INSERT INTO "public"."leaderboard" VALUES (30, 5, '20', '2', 3);

-- ----------------------------
-- Table structure for quiz_questions
-- ----------------------------
DROP TABLE IF EXISTS "public"."quiz_questions";
CREATE TABLE "public"."quiz_questions" (
  "qid" int4 NOT NULL DEFAULT nextval('quiz_questions_qid_seq'::regclass),
  "category" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
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

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."answers_aid_seq"
OWNED BY "public"."answers"."aid";
SELECT setval('"public"."answers_aid_seq"', 180, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."leaderboard_lid_seq"
OWNED BY "public"."leaderboard"."lid";
SELECT setval('"public"."leaderboard_lid_seq"', 30, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."quiz_questions_qid_seq"
OWNED BY "public"."quiz_questions"."qid";
SELECT setval('"public"."quiz_questions_qid_seq"', 100, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_uid_seq"
OWNED BY "public"."users"."uid";
SELECT setval('"public"."users_uid_seq"', 5, true);

-- ----------------------------
-- Primary Key structure for table answers
-- ----------------------------
ALTER TABLE "public"."answers" ADD CONSTRAINT "answers_pkey" PRIMARY KEY ("aid");

-- ----------------------------
-- Primary Key structure for table leaderboard
-- ----------------------------
ALTER TABLE "public"."leaderboard" ADD CONSTRAINT "leaderboard_pkey" PRIMARY KEY ("lid");

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
-- Foreign Keys structure for table answers
-- ----------------------------
ALTER TABLE "public"."answers" ADD CONSTRAINT "qid" FOREIGN KEY ("qid") REFERENCES "public"."quiz_questions" ("qid") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table leaderboard
-- ----------------------------
ALTER TABLE "public"."leaderboard" ADD CONSTRAINT "uid" FOREIGN KEY ("uid") REFERENCES "public"."users" ("uid") ON DELETE CASCADE ON UPDATE CASCADE;
