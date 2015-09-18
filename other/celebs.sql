-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 03, 2015 at 12:47 AM
-- Server version: 5.6.13
-- PHP Version: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `celebs`
--
CREATE DATABASE IF NOT EXISTS `celebs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `celebs`;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE IF NOT EXISTS `people` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Born` date NOT NULL,
  `Bio` text NOT NULL,
  `Image` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`ID`, `Name`, `Born`, `Bio`, `Image`, `url`) VALUES
(1, 'Ellen Page', '1987-02-21', 'Ellen Philpotts-Page was born on February 21, 1987, in Halifax, Nova Scotia. Page wanted to start acting at an early age and attended the Neptune Theater School. She began her career at the age of 10 on the award-winning television series "Pit Pony" (1999), for which she received a Gemini nomination and a Young Artist Awards nomination. Later, Page appeared in Marion Bridge (2002), which won the award for Best Canadian First Feature at the Toronto International Film Festival. She won a Gemini Award for her role of Lilith in the first season of "ReGenesis" (2004), a one-hour drama for TMN/Movie Central, and for the cable feature, Mrs. Ashboro''s Cat (2004) (TV), for Best Performance in a Children''s or Youth Program or Series. In addition, Page appeared in the cult hit TV series "Trailer Park Boys" (2001).</p><p></p><p>As the lead in David Slade''s Hard Candy (2005), which premiered at the Sundance Film Festival, Page garnered much praise for her tour de force performance as a 14-year-old girl who meets a 30-year-old photographer on the Internet and then looks to expose him as pedophile. Films that followed included the title role of Bruce McDonald''s The Tracey Fragments (2007); An American Crime (2007), also starring Catherine Keener; and the third installation of the X-Men franchise, X-Men: The Last Stand (2006), where she played Kitty Pryde.</p><p></p><p>With her breakout role in Jason Reitman''s hit comedy Juno (2007), about an offbeat teenager who finds herself unexpectedly pregnant, Page received Academy Award, BAFTA, Golden Globe and SAG Best Actress nominations, and won the Independent Spirit Award for her performance. She followed up that turn with the lead in Drew Barrymore''s directorial debut, the roller-derby comedy-drama Whip It (2009), Christopher Nolan''s psychological thriller Inception (2010), the independent film Peacock (2010), and the dark comedy Super (2010), opposite Rainn Wilson and Liv Tyler.</p><p></p><p>Page co-starred alongside Jesse Eisenberg, Alec Baldwin, and Greta Gerwig in the Woody Allen ensemble comedy To Rome with Love (2012), and is set for the thriller The East (2013), a story centered on a contract worker tasked with infiltrating an anarchist group, only to find herself falling for its leader.', 'page.jpg', 'http://www.imdb.com/name/nm0680983/'),
(2, 'Emma Stone', '2013-11-08', 'Stone began acting as a child as a member of the Valley Youth Theatre in Phoenix, Arizona, where she made her stage debut in a production of Kenneth Grahame''s "The Wind in the Willows". She appeared in many more productions through her early teens until, at the age of 15, she decided that she wanted to make acting her career.</p><p></p><p>The official story is that she made a PowerPoint presentation, backed by Madonna''s "Hollywood" and itself entitled "Project Hollywood", in an attempt to persuade her parents to allow her to drop out of school and move to Los Angeles. The pitch was successful and she and her mother moved to LA with her schooling completed at home while she spent her days auditioning.</p><p></p><p>She had her TV breakthrough when she won the part of Laurie Partridge in the VH1 talent/reality show "In Search of the Partridge Family" (2004) which led to a number of small TV roles in the following years.</p><p></p><p>Her movie debut was as Jules in Superbad (2007) and, after a string of successful performances, her leading role as Olive in Easy A (2010) established her as a star.', 'stone.jpg', 'http://www.imdb.com/name/nm1297015/'),
(3, 'Ryan Gosling', '1980-11-12', 'Ryan Gosling was born on November 12, 1980, in London, Ontario, to Thomas and Donna Gosling, and was the second of their two children. The Gosling family, moved to Cornwall, Ontario, where Ryan grew up and was home-schooled by his mother. Ryan attended Cornwall Collegiate and Vocational High School in Cornwall, where he excelled in Drama and Fine Arts. The family then relocated to Burlington, Ontario, where Ryan attended Lester B. Pearson High School in Burlington, Ontario.</p><p></p><p>Ryan first performed as a singer at talent contests with his older sister Mandi. He attended an open audition in Montreal for the TV series "The Mickey Mouse Club" ("MMC" (1989)) in January 1993 and beat out 17,000 other aspiring actors for a a spot on the show. While appearing on "MMC" for two years, he lived with co-star Justin Timberlake''s family.</p><p></p><p>Though he received no formal acting training, after "MMC," Gosling segued into an acting career, appearing on the TV series "Young Hercules" (1998) and "Breaker High" (1997), as well as the films The Slaughter Rule (2002), Murder by Numbers (2002), and Remember the Titans (2000). He first attracted serious critical attention with his performance as the Jewish neo-Nazi in the controversial film The Believer (2001), which won the Grand Jury Prize at the 2001 Sundance Film Festival. He was cast in the part by writer-director Henry Bean, who believed that Gosling''s strict upbringing gave him the insight to understand the character Danny, whose obsessiveness with the Judaism he was born into turns to hatred. He was nominated for an Independent Spirit Award as Best Male Lead in 2002 for the role and won the Golden Aries award from the Russian Guild of Film Critics.</p><p></p><p>After appearing in the sleeper The Notebook (2004) in 2004, Gosling won the dubious honor of being named one of the 50 Hottest Bachelors by People Magazine. More significantly, he was named the Male Star of Tomorrow at the 2004 Show West convention of movie exhibitors.</p><p></p><p>Gosling reached the summit of his profession with his performance in Half Nelson (2006), which garnered him an Academy Award nomination as Best Actor. In a short time, he has established himself as one of the finest actors of his generation.', 'gosling.jpg', 'http://www.imdb.com/name/nm0331516/'),
(4, 'Sam Worthington', '1976-08-02', 'Sam Worthington was born on August 2, 1976 in Surrey, England. His parents, Jeanne and Ronald Worthington, moved the family to Australia when he was six months old, and raised him and his sister Lucinda in Warnbro, a suburb of Perth, Western Australia.</p><p></p><p>Worthington graduated from NIDA (Australia''s National Institute of Dramatic Art) in 1998 at the age of 22. He received critical acclaim for his portrayal of "Arthur Wellesley" in his first professional role in the Belvoir Street Theatre production "Judas Kiss" (directed by Neil Armfield). He then went on to work in Australian television on such shows as "Water Rats" (1996) and "Backburner" and then on the American TV show "JAG: Judge Advocate General" (1995)''s 100th episode (Boomerang: Part 1).</p><p></p><p>Worthington made his film debut in the highly acclaimed Australian movie Bootmen (2000), a film about a troop of "tap dogs". Minor roles proceeded in Hart''s War (2002) and A Matter of Life (2001) before he was cast in another hailed Australian drama, Dirty Deeds (2002), co-starring Toni Collette and John Goodman.</p><p></p><p>The following year, he starred in yet another Aussie film, opposite David Wenham in Gettin'' Square (2003). The director of the film, Jonathan Teplitzky, originally tested actors who were up to 8 years older than the then-27-year-old Worthington. Teplitzky wasn''t sure Sam "could convincingly play a tough guy and also have elements of the leading man about him", but in the end Teplitzky decided he was "fantastic", and had "David playing the older, slightly more streetwise accomplice" proclaiming "it worked".</p><p></p><p>But it wasn''t until 2004 that Sam got his big break. He was offered the starring role in Cate Shortland''s acclaimed Australian drama Somersault (2004), opposite Abbie Cornish. The film made a clean sweep of the Australian Film Institute awards in 2004, winning in 13 film categories - the first time this has ever occurred in the award''s history. Worthington also won the AFI award for Best Male Actor. </p><p></p><p>Worthington''s career took off internationally when he was cast as Jake Sully in James Cameron''s Avatar (2009) and as Marcus Wright, a cyborg who assists the humans despite their suspicions of him in Terminator Salvation (2009). Worthington soon became a household name, and starring in high profile films Clash of the Titans (2010), The Debt (2010/I), The Dark Fields (2011), Man on a Ledge (2012), and Wrath of the Titans (2012). Worthington also provided the voice for the Call of Duty: Black Ops video games. </p><p></p><p>In 2010, Worthington started a production company, Full Clip Productions, with two of his close friends John Schwarz and Michael Schwarz. The company teamed with Radical studios to print two graphic novels Damaged and Patriots.', 'worthington.jpg', 'http://www.imdb.com/name/nm0941777/');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
