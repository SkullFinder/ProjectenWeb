<?php
include "inc/functions.php";

$teams = getTeams();

// if team_ID is in URL
if(isset($_GET['team_ID']))
{
    $singleCharacter = getCharacter($_GET['team_ID']);
    $characters = getCharacters($_GET['team_ID']);
}
else
{
    // if not
    $characters = getCharacters();
    $singleCharacter = getCharacter();
}

// if character_ID is in URL
if(isset($_GET['character_ID']))
{
    $reviews = getReviews($_GET['character_ID']);
}
else
{
    // if not
    $reviews = getReviews();
}


//myDump($reviews);

?>  
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style/stylesheet.css">
    <title>DC Heroes</title>
</head>
<body>
    <header>
         <img id="logo" src="images/Logos/dclogo.png">
         <h3 id="logo2"><a href="index.php">HEROES</a></h3>
    </header>  
    <div id="flex">      
    <nav id="navigation">
    <h1>Teams</h1>
        <div class="NavigationText">
            <ul>
                <?php  
                foreach($teams as $team)
                {?>
                    <li><a href="index.php?team_ID=<?php echo $team['team_ID']; ?>">
                    <img src="images/Logos/<?php echo $team['teamImage'];?>">
                    <?php echo $team['teamName']; echo " [$team[characterCount]]"?></a></li>
                    <?php
                }   
                ?>
            </ul>
        </div>
    </nav>
    <div id="centerColumn">
            <?php
            $alternator = false;
            foreach($characters as $character)
            {   
            ?>
                    <div class="heroes <?php if($alternator){echo "alt-bc";} ?>" >
                    <img src="images/Profile/<?php echo $character['characterImage'];?>">
                        <div class="heroesInfo">
                            <?php echo "<h3>" . $character['characterName'] . "</h3>"; ?>
                            <p><?php echo utf8_encode($character['characterDescriptionShort']); ?></p>
                            <a class="Info-Button" target="InformationColumn" href="InformationColumn.php?character_ID=<?php echo $character['character_ID']; ?>">Check out</a>
                        </div>
                    </div>
            <?php
            $alternator = !$alternator;
            }
            ?>
    </div>
    <iframe id="InfoColumn" src="" frameborder="0" name="InformationColumn"></iframe>
    </div>
    
</body>
</html>