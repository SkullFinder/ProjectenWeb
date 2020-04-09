<?php
include "../inc/dbConn.php";
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="GameWorld - Buy games for the best price">
	<link rel="stylesheet" type="text/css" href="../CSS/Style.css" />
	<link rel="icon" type="image/png" href="../img/Logo/favicon-16x16.png" sizes="16x16" />
	<title>GameWorld</title>
</head>
<?php
	include "../inc/nav.php";
?>
    <?php
    if(isset($_GET['console']))
    {
        $console = $_GET['console'];
        switch($console){
            case 1:
            echo "<body class=\"platform\" id=\"playstation\"><h1>Playstation 2</h1>";
                break;
            case 2:
            echo "<body class=\"platform\" id=\"xbox\"><h1>Xbox 360</h1>";
                break;
            case 3:
            echo "<body class=\"platform\" id=\"pc\"><h1>Pc</h1>";
                break;
        }
    }
    else
    {
        //"" is not same as 0 or NULL
        $console = "";
    }
    //Make a SQL that shows all information from both tables
    $sql = "SELECT * FROM `games`, `console` WHERE `games`.`Console_ID` = `console`.`Console_ID`";
    if(isset($console) && $console != "")
    { 
        $sql.= " AND `console`.`Console_ID` = ".$console."";
    }
    $sql.= " ORDER BY `games`.`Game_ID` ASC";
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result))
    {
        $games[] = $row;
    }
    ?><div class="GameContainer"><?php
    foreach($games as $key=>$game)
    {
        ?>
        <div class="game">
            <img src="../img/games/<?php echo $game['Img'] ?>">
            <h3><?php echo $game['Title'];?></h3>
            <h5><?php echo $game['Description'];?></h5>
           <div class="price"><h3>€<?php echo $game['Price'];?></h3></div>
        </div>
        <?php
    }
      ?>
</body>
<!--This is the information that you can see on the bottom of the page-->
<?php
include "../inc/footer.php";
?>


</html>