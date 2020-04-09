<?php
include "inc/functions.php";

$teams = getTeams();

// if team_ID is in URL
if(isset($_GET['team_ID']))
{
    $characters = getCharacters($_GET['team_ID']);
}
else
{
    // if not
    $characters = getCharacters();
}

// if character_ID is in URL
if(isset($_GET['character_ID']))
{
    $singleCharacter = getCharacter($_GET['character_ID']);
    $reviews = getReviews($_GET['character_ID']);
    $powers = getPowers($_GET['character_ID']);
}
else
{
    // if not
    $singleCharacter = getCharacter(); 
    $reviews = getReviews();
    $powers = getPowers();
}

if(isset($_POST['rating']))
{
    insertReview();
}




//myDump($reviews);

?>  
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="style/stylesheet.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div id="RightColumn">
        <div class="Profile">
            <img src="images/<?php echo $singleCharacter['characterImage']; ?>" alt="" width="250px">
        </div>
        <div class="InfoProfile">
            <h3>Information</h3>
            <?php
                echo utf8_encode($singleCharacter['characterDescriptionLong']);
            ?>
        </div>
        <div class="Powers">
            <h3>Powers</h3>
         <?php foreach($powers as $power){
                echo $power['propertyText'] . "<br>";
            } ?>
        </div>
        <div class="Reaction">
            <form action="" method="post">
            <fieldset>
				<div class="rate">
					<input type="radio" id="rating10" name="rating" value="10" />
					<label class="lblRating" for="rating10" title="5 stars">5</label>

				    <input type="radio" id="rating9" name="rating" value="9" />
				    <label class="lblRating half" for="rating9" title="4 1/2 stars">4.5</label>

				    <input type="radio" id="rating8" name="rating" value="8" />
				    <label class="lblRating" for="rating8" title="4 stars">4</label>

				    <input type="radio" id="rating7" name="rating" value="7"  />
				    <label class="lblRating half" for="rating7" title="3 1/2 stars">3.5</label>

				    <input type="radio" id="rating6" name="rating" value="6" />
				    <label class="lblRating" for="rating6" title="3 stars">3</label>

				    <input type="radio" id="rating5" name="rating" value="5" />
				    <label class="lblRating half" for="rating5" title="2 1/2 stars">2.5</label>

				    <input type="radio" id="rating4" name="rating" value="4" />
				    <label class="lblRating" for="rating4" title="2 stars">2</label>

				    <input type="radio" id="rating3" name="rating" value="3" />
				    <label class="lblRating half" for="rating3" title="1 1/2 stars">1.5</label>

				    <input type="radio" id="rating2" name="rating" value="2" />
				    <label class="lblRating" for="rating2" title="1 star">1</label>

				    <input type="radio" id="rating1" name="rating" value="1" />
				    <label class="lblRating half" for="rating1" title="1/2 star">0.5</label>

				    <input type="radio" id="rating0" name="rating" value="0" />
				    <label class="lblRating" for="rating0" title="No star">0</label>
				</div>
                <textarea name="reviewText" id="" cols="30" rows="10" placeholder="Leave a review">
                </textarea>
                <input type="hidden" name="character_ID" value="<?php echo $_GET['character_ID']; ?>">
                <input type="submit" value="Go">
            </form>

        </div>
        <div class="Reviews">
        
            <?php 
                foreach($reviews as $review)
                {
                    ?>
                    <div class="Review">
                        <p class="Date"> <?php echo $review['ratingDate']; ?></p>
                        <p class="User"> <?php echo $review['userName']; ?></p>
                        <p class="Rating"> <?php echo $review['ratingInt']; ?></p>
                        <p class="ReviewText"> <?php echo $review['ratingReview']; ?> </p>
                    </div>
                <?php
                } 
            ?>
        </div>

    </div>

</body>
</html>