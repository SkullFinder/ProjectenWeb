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

$footballTeams = array
(
    "footballTeam"  => "PSV",
    "country"       => "Netherlands",
    "clubLogo"      => "img/clubs/psv.jpg",
    "league"        => "KPN eredivisie",
    // sub array in footballTeams with players info
    "players"       => array
    (
        array
        (
            "playerName"        =>  "Gaston Pereiro",
            "playerAge"         =>  24,
            "playerPosition"    => "midfielder",
            "playerNationality" => "Uruguay",
            "playerImage"       => "img/players/gaston_pereiro.jpg",
        ),
        array
        (
            "playerName"        =>  "Donyell Malen",
            "playerAge"         =>  19,
            "playerPosition"    => "striker",
            "playerNationality" => "Dutch",
            "playerImage"       => "img/players/donyell_malen.jpg",
        ),
        array
        (
            "playerName"        =>  "Timo Baumgartl",
            "playerAge"         =>  23,
            "playerPosition"    => "defender",
            "playerNationality" => "German",
            "playerImage"       => "img/players/timo_baumgartl.jpg",
        ),
    )
);

?>
<html>
<head>
    <title>An Array Of Football Teams And Players</title>
    <meta name="keywords" content="PHP, HTML, CSS, Arrays, Loops, Example, ICT College">
    <meta name="description" content="This is an example for lessons Webdevelopment @ ICT College">
    <meta name="author" content="Peter Nocker">
</head>
<body>
<div>
<img src="<?php echo $footballTeams["clubLogo"]; ?>" alt="">
</div>
<table border="1" width="80%" align="center">
    <thead>
        <tr>
            <th>#</th>
            <th>Player</th>
            <th>Age</th>
            <th>Position</th>
            <th>Nationality</th>
            <th>Image</th>
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
            echo $player["playerName"];
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
    <tfoot>
        <tr>
            <td colspan="6">
            &copy; 2019, Peter N&ouml;cker
            </td>
        </tr>
    </tfoot>
</table>
</body>
</html>

