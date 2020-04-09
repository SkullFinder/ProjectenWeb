<?Php 
session_start();
include "inc/database.php";

if(isset($_POST["submit"]))
{
    if(!$conn)
    { 
        die("Could not connecet: " . mysqli_error($conn));
    }
    else
    {
        $errors = [];
        //Haalt spaties weg aan het begin en aan het eind
        //Haalt speciale characters weg
        $firstname = mysqli_real_escape_string($conn, trim($_POST["firstname"])); 
            if($firstname == ""){
                $errors[] = "Fill in your firstname";
            }

        $lastname = mysqli_real_escape_string($conn, trim($_POST["lastname"]));
            if($lastname == ""){
                $errors[] = "Fill in your lastname";
            }

        $streetname = mysqli_real_escape_string($conn, trim($_POST["streetname"]));
            if($streetname == ""){
                $errors[] = "Fill in your streetname";
            }

        $housenumber = mysqli_real_escape_string($conn, trim( $_POST["housenumber"]));
            if($housenumber == ""){
                $errors[] = "Fill in your housenumber";
            }

        $addition = mysqli_real_escape_string($conn, trim($_POST["addition"]));

        $zipcode = mysqli_real_escape_string($conn, trim($_POST["zipcode"]));
            if($zipcode == ""){
                $errors[] = "Fill in your zipcode";
            }

        $cityname = mysqli_real_escape_string($conn, trim($_POST["cityname"]));
            if($cityname == ""){
                $errors[] = "Fill in the name of your city";
            }

        $email = trim($_POST["email"]);
            if($email == ""){
                $errors[] = "Fill in your email";
            }

        $password = trim($_POST["password"]);
            if($password == ""){
                $errors[] = "Fill in a password";
            }
        if(count($errors) === 0){
            //Drie = checkt of variable hetzelfde type is
            //Twee = checkt of waarde hetzelfde is
        $query = "INSERT INTO `users` (`firstName`, `lastname`, `streetname`, `housenumber`, `addition`, `zipcode`, `cityname`, `email`, `password`) 
        VALUES ('$firstname', '$lastname', '$streetname', '$housenumber', '$addition', '$zipcode', '$cityname', '$email', '$password');";
        //connectie meegeven en de query meegeven zodat hij de query uitvoert
        mysqli_query($conn, $query);
        }
        else {
            foreach($errors as $error){
                echo $error;
                echo "<br>";
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="SignUpSignIn" content="register - login">
    <link rel="stylesheet" type="text/css" href="CSS/Stylesheet.css" />
    <title>SignUp</title>
</head>
<body>
    <label><h3>Register</h3></label>
    <div id=form>
    <form id="register" method="POST">
        <input type="text" name="firstname" placeholder="Fill in your first name">
        <input type="text" name="lastname" placeholder="Fill in your last name">
        <input type="text" name="streetname" placeholder="Fill in your address">
        <input type="number" name="housenumber" placeholder="Fill in your house number">
        <input type="text" name="addition" placeholder="Fill in your addition (if nescesary)">
        <input type="text" name="zipcode" placeholder="Fill in your zipcode">
        <input type="text" name="cityname" placeholder="Fill in your city">
        <input type="email" name="email" placeholder="Fill in your e-mail">
        <input type="password" name="password" placeholder="Fill in a password">
        <input type="password" name="passwordconfirm" placeholder="Confirm password">
        <input type="checkbox" name="ToS" required> <label>Check to agree with our terms!</label>
        <input type="submit" name="submit" value="submit">
    </form>
    </div>
</body>
</html>