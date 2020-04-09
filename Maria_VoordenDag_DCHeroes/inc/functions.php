<?php

function myDump($varToDump)
{
    echo "<pre>";
    var_dump($varToDump);
    echo "</pre>";
}

function connectDatabase()
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "dc_heroes";
    
    // Create connection with a new object
    $conn = new mysqli($servername, $username, $password, $dbname) or die($conn->error);

    return $conn;
}



function getTeams()
{

    $conn = connectDatabase();

    // empty array will be filled and returned to index.php
    $teams = [];

    // the SQL
    $selectTeamsSQL = "SELECT `teams`.`team_ID`, `teamImage`, `teamName`, COUNT(`character_ID`) AS 'characterCount' FROM `characters`, `teams` WHERE `characters`.`team_ID` = `teams`.`team_ID` GROUP BY `teamName` ORDER BY `teams`.`team_ID`, `teamImage` ASC";

    // run the SQL
    $result = mysqli_query($conn, $selectTeamsSQL) or die(mysqli_error($conn)); 

    // loop through the result
    while($row = mysqli_fetch_assoc($result))
    {
        // add team to the array
        $teams[] = $row;
    }
 
    
    // return the array teams
    return $teams;
}

function getCharacters($teamId = false)
{

    $conn = connectDatabase();

    // empty array will be filled and returned to index.php
    $characters = [];

    // the SQL
    if($teamId)
    {
        // if teamId is given
        // get characters from that team
        $selectCharactersSQL = "SELECT * FROM `characters` WHERE `team_ID` = " . $teamId;
    }
    else
    {
        // if not, get all characters
        $selectCharactersSQL = "SELECT * FROM `characters` ORDER BY `team_ID`";
    }

    // run the SQL
    $result = mysqli_query($conn, $selectCharactersSQL) or die(mysqli_error($conn)); 

    // loop through the result
    while($row = mysqli_fetch_assoc($result))
    {
        // add team to the array
        $characters[] = $row;
    }
 
    
    // return the array teams
    return $characters;
}

function getCharacter($characterId = false)
{

    $conn = connectDatabase();
    
    // empty array will be filled and returned to index.php
    $character = [];

    // the SQL
    if($characterId)
    {
        // if characterId is given
        // get that specific character
        $selectCharactersSQL = "SELECT * FROM `characters` WHERE `character_ID` = $characterId ORDER BY RAND() LIMIT 1";
    }
    else
    {
        // if not, get just a random one
        $selectCharactersSQL = "SELECT * FROM `characters` ORDER BY RAND() LIMIT 1";
    }

    // run the SQL
    $result = mysqli_query($conn, $selectCharactersSQL) or die(mysqli_error($conn)); 

    // loop through the result
    $character = mysqli_fetch_assoc($result);

    // return the array teams
    return $character;
}

function getReviews($characterId = false)
{
    $conn = connectDatabase();
    
    // empty array will be filled and returned to index.php
    $reviews = [];

    // the SQL
    if($characterId)
    {
        // if reviewId is given
        // get that specific Review
        $selectReviewsSQL = "SELECT * FROM `rating` JOIN `users` ON `users`.`user_ID` = `rating`.`user_ID` WHERE `character_ID` = " .  $characterId;
    }
    else
    {
        // if not
        $selectReviewsSQL = "SELECT * FROM `rating`";
    }

     // run the SQL
     $result = mysqli_query($conn, $selectReviewsSQL) or die(mysqli_error($conn)); 
    
     // loop through the result
    while($row = mysqli_fetch_assoc($result))
    {
        // add team to the array
        $reviews[] = $row;
    }
    
    return $reviews;
}

function insertReview()
{
    $conn = connectDatabase();

        $insertReviewSQL = "INSERT INTO `rating` VALUES (null, '" . $_POST['reviewText'] . "' , '" . $_POST['rating'] . "' , now(),'" . $_POST['character_ID'] . "', 1)"; 
        mysqli_query($conn, $insertReviewSQL) or die(mysqli_error($conn)); 
        echo mysqli_error($conn);
}
function getPowers($characterId = false)
{
    $conn = connectDatabase();

    if($characterId){
        $insertPowersSQL = "SELECT * FROM `properties` JOIN `characterproperties` ON `properties`.`property_ID` = `characterproperties`.`property_ID`  WHERE `character_ID` =" . $characterId;
    }
    else{
        $insertPowersSQL = "SELECT * FROM `properties` JOIN `characterproperties` ON `properties`.`property_ID` = `characterproperties`.`property_ID`";
    }
       // run the SQL
       $result = mysqli_query($conn, $insertPowersSQL) or die(mysqli_error($conn)); 

       while($row = mysqli_fetch_assoc($result)) 
       {
        // loop through the result
        $powers[] = $row;
       }   
       // return the array teams
       return $powers;
}
?>