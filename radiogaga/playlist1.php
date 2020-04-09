<?php
// this is an example of how to create an array
// and how to loop through the contents of an array

// imagine we want to store information about footballteams
// and display / show (some of) the information in an HTML table...

// first, create an array with the info

// the info we store are:
// - name of the footballteam
// - name of the country
// - logo of the club
// - name of the football league
// - 3 players, containing:
//      - name of the player
//      - age of the player
//      - position of the player
//      - nationality
//      - image

// define the array with info about a football team and some of its players..

$album = array
(
    "album"         => "...En Door",
    "artiest"       => "Snollebollekes",
    "albumCover"    => "images/Snollebollekes.jpg",
    // sub array in album with tracks info
    "tracks"        => array
    (
        array
        (
            "trackName"         =>  "Vrouwkes",
            "trackDuration"     =>  "2:48",
            "trackMp3"          => "",
        ),
        array
        (
            "trackName"         =>  "Springen Nondeju",
            "trackDuration"     =>  "2:48",
            "trackMp3"          => "",
        ),
        array
        (
            "trackName"         =>  "Feest waarvan ik morgen niks meer weet (ft. Coen & Sander)",
            "trackDuration"     =>  "3:16",
            "trackMp3"          => "",
        ),
    )
);

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="Radio Gaga. - Enjoy The Greatest Hits">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Radio Gaga.</title>
</head>
<body>
    <!--This is the navigation bar-->
	<header id="header">
		<div id=logo><a href="index.html">RadioGaga.</a></div>
		<nav id=main-navigation>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="playlist1.html">Playlist</a></li>
			</ul>
		</nav>
    </header>


<div id="multimedia">
    <!--In this div are the albums displayed-->
    <div id="album-container">
        <a href="playlist1.html">
            <img alt="Snollebollekes" src="images/Snollebollekes.jpg" width="200" height="200">
        </a>
        <a href="playlist2.html">
            <img alt="Nickelback" src="images/Nickelback.jpg" width="200" height="200">
        </a>
        <a href="playlist3.html">
            <img alt="Once Monster" src="images/Once-Monsters.jpg" width="200" height="200">
        </a>
    </div>
    <div id="playlist-container">
        <!--Here is the video on top-->
        

        <!--Here is the table form whithout javascript-->
        <table>
            <thead>
                <tr> 
                    <th>Track</th>
                    <th>Title</th>
                    <th>Time</th>
                    <th>Play</th>
                </tr>
            </thead>
            <tbody>
<?php
            $num = 1;

    foreach($footballTeams["players"] as $player)
        {
?>
    <tr>
        <td>
<?php
        echo $num;
?>
        </td>
        <td>
<?php
        echo $track["playerName"];
?>
        </td>
        <td>
<?php
        echo $player["playerAge"];
        ?>
        </td>
        <td>
        <?php
        echo $player["playerPosition"];
        ?>
        </td>
        <td>
        <?php
        echo $player["playerNationality"];
?>
        </td>
        <td>
        <img src="<?php echo $player["playerImage"]; ?>" alt="" width="125px">
        </td>
    </tr>
    <?php
    $num++;
}
?>
            </tbody>
        </table>
    </div>
    <div class="clearfix"></div>
</div>

</body>

<!--This is the information that you can see on the bottom os the page-->
<address id=footer>
	Made by: Maria Voor den Dag <br>
	<u>Contact:</u><br> E-mail: 84764@roc-teraa.nl<br>
	Thank you for supporting me!
</address>
</html>