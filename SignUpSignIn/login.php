<?php
session_start();
include "inc/database.php";


if(isset($_POST["submit"]))
{
    if(!$conn)
    { 
        die("Could not connect: " . mysqli_error($conn));
    }
    else
    {
        $errors = [];
        $email = trim($_POST["email"]);
        $password = trim($_POST["password"]);

        if($email == "")
        {
            array_push($errors, "No email was filled in");
        }
        if($password == "")
        {
            array_push($errors, "No password was filled in");
        }

        if(count($errors) === 0){
        $query = "SELECT `user_ID` FROM `users` WHERE (`email` = '$email' AND `password` = '$password');";
        //connectie meegeven en de query meegeven zodat hij de query uitvoert
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);
        $count = mysqli_num_rows($result);

        if($count == 1) { 
            $_SESSION['user_ID'] = $row;
            echo "Logged in";
            
        }
        else{
            echo "Username or password incorrect";
        }
        }
        else {
            foreach($errors as $error)
            {
                echo $error;
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
    <title>login</title>
</head>
<body>

<div id=login>
    <h2><b>LOGIN</b></h2>
        <form id="login" method="POST">
        <input type="email" name="email" placeholder="Fill in your e-mail">
        <input type="password" name="password" placeholder="Fill in your password">
        <a href="index.php">Sign up for free</a>
        <input type="submit" name="submit" value="login">
        </form>
</div>

</body>
</html>