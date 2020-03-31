<?php
//The variables  
$num1 = 0;
$num2 = 0;
$total = 0;
$keuze = "";
$error = "";

//isset checks if the btn type=submit is used
if (isset($_POST["submit"])) 
{
    $num1 = $_POST["Number1"]; //actie 1
    $num2 = $_POST["Number2"]; //actie 2
    $keuze = $_POST["Operator"]; //actie 3

    //all code to calculate     
    if (is_numeric($num1) && is_numeric($num2)) 
    {
        if ($keuze == "plus") 
        {
            $total = $num1 + $num2;
        }
        if ($keuze == "min") 
        {
            $total = $num1 - $num2;
        }
        if ($keuze == "multiply") 
        {
            $total = $num1 * $num2;
        }
        if ($keuze == "divide") 
        {
            if($num2 == 0)
            {
                $error = "Can not devide by 0!";
            }
            else
            {
                $total = $num1 / $num2;
            }
        }
        if ($keuze == "pow") 
        {
            $total = pow($num1, $num2);
        } 
    }
    else if(is_numeric($num1))
    {
        if ($keuze == "sqrt") 
        {
            $total = sqrt($num1);
        }
        if ($keuze == "km-m") 
        {
            $total = $num1 * 0.621371192;
        }
        if ($keuze == "m-km")
        {
            $total = $num1 * 1.609344;
        }
    }
    else
    {
        $error = "Put numbers in!";
    }
}
?>
<html>

<head>
    <!-- Style Sheat (= CSS) -->
    <link rel="stylesheet" type="text/css" href="calc.css">

    <!-- Character set -->
    <meta charset="utf-8">

    <!-- Website description = Omschrijving -->
    <meta name="description" content="My first website">

    <!-- Tittle of my website -->
    <title>Calculator</title>
</head>

<body>
    <div class="container">
        <div class="top-part" id="answerBox">
            <?php
            if (isset($_POST["submit"])) 
            {
                if($error != null){
                    echo $error;
                }
                else
                {
                    echo $total;
                }
            } 
            else 
            {
                echo "0";
            }
            ?>
        </div>
        <div class="bottom-part">
            <form method="POST" action="" autocomlpete="off">
                <ul>
                    <li>
                        <label>Number 1:</label>
                        <input name="Number1" class="input-numbers" type="text" value="" placeholder="Your first number" pattern="^[0-9]+\.?[0-9]*$" title="Use only numbers and dots">
                    </li>
                    <li>
                        <label>Operator:</label>
                        <select name="Operator" id="operator-list">
                            <option value="plus">+</option>
                            <option value="min">-</option>
                            <option value="multiply">*</option>
                            <option value="divide">/</option>
                            <option value="sqrt">Extraction of roots</option>
                            <option value="pow">Power</option>
                            <option value="km-m">Km to Mile</option>
                            <option value="m-km">Mile to Km</option>
                        </select>
                    </li>
                    <li id="second-input">
                        <label>Number 2:</label>
                        <input name="Number2" class="Input-numbers" type="text" value="" placeholder="Your second number" pattern="^[0-9]+\.?[0-9]*$" title="Use only numbers and dots">
                    </li>
                    <li>
                        <label>Decimals:</label>
                        <input id="decimals-input" class="input-numbers" type="text" name="SliderDecimals" placeholder="How many decimals?">
                        <input id="decimals-slider" class="range-slider" type="range" min="1" max="10" step="1" value="1">
                    </li>
                    <li>
                        <input class="btn-calculate" name="submit" type="submit" value="Calculate">
                        <input class="btn-reset" name="submit" type="reset" value="Reset" onclick="resetAnswer()">
                    </li>
                </ul>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        //You can choose how many decimals you want to see in your answer
        let decimalSlider = document.getElementById("decimals-slider");
        let decimalInput = document.getElementById("decimals-input");

        decimalSlider.oninput = function() 
        {
            decimalInput.value = this.value;
        }
    </script>
    <script type="text/javascript">
        //Hide second input when using Extraction of roots (value=sqrt on row 127)
        let operaterlist = document.getElementById("operator-list");
        let secondinput = document.getElementById("second-input");

        operaterlist.oninput = function() 
        {
            let selectedOperater = this.value;

            if (selectedOperater == "sqrt" || selectedOperater == "km-m" || selectedOperater == "m-km") 
            {
                secondinput.style.display = "none";
            } 
            else 
            {
                secondinput.style.display = "block";
            }
        }
        //Reset answer value
        var answerBox = document.getElementById('answerBox');
        function resetAnswer()
        {
            answerBox.innerHTML = '0';
        }
    </script>
</body>

</html>