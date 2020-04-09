-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 22 mrt 2020 om 20:28
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc_heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characterproperties`
--

CREATE TABLE `characterproperties` (
  `characterProperties` int(5) NOT NULL,
  `property_ID` int(3) NOT NULL,
  `character_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `characterproperties`
--

INSERT INTO `characterproperties` (`characterProperties`, `property_ID`, `character_ID`) VALUES
(1, 2, 1),
(2, 1, 1),
(3, 3, 1),
(4, 3, 2),
(5, 7, 2),
(6, 8, 2),
(7, 4, 3),
(8, 9, 3),
(9, 3, 4),
(10, 10, 4),
(11, 11, 4),
(12, 12, 5),
(13, 12, 22),
(14, 13, 5),
(15, 13, 22),
(16, 14, 5),
(17, 14, 22),
(18, 15, 5),
(19, 15, 22),
(20, 16, 5),
(21, 16, 22),
(22, 1, 6),
(23, 1, 21),
(24, 3, 21),
(25, 3, 6),
(26, 4, 21),
(27, 4, 6),
(28, 17, 21),
(29, 17, 6),
(30, 9, 7),
(31, 9, 9),
(32, 18, 8),
(33, 19, 8),
(34, 20, 8),
(35, 18, 15),
(36, 19, 15),
(37, 20, 15),
(38, 4, 10),
(39, 17, 10),
(40, 21, 10),
(41, 22, 10),
(42, 4, 11),
(43, 23, 11),
(44, 19, 12),
(45, 19, 20),
(46, 24, 12),
(47, 24, 20),
(48, 18, 12),
(49, 18, 20),
(50, 25, 12),
(51, 25, 20),
(52, 26, 13),
(53, 27, 13),
(54, 21, 14),
(55, 22, 14),
(56, 24, 14),
(57, 25, 14),
(58, 24, 16),
(59, 28, 16),
(60, 29, 16),
(61, 1, 17),
(62, 13, 17),
(63, 30, 17),
(64, 17, 17),
(65, 24, 17),
(66, 3, 17),
(67, 1, 18),
(68, 27, 18),
(69, 31, 18),
(70, 32, 18),
(71, 33, 18),
(72, 32, 19),
(73, 34, 19),
(74, 35, 19),
(75, 27, 23),
(76, 36, 23),
(77, 37, 23),
(78, 37, 24),
(79, 1, 24),
(80, 9, 24),
(81, 12, 25),
(82, 13, 25),
(83, 14, 25),
(84, 15, 25),
(85, 16, 25),
(86, 37, 26),
(87, 36, 26),
(88, 27, 26),
(89, 38, 26);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characters`
--

CREATE TABLE `characters` (
  `character_ID` int(3) NOT NULL,
  `characterName` varchar(45) NOT NULL,
  `characterDescriptionShort` varchar(255) NOT NULL,
  `characterDescriptionLong` text NOT NULL,
  `characterImage` varchar(255) NOT NULL,
  `team_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `characters`
--

INSERT INTO `characters` (`character_ID`, `characterName`, `characterDescriptionShort`, `characterDescriptionLong`, `characterImage`, `team_ID`) VALUES
(1, 'Superman', 'Faster than a speeding bullet, more powerful than a locomotive. The Man of Steel fights a never-ending battle for truth, justice, and the American way.\r\n\r\nFrom his blue uniform to his flowing red cape to the \"S\" shield on his chest, Superman is one of ...', 'Faster than a speeding bullet, more powerful than a locomotive… The Man of Steel fights a never-ending battle for truth, justice, and the American way.\r\n\r\nFrom his blue uniform to his flowing red cape to the \"S\" shield on his chest, Superman is one of the most immediately recognizable and beloved DC Super Heroes of all time. The Man of Steel is the ultimate symbol of truth, justice, and hope. He is the world\'s first Super Hero and a guiding light to all.\r\n\r\nThe tip of the spear in a revolution that would change the landscape of pop culture, Superman has spent the last eighty years redefining what it means to stand for truth, justice and the American way. The last survivor of the doomed planet Krypton, raised in the quiet heartland of Smallville, Kansas, Superman is as much a legend as he is a man: the gold standard of heroism, compassion and responsibility.\r\n\r\nThough his powers make him god-like next to his human compatriots, Superman\'s story is not one of greed or conquest. Instead, he strives to represent the inherent goodness of the human spirit, and the capacity of every living thing to do right by their neighbors.', 'superman2.jpg', 1),
(2, 'Wonder woman', 'Beautiful as Aphrodite, wise as Athena, swifter than Hermes, and stronger than Hercules, Princess Diana of Themyscira fights for peace in Man\'s World.\r\n\r\nOne of the most beloved and iconic DC Super Heroes of all time, Wonder Woman has stood for nearly ...', 'Beautiful as Aphrodite, wise as Athena, swifter than Hermes, and stronger than Hercules, Princess Diana of Themyscira fights for peace in Man\'s World.\r\n\r\nOne of the most beloved and iconic DC Super Heroes of all time, Wonder Woman has stood for nearly eighty years as a symbol of truth, justice and equality to people everywhere. Raised on the hidden island of Themyscira, also known as Paradise Island, Diana is an Amazon, like the figures of Greek legend, and her people\'s gift to humanity.\r\n\r\nAs Themyscira\'s emissary to Man\'s World, Diana has made it her duty to lead by example, even if the differences between her birthplace and new home sometimes present hurdles for her to jump. She has come to represent the possibility and potential of life without war, hate or violence, and she is a beacon of hope to all who find themselves in need. She stands as an equal among the most powerful Super Heroes, with a sense of purpose to protect the world from injustice in all forms.\r\n\r\nDiana\'s job, however, is anything but easy. Constantly torn between her mission to promote peace and her need to fight back against the pervasive violence of her new home, Diana struggles to walk a line between her warrior strength and endless compassion each and every day.', 'wonder-woman.jpg', 1),
(3, 'The flash', 'Three men have held the title of \"The Fastest Man Alive\" Jay Garrick, Barry Allen and Wally West. Each of them redefined the word \"hero.\"\r\n\r\nThe mysterious power known as the Speed Force is an energy field that has, over the centuries, granted ... ', 'Three men have held the title of \"The Fastest Man Alive\"—Jay Garrick, Barry Allen and Wally West. Each of them redefined the word \"hero.\"\r\n\r\nThe mysterious power known as the Speed Force is an energy field that has, over the centuries, granted incredible powers of velocity to certain heroes. The most famous of these is the Flash, also known as the Fastest Man Alive. Ever since the days of World War II, there has been a man clad in red who can run at impossible speeds, using his power to save lives and defend those who cannot defend themselves. All between the ticks of a second.\r\n\r\nIn the 1940s, college student Jay Garrick acquired his super-speed abilities in a random lab accident and became the first DC Super Hero to go by the name the Flash. Years later, Jay was succeeded by police scientist Barry Allen, until Barry’s former kid partner Wally West took up the mantle at a time when Barry was considered dead. But, when Barry returned, he became the Flash once again. All three generations of speedsters have been cornerstone members of both the Justice Society and Justice League.\r\n\r\nThe Flash has mastery over not just speed, but time itself, and he has often used his powers to travel though different eras and even into other dimensions. Although the Flash has not always been fast enough to outrun personal tragedy when it has come for him, he always does his best to prevent the same from happening to the people of Central City and Keystone City. In so doing, he\'s earned himself a spot among the greatest Super Heroes the DC Universe has ever known.', 'flash.jpg', 2),
(4, 'Aquaman', 'The son of a lighthouse keeper and an Atlantean queen, Arthur Curry is the bridge between the surface world and his tumultuous realm of the sea.\r\n\r\nMonarch of the undersea realm of Atlantis and King of the Seven Seas, Aquaman is one of the most ...', 'The son of a lighthouse keeper and an Atlantean queen, Arthur Curry is the bridge between the surface world and his tumultuous realm of the sea.\r\n\r\nMonarch of the undersea realm of Atlantis and King of the Seven Seas, Aquaman is one of the most powerful DC Super Heroes—commanding a kingdom that covers three-quarters of the Earth’s surface, including all the creatures contained within. Arthur Curry came from humble beginnings, as most of his life was spent exiled from his home, unaware of his noble origins. When he finally took the throne as an adult, he became the most legendary king in Atlantean history.\r\n\r\nA founding member of the Justice League of America, Aquaman has fought alongside Superman, Batman and Wonder Woman and held his own against the biggest threats the universe has ever seen. Despite being misunderstood by many as someone who merely “talks to fish,” Aquaman’s super-strength and fighting prowess alone make him a force to be reckoned with. His telepathic abilities make him one of the most powerful minds on the planet. If one chooses to underestimate the sea king, they do so at their own peril. ', 'aquaman2.png', 1),
(5, 'Green Lantern', 'Test pilot Hal Jordan went from being a novelty, the first-ever human Green Lantern, to one of the most legendary Lanterns to ever wield a power ring.\r\n\r\nHal Jordans life was changed twice by crashing aircraft. The first time was when he witnessed ...', 'GREEN LANTERN\r\na\r\nTest pilot Hal Jordan went from being a novelty, the first-ever human Green Lantern, to one of the most legendary Lanterns to ever wield a power ring.\r\n\r\nHal Jordan’s life was changed twice by crashing aircraft. The first time was when he witnessed the death of his father, pilot Martin Jordan. The second was when, as an adult and trained pilot himself, he was summoned to the crashed wreckage of a spaceship belonging to an alien named Abin Sur. Abin explained that he was a member of the Green Lantern Corps, an organization of beings from across the cosmos, armed with power rings fueled by the green energy of all willpower in the universe. Upon his death, Abin entrusted his ring and duties as the Green Lantern of Earth’s space sector to Hal Jordan.\r\n\r\nHal’s life as a Green Lantern has not been easy. He’s had to fight not only enemies, but often friends, colleagues and loved ones. But despite the strain his Green Lantern identity has put on his life, Hal is an honest man who can operate without fear, and is always willing to protect those in need—whether alone, with the Corps or alongside the Justice League and Earth’s other Super Heroes. For Hal has sworn the oath of every Green Lantern—that no evil will escape his sight.', 'green_lantern.jpg', 1),
(6, 'Cyborg', 'Part man, part machine, Vic Stone is a former member of the Teen Titans and a current member of the Justice League who wrestles to preserve his humanity with every new upgrade.\r\n\r\nAlthough he always exhibited a genius level intellect, young Victor ...\r\n', 'Part man, part machine, Vic Stone is a former member of the Teen Titans and a current member of the Justice League who wrestles to preserve his humanity with every new upgrade.\r\n\r\nAlthough he always exhibited a genius level intellect, young Victor Stone didn’t want a life dedicated to science and research like his parents. Instead, Vic dreamed of being a football player, and devoted all of his time to becoming a star athlete while he was still in high school. But a tragic twist of fate that should have left him dead instead found him becoming part man and part machine—a Cyborg.\r\n\r\nSaved by his scientist father after an accident left very little of Victor’s body intact, Dr. Silas Stone used all of his advanced scientific knowledge to save his only child’s life, and to rebuild him into a superior being, one that was arguably now more machine than man. As a cyborg, Vic was now far stronger than the average person,  could interface with computers, and emit various types of energy that made him a formidable fighter. Although he ultimately chose the path of the superhero, Victor never fully acclimated to being only partially human. He always carried a sadness within him as he mourns for the normal life he never had.\r\n\r\nOne of the planet’s greatest heroes, Cyborg nevertheless puts all of his internal struggles aside when the time comes to save innocent lives and protect the Earth. Because of his ability to interface with computer systems, perhaps there is no hero more fitting for this modern, digital age.', 'cyborg.png', 1),
(7, 'Reverse Flash', 'For every action, there\'s an equal and opposite reaction. And with every step the Flash takes toward the future, someone from the future is racing backward through time to stop him—the villainous speedster known as the Reverse-Flash.\r\n\r\nBorn in the ...', 'For every action, there\'s an equal and opposite reaction. And with every step the Flash takes toward the future, someone from the future is racing backward through time to stop him—the villainous speedster known as the Reverse-Flash.\r\n\r\nBorn in the 25th Century, Eobard Thawne grew up idolizing the Flash and studying the legacy of the Scarlet Speedster. However, as he learned more about the Flash, Eobard discovered how his own life was linked to his hero’s: He was destined to become one of Barry Allen’s greatest villains, a revelation that led Eobard to grow unhinged. When he eventually replicated the chemical accident that granted the Flash super speed, Eobard took on a new identity—that of the Reverse-Flash, a wicked subversion of everything the Flash stands for.\r\n\r\nGranted with powers and abilities similar to that of the Flash, the Reverse-Flash is unwavering in his determination to oppose and destroy all that’s important to the Flash. His ability to travel through time allows him to attack the Flash at almost any point throughout history. However, he is unable to ever kill the Flash—for the Reverse-Flash would not exist if he killed his own inspiration. Instead, he does everything in his power to torment and torture the hero, an ominous visitor from a future the Flash never could’ve envisioned.', 'ReverseFlash.jpg', 2),
(8, 'Batman', 'In the name of his murdered parents, Bruce Wayne wages eternal war on the criminals of Gotham City. He is vengeance. He is the night. He is Batman.\r\n\r\nOne of the most iconic fictional characters in the world, Batman has dedicated his life to an ...', 'In the name of his murdered parents, Bruce Wayne wages eternal war on the criminals of Gotham City. He is vengeance. He is the night. He is Batman.\r\n\r\nOne of the most iconic fictional characters in the world, Batman has dedicated his life to an endless crusade, a war on all criminals in the name of his murdered parents, who were taken from him when he was just a child. Since that tragic night, he has trained his body and mind to near physical perfection to be a self-made Super Hero. He\'s developed an arsenal of technology that would put most armies to shame. And he\'s assembled teams of his fellow DC Super Heroes, like the Justice League, the Outsiders and Batman, Incorporated.\r\n\r\nA playboy billionaire by day, Bruce Wayne’s double life affords him the comfort of a life without financial worry, a loyal butler-turned-guardian and the perfect base of operations in the ancient network of caves beneath his family’s sprawling estate. By night, however, he sheds all pretense, dons his iconic scalloped cape and pointed cowl and takes to the shadowy streets, skies and rooftops of Gotham City.', 'Batman.jpg', 3),
(9, 'Zoom', 'Sometimes it takes a great tragedy to truly push a hero beyond their limits—to break them down and make them an even greater super hero. Those that haven\'t experienced this sort of loss will never become greater than they are. Many heroes had these ...', 'Sometimes it takes a great tragedy to truly push a hero beyond their limits—to break them down and make them an even greater super hero. Those that haven\'t experienced this sort of loss will never become greater than they are. Many heroes had these tragedies happen at a young age or in the early days of their careers. But for those who haven\'t, one man makes it his duty to break them down in order to make them better, even if he has to force their tragedy himself: Zoom.\r\n\r\nHunter Zolomon\'s life was riddled by brutal tragedies. As a child, he discovered his father was a serial killer who also murdered Hunter\'s mother after she tried to stop him. This tragedy inspired Hunter to study psychology and criminology, and to join the FBI; but a miscalculation during a case led to the death of his father-in-law. Then, things took a turn for the truly dark after an attack by Gorilla Grodd left Hunter paralyzed. He begged his friend the Flash to go back in time and prevent the attack from happening—and the Flash refused.\r\n\r\nTaking matters into his own hands, Hunter attempted to go back in time himself, leading to an accidental explosion, another tragedy—but one that made him more than what he was. Gaining the ability of perceived super-speed and adopting the name Zoom, Hunter dedicated his life to making sure people experienced their own personal tragedy in order to make them better heroes—starting with the Flash.\r\n\r\nZoom is utterly unlike the Flash and other speedsters, both setting him apart and making him one of the most dangerous and challenging of Flash’s foes. His speed doesn’t come from the Speed Force, but from altering his own relative time, slowing or speeding up the world around him, allowing him to run even faster than the Flash. His warped sense of heroism and villainy has led Zoom to continuously threaten not only those closest to the Flash but also countless heroes throughout the DC Universe. But really, he\'s just trying to make them better…by any means necessary.', 'Zoom.jpg', 2),
(10, 'Jay Garrick', 'After a strange and bizarre laboratory accident, Jay Garrick awoke to discover he had gained amazing abilities—he could move at superhuman speeds, far beyond those of any normal man or woman. Donning a costume and stylized metal helmet based on the ...', 'After a strange and bizarre laboratory accident, Jay Garrick awoke to discover he had gained amazing abilities—he could move at superhuman speeds, far beyond those of any normal man or woman. Donning a costume and stylized metal helmet based on the one worn by the Roman god Mercury, Jay used his powers to fight crime and protect the citizens of Keystone City. He became the Fastest Man Alive, the Hero of Earth-2, the Flash!\r\n\r\nA founding member of the Justice Society of America—whose ranks include Green Lantern (Alan Scott), Hawkman, Hawkgirl, Wildcat, Power Girl and more—Jay was one of the first super heroes of Earth-2, a parallel world to the main DC Universe and home to the heroes of the Golden Age. As the Flash, Jay battled many super-criminals and saved the world alongside his friends numerous times. But he forever changed not only his world, but all worlds when he met his Earth-1 counterpart, Barry Allen. This famous meeting of the Flash of Two Worlds bridged the gap between realities and led to many team-ups, alignments and friendships between the heroes of both Earths. Together, the Flashes would join forces to battle Zoom, the Reverse-Flash, and many other super-villains.\r\n\r\nBy tapping into the extra-dimensional Speed Force, Jay can move at speeds approaching the speed of light. This power also allows him to have faster than normal reflexes and grants him the ability to vibrate fast enough to obscure his features, preventing the need for him to wear a mask. His experience, compassion and kindness have led him to become a mentor to not only future generations of speedsters, but to countless other heroes throughout the DC Universe.', 'Profile_JayGarrick.jpg', 2),
(11, 'Kid Flash', 'Bart Allen was born to Don Allen, the son of Barry Allen, the second Flash, and his wife Meloni, the daughter of President Thawne of Earth and descendant of the evil Professor Zoom and Cobalt Blue in the late 30th century. Bart was born with his ...', 'Origin\r\nBart Allen was born to Don Allen, the son of Barry Allen, the second Flash, and his wife Meloni, the daughter of President Thawne of Earth and descendant of the evil Professor Zoom and Cobalt Blue in the late 30th century. Bart was born with his grandfather\'s speed. He had incredibly high metabolism and also aged at hyper speed. When he was two years old, he physically looked twelve. The Thawne family had hated the Allen family for hundreds of years. President Thawne had the Dominators kill Don and his twin sister, Dawn. The Dominators kidnapped Bart, who was later captured by Earthgov for observation. The scientists of Earthgov raised him in a virtual reality environment so that he aged as swiftly mentally as he did physically. Bart was going to die of old age and Earthgov was not doing anything to fix his problem. His grandmother Iris took him away and brought him back to The 20th Century, so that her nephew, Wally West, the third Flash, could show him how to control his speed. He adopted the identity Impulse.\r\n\r\nAfter Wally helped him solve his problem and Bart helped him to defeat Kobra, Bart moved to Manchester, Alabama with Max Mercury. Wally had used his connections to supply Bart with a birth certificate, etc. Bart began the ninth grade at Manchester Junior High. He managed to make quite a few friends, chief among them Carol Bucklen. Max continued to train him in the art of superspeed, having him run obstacle courses while dodging axes and knives, solving jigsaw puzzles in mid-air, and the like. During this time, he became one of the founding members of Young Justice. Following Max\'s disappearance, he was taken in by Jay Garrick, the first Flash, and his wife Joan.', 'kid_flash.jpg', 2),
(12, 'Robin', 'Every kid wants to be Batman, but do you have a lifetime of training? A billion-dollar fortune? The dream gets dashed pretty quickly. So OK, maybe you can’t be Batman… but that doesn’t mean you can’t be adopted by him.\r\n\r\nAnd just like that, Robin the ...', 'Every kid wants to be Batman, but do you have a lifetime of training? A billion-dollar fortune? The dream gets dashed pretty quickly. So OK, maybe you can’t be Batman… but that doesn’t mean you can’t be adopted by him.\r\n\r\nAnd just like that, Robin the Boy Wonder made the kid sidekick an icon.\r\n\r\nAcrobat Dick Grayson was the youngest member of his parents’ death-defying circus act. But after their cold-blooded murder, Dick vowed revenge. Seeing a genuine piece of himself in the boy, Batman took him in—and gave him a better outlet for his anger. Becoming Batman’s protégé, Robin is an expert fighter and astounding acrobat—with the toughest example in the world to live up to. But the Boy Wonder’s true strength may lie in not being Batman—and providing a beacon of hope and family throughout the Dark Knight’s grim crusade.\r\n\r\nBut as Dick matures into his own entity—eventually becoming the masked crime fighter Nightwing—Robin proves more than just an identity, but a mantle passed to the most worthy. From the troubled Jason Todd to the overachieving Tim Drake, the mask is now worn by Bruce Wayne’s own son Damian—a rebellious troublemaker who’s been trained by assassins since birth. With a lethal skill set and a marginal sense of mercy, Robin no longer needs Batman to protect him from criminals.', 'Profile_Robin.jpg', 3),
(13, 'Alfred Pennyworth', 'A British special forces veteran turned butler, Alfred Pennyworth is the most loyal friend and confidant of both Bruce Wayne and Batman.\r\n\r\nAlfred Pennyworth is more than just Bruce Wayne’s butler, or Batman’s confidant. Alfred is a second father to ...', 'A British special forces veteran turned butler, Alfred Pennyworth is the most loyal friend and confidant of both Bruce Wayne and Batman.\r\n\r\nAlfred Pennyworth is more than just Bruce Wayne’s butler, or Batman’s confidant. Alfred is a second father to Wayne, and serves as his conscience when the never-ending fight against evil wears on the Caped Crusader. Pennyworth keeps the Bat-Family together through his compassion and leadership. He has not only raised Bruce Wayne, but also the four young men who have worn the mask of Robin, the Boy Wonder: Dick Grayson, Jason Todd, Tim Drake and now, Damian Wayne.\r\n\r\nAs a former British intelligence officer, field medic and trained Shakespearean actor, Alfred is uniquely suited to support the lives of masked crime fighters. He\'s quick with a disguise, a cover story, an alibi; and quicker still with a suture, a cast or an ice bath. He ensures that Wayne Manor—all of Wayne Manor, including the vast Batcave—is operating at peak performance while the Bat-Family patrols the city. Plus, he makes a mean cucumber sandwich, which may not be something he lists on his resume, but is certainly something everyone who sets foot on the manor\'s grounds will fondly remember.', 'Profile_AlfredPennyworth.jpg', 3),
(14, 'Catwoman', 'As deadly as she is beautiful, infamous cat-burglar Selina Kyle uses her nine lives to walk the razor\'s edge between light and darkness in Gotham City.\r\n\r\nThe Bat may be the king of the beasts of Gotham. But the Cat? The Cat is definitely the queen. ...', 'As deadly as she is beautiful, infamous cat-burglar Selina Kyle uses her nine lives to walk the razor\'s edge between light and darkness in Gotham City.\r\n\r\nThe Bat may be the king of the beasts of Gotham. But the Cat? The Cat is definitely the queen. Infamous burglar Selina Kyle is certainly one of the most iconic characters in the DC Universe—not because she\'s a superhero, per se, but because she\'s so good at stumping them. Motivated partly by her own self interest, partly by the fun of it all, Catwoman has been baffling Gotham City\'s heroes, both masked and unmasked, from the very beginning.\r\n\r\nAn accomplished jewel thief and an occasional hero herself, Selina\'s murky moral compass has made her relationship with Batman complicated, to say the least. Still, the undeniable magnetism between Bat and Cat is one of Gotham\'s most reliable constants: wherever Catwoman goes, Batman is sure to follow, if only to take her down. It\'s a complicated game of cat-and-mouse (cat-and-bat?) that Bruce and Selina have been playing across the streets and rooftops of Gotham for a long, long time.', 'Profile_Catwoman.jpg', 3),
(15, 'Batwoman', 'Clad in the Hebrew colors of war, former West Point Academy cadet Kate Kane is Batman’s cousin, but she fights a battle all her own against injustice.\r\n\r\nBruce Wayne was robbed of both of his parents when he was just a small child, but his work as ... ', 'Clad in the Hebrew colors of war, former West Point Academy cadet Kate Kane is Batman’s cousin, but she fights a battle all her own against injustice.\r\n\r\nBruce Wayne was robbed of both of his parents when he was just a small child, but his work as Batman has inspired those more fortunate than he was to follow his lead.\r\n\r\nTrained by the military, Kate Kane was an heiress inspired to fight crime by the Dark Knight’s example after he rescued her from a mugger. But Kate’s story is unique. One of the few openly gay superheroes, she struggles for respect in her personal life as she protects all of Gotham City’s citizens, whether they respect her or not.', 'Profile_Batwoman.jpg', 3),
(16, 'James Gordon', 'Not all heroes in Gotham City wear masks. GCPD Commissioner James Gordon is the Dark Knight\'s greatest ally, and one of his closest friends.\r\n\r\nBatman may be the sworn guardian of Gotham City, but the man who makes it possible for the Dark Knight to ...', 'Not all heroes in Gotham City wear masks. GCPD Commissioner James Gordon is the Dark Knight\'s greatest ally, and one of his closest friends.\r\n\r\nBatman may be the sworn guardian of Gotham City, but the man who makes it possible for the Dark Knight to safeguard its streets is James Gordon. A veteran cop who rose through the ranks by putting his foot down on rampant corruption—even when that stalwart devotion to justice came at great personal cost—Gordon worked tirelessly on Gotham’s police force, eventually earning himself the title of commissioner.\r\n\r\nOne of the first GCPD officers to accept the Batman’s help, Gordon was responsible for one of the Gotham skyline’s most iconic features: the Bat-Signal, a tool that only he is authorized to use. Despite being given many opportunities to learn Batman’s identity, Gordon has never done so, valuing their partnership and the Dark Knight’s ability to maintain plausible deniability.\r\n\r\nGordon remains one of Batman’s closest friends and most trusted confidants outside the Bat-Family, and the most vital part of his job fighting crime in Gotham City.', 'Profile_JamesGordon.jpg', 3),
(17, 'Starfire', 'As brilliant as the sun from which she derives her powers, Koriand\'r of Tamaran has refused to let the torments she\'s suffered crush her spirit.\r\n\r\nKoriand\'r, heir to the throne of the planet Tamaran, has played a multitude of roles over the course of ...', 'As brilliant as the sun from which she derives her powers, Koriand\'r of Tamaran has refused to let the torments she\'s suffered crush her spirit.\r\n\r\nKoriand\'r, heir to the throne of the planet Tamaran, has played a multitude of roles over the course of her long, tumultuous history—from princess to slave to Teen Titan. An alien who was ousted from her home via a coup led by her devious older sister, and later captured by torturous alien scientists, Kori\'s past is as unpleasant as they come. But she\'s never let the suffering that’s marked her life break her gentle spirit.\r\n\r\nKori\'s arrival on Earth was the result of a happy accident that landed her right in the middle of a pivotal moment in Teen Titans history. With the team, she began a new life and made a home for herself among her new friends and family, shedding the horrors of her past. She came to love Earth and its inhabitants, though their customs occasionally confused her.\r\n\r\nA bright-eyed, curious and compassionate person, Kori is quick to make friends and quicker still to become the center of attention wherever she goes. But her sometimes naive persona should never result in her being taken for granted—under it lies the fierce heart of a once and future Tamaranian queen.', 'Profile_Starfire.jpg', 4),
(18, 'Raven', 'A founding member of the New Teen Titans, Raven, the Daughter of Darkness, fights for a world to which she fears she can never truly belong.\r\n\r\nFamilies are never a walk in the park, but when your father is an actual, literal demon lord? Well, that’s ...', 'A founding member of the New Teen Titans, Raven, the Daughter of Darkness, fights for a world to which she fears she can never truly belong.\r\n\r\nFamilies are never a walk in the park, but when your father is an actual, literal demon lord? Well, that’s a whole different story. And Raven would know. She’s got firsthand experience.\r\n\r\nBorn Rachel Roth to a human mother and a demonic father, Raven’s entire life has been a balancing act between the light and the darkness. Unwilling to succumb to her demonic heritage, she’s trained tirelessly to control and master her emotions, study the mystical arts and become a hero despite whatever destiny the demonic magic in her blood had intended for her. But demons are not so easily abated, and the persistent threat of her father constantly looms over her and whatever team of heroes she’s been a part of.\r\n\r\nReserved, distant and secretive, Raven’s never quite sure how close to let anyone get, or how much she can trust herself to maintain control. But those who do get close? They have a loyal and powerful friend in their corner for life...and sometimes beyond.', 'Profile_Raven.jpg', 4),
(19, 'BeastBoy', 'Able to take the form of almost any animal, Garfield Logan, despite his flippant personality, is one of the most esteemed superheroes to bear the name “Titan.”\r\n\r\nIt’s not easy being green, but Garfield “Gar” Logan certainly makes the best of it. ...', 'Able to take the form of almost any animal, Garfield Logan, despite his flippant personality, is one of the most esteemed superheroes to bear the name “Titan.”\r\n\r\nIt’s not easy being green, but Garfield “Gar” Logan certainly makes the best of it. After contracting a rare disease as a child, Gar’s parents were forced to administer an experimental genetic treatment involving the DNA of animals with known resistances to the disease as a potential cure.\r\n\r\nThe good news: their experiment worked. The bad news: it had some pretty dramatic side effects. It turned Gar’s skin, hair and eyes a bright green color and gave him the incredible ability to shapeshift into any animal at will…with just one important caveat. Any form Gar happens to take will also be completely green, no matter what. So much for being able to blend in.\r\n\r\nLuckily, fading into the background has never been Gar’s goal in life. When he’s not using his powers to be a superhero, he spends his time as an amateur actor and social butterfly, winning friends and “adoring fans” (at least, in his head) wherever he goes. He’s quick with a joke and quicker with a smile, and remains upbeat, optimistic and flirtatious even through the worst of times, making him a valuable asset for the morale of any team he might find himself a part of.', 'Profile_BeastBoy.jpg', 4),
(20, 'Robin TT', 'Every kid wants to be Batman, but do you have a lifetime of training? A billion-dollar fortune? The dream gets dashed pretty quickly. So OK, maybe you can’t be Batman… but that doesn’t mean you can’t be adopted by him.\r\n\r\nAnd just like that, Robin the ...', 'Every kid wants to be Batman, but do you have a lifetime of training? A billion-dollar fortune? The dream gets dashed pretty quickly. So OK, maybe you can’t be Batman… but that doesn’t mean you can’t be adopted by him.\r\n\r\nAnd just like that, Robin the Boy Wonder made the kid sidekick an icon.\r\n\r\nAcrobat Dick Grayson was the youngest member of his parents’ death-defying circus act. But after their cold-blooded murder, Dick vowed revenge. Seeing a genuine piece of himself in the boy, Batman took him in—and gave him a better outlet for his anger. Becoming Batman’s protégé, Robin is an expert fighter and astounding acrobat—with the toughest example in the world to live up to. But the Boy Wonder’s true strength may lie in not being Batman—and providing a beacon of hope and family throughout the Dark Knight’s grim crusade.\r\n\r\nBut as Dick matures into his own entity—eventually becoming the masked crime fighter Nightwing—Robin proves more than just an identity, but a mantle passed to the most worthy. From the troubled Jason Todd to the overachieving Tim Drake, the mask is now worn by Bruce Wayne’s own son Damian—a rebellious troublemaker who’s been trained by assassins since birth. With a lethal skill set and a marginal sense of mercy, Robin no longer needs Batman to protect him from criminals.', 'Profile_Robin.jpg', 4),
(21, 'Cyborg TT', 'Part man, part machine, Vic Stone is a former member of the Teen Titans and a current member of the Justice League who wrestles to preserve his humanity with every new upgrade.\r\n\r\nAlthough he always exhibited a genius level intellect, young Victor ...\r\n', 'Part man, part machine, Vic Stone is a former member of the Teen Titans and a current member of the Justice League who wrestles to preserve his humanity with every new upgrade.\r\n\r\nAlthough he always exhibited a genius level intellect, young Victor Stone didn’t want a life dedicated to science and research like his parents. Instead, Vic dreamed of being a football player, and devoted all of his time to becoming a star athlete while he was still in high school. But a tragic twist of fate that should have left him dead instead found him becoming part man and part machine—a Cyborg.\r\n\r\nSaved by his scientist father after an accident left very little of Victor’s body intact, Dr. Silas Stone used all of his advanced scientific knowledge to save his only child’s life, and to rebuild him into a superior being, one that was arguably now more machine than man. As a cyborg, Vic was now far stronger than the average person,  could interface with computers, and emit various types of energy that made him a formidable fighter. Although he ultimately chose the path of the superhero, Victor never fully acclimated to being only partially human. He always carried a sadness within him as he mourns for the normal life he never had.\r\n\r\nOne of the planet’s greatest heroes, Cyborg nevertheless puts all of his internal struggles aside when the time comes to save innocent lives and protect the Earth. Because of his ability to interface with computer systems, perhaps there is no hero more fitting for this modern, digital age.', 'cyborg.png', 4),
(22, 'Green Lantern GOTU', 'Test pilot Hal Jordan went from being a novelty, the first-ever human Green Lantern, to one of the most legendary Lanterns to ever wield a power ring.\r\n\r\nHal Jordans life was changed twice by crashing aircraft. The first time was when he witnessed ...', 'GREEN LANTERN\r\na\r\nTest pilot Hal Jordan went from being a novelty, the first-ever human Green Lantern, to one of the most legendary Lanterns to ever wield a power ring.\r\n\r\nHal Jordan’s life was changed twice by crashing aircraft. The first time was when he witnessed the death of his father, pilot Martin Jordan. The second was when, as an adult and trained pilot himself, he was summoned to the crashed wreckage of a spaceship belonging to an alien named Abin Sur. Abin explained that he was a member of the Green Lantern Corps, an organization of beings from across the cosmos, armed with power rings fueled by the green energy of all willpower in the universe. Upon his death, Abin entrusted his ring and duties as the Green Lantern of Earth’s space sector to Hal Jordan.\r\n\r\nHal’s life as a Green Lantern has not been easy. He’s had to fight not only enemies, but often friends, colleagues and loved ones. But despite the strain his Green Lantern identity has put on his life, Hal is an honest man who can operate without fear, and is always willing to protect those in need—whether alone, with the Corps or alongside the Justice League and Earth’s other Super Heroes. For Hal has sworn the oath of every Green Lantern—that no evil will escape his sight.', 'green_lantern.jpg', 5),
(23, 'Ganthet', 'Ganthet is one of the Guardians of the Universe, but much less stern and \'by-the-book\' than most of these colleagues, showing a human-like, and less stern, personality by displays of empathy, kindness, and concern for individuals, rather than thinking ...', 'Ganthet is one of the Guardians of the Universe, but much less stern and \'by-the-book\' than most of these colleagues, showing a human-like, and less stern, personality by displays of empathy, kindness, and concern for individuals, rather than thinking only of the Green Lantern Corps. In such DC crossover limited series such as Kingdom Come, this particular Guardian is presented as being part of the [[Quintessence, a group of gods who oversee their entire universe (or multiverse), yet shows signs of focusing especially on Earth.\r\n\r\nAlthough he has been[when?] portrayed much as are the other Guardians, he is often distinguished by tying his hair into a long ponytail, in contrast to the shorter and unkempt hair of other male Guardians.[citation needed]', 'Profile_Ganthet.jpg', 5),
(24, 'Templar Guardians', 'The Templar Guardians were a group of the Guardians of the Universe that were formed early in their history when they decided to wage a campaign to bring order to the universe in order to save it from the destruction of chaos. During this time, the ...', 'The Templar Guardians were a group of the Guardians of the Universe that were formed early in their history when they decided to wage a campaign to bring order to the universe in order to save it from the destruction of chaos. During this time, the Oans had imparted great power from the Emotional Spectrum into a being that they called The First Lantern. However, they were forced to imprison this being due to the threat posed by him. According to Krona, the Guardians had betrayed the First Lantern and sealed him away. They had designed a prison for the First Lantern that became known as The Chamber of Shadows. Upon imprisoning The First Lantern, a group of Oans remained behind to serve as wardens where they ensured that their prisoner would never be free due to the dangers posed by him. These Oans included Reegal who bade farewell to their brethren and awaited the time for the Guardians robotic Manhunters to save the universe from chaos.', 'templarGuardians.jpg', 5),
(25, 'Dawlakispokpok', 'Dawlakispokpok left his fellow Guardians and raised a family with his Zamaron wife. Together they attempted to rewrite history and destroy Krona before he could unleash evil upon the universe. Dawlakispokpok employed dangerous method that threatened ...', 'Dawlakispokpok left his fellow Guardians and raised a family with his Zamaron wife. Together they attempted to rewrite history and destroy Krona before he could unleash evil upon the universe. Dawlakispokpok employed dangerous method that threatened the fabric of time, forcing Ganthet, Percival, and Hal Jordan to stop his plan.', 'Dawlakispokpok.jpg', 5),
(26, 'Dennap', 'Dennap was a female Oan who was born following the rebirth of the Guardians of the Universe after their near destruction at the hands of Parallax. She was present on her homeworld with Ganthet when the older Oan diverted a teleportation beam from ...', 'Dennap was a female Oan who was born following the rebirth of the Guardians of the Universe after their near destruction at the hands of Parallax. She was present on her homeworld with Ganthet when the older Oan diverted a teleportation beam from Earth in order to save John Stewart from a reborn Burning Martian. Badly wounded, Ganthet was involved in healing him though Dennap did not understand why he was so frustrated and adamant to save the Green Lantern as she commented that their Green Lantern Power Rings did not make them immortal or invulnerable to death. However, Ganthet revealed that John Stewart\'s injury was due to one of his peoples ancient actions - namely their defeat and mass genetic manipulation of the Martian race in the distant past.', 'Dennap.jpg', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `properties`
--

CREATE TABLE `properties` (
  `property_ID` int(3) NOT NULL,
  `propertyText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `properties`
--

INSERT INTO `properties` (`property_ID`, `propertyText`) VALUES
(1, 'Flying'),
(2, 'Laser eyes'),
(3, 'Super Strenght'),
(4, 'Super Speed'),
(7, 'Creation of god'),
(8, 'lasso of truth'),
(9, 'Mastery of time'),
(10, 'telepathic control'),
(11, 'Survives under water'),
(12, 'Gravity'),
(13, 'Radiation'),
(14, 'Heat'),
(15, 'Light'),
(16, 'Blast of concussive force'),
(17, 'Stamina'),
(18, 'High tech gear'),
(19, 'Martial arts'),
(20, 'High intelligence'),
(21, 'Agillity'),
(22, 'Reflexes'),
(23, 'Visions of savitar'),
(24, 'Combat stragety'),
(25, 'Gymnastic '),
(26, 'Desire to kill batman and robin'),
(27, 'Telekinesis'),
(28, 'Criminology'),
(29, 'Law'),
(30, 'Teleportation'),
(31, 'Empathy'),
(32, 'Astrial projection'),
(33, 'Mimicry'),
(34, 'Metamorph'),
(35, 'Telepathy'),
(36, 'Immortal'),
(37, 'Healing');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `rating_ID` int(3) NOT NULL,
  `ratingReview` longtext NOT NULL,
  `ratingInt` int(5) NOT NULL,
  `ratingDate` char(34) DEFAULT NULL,
  `character_ID` int(3) NOT NULL,
  `user_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`rating_ID`, `ratingReview`, `ratingInt`, `ratingDate`, `character_ID`, `user_ID`) VALUES
(1, 'What a good super Hero. He is so rich and the best there is!', 5, '2-3-2020', 8, 1),
(18, '                What a hunk', 7, '2020-03-17 17:47:27', 1, 1),
(19, '             He is nothing worth!   ', 0, '2020-03-17 17:52:03', 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teams`
--

CREATE TABLE `teams` (
  `team_ID` int(3) NOT NULL,
  `teamName` varchar(45) NOT NULL,
  `teamImage` varchar(255) NOT NULL,
  `teamDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teams`
--

INSERT INTO `teams` (`team_ID`, `teamName`, `teamImage`, `teamDescription`) VALUES
(1, 'Justice League', 'jl.png', 'Where does the world’s most powerful being go when he needs help? What does the Fastest Man Alive do when he’s not fast enough? Who has the Dark Knight’s back when he’s facing extinction-level events?\r\n\r\nGreater than the sum of their awe-inspiring parts, the Justice League handles threats too massive for any single hero. Made up of the World’s Greatest Super Heroes, their membership inflates and contracts around each new threat, but the core line-up is known as the Big Seven: Superman, the most powerful hero in the world; Batman, the apex of physical and mental human achievement; Wonder Woman, the Amazon’s princess and greatest warrior; Green Lantern, an intergalactic cop armed with his own power ring; the super-fast Flash; Aquaman, King of the Seven Seas; and Cyborg, a half-man/half-robot outfitted with the world’s most advanced technology.\r\n\r\nAn A-team of crusaders with a superpowered bench deep enough to handle any cosmic foe, these heroes are all still very human at heart, plagued with the flaws that haunt any of us.'),
(2, 'Flash Family', 'ff.png', ''),
(3, 'Badman And Robin', 'br.png', ''),
(4, 'Teen Titans', 'tt.png', ''),
(5, 'Guardians of the universe', 'gotu.png', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `user_ID` int(10) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_ID`, `userName`, `userPass`, `firstName`, `lastName`) VALUES
(1, 'MariaVdD', 'Admin', 'Maria', 'Voor den Dag');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `characterproperties`
--
ALTER TABLE `characterproperties`
  ADD PRIMARY KEY (`characterProperties`);

--
-- Indexen voor tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_ID`);

--
-- Indexen voor tabel `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_ID`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_ID`);

--
-- Indexen voor tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_ID`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `characterproperties`
--
ALTER TABLE `characterproperties`
  MODIFY `characterProperties` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT voor een tabel `characters`
--
ALTER TABLE `characters`
  MODIFY `character_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `properties`
--
ALTER TABLE `properties`
  MODIFY `property_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `team_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
