<?php
//for_loop -> numbers
for($circle=360;$circle<=1080;$circle+=360)
{
    echo $circle /360 . "\n";
}

echo "<br>";
//while_loop -> numbers but also BOOL and variables 
//Vaak in combinatie met database
$driehoek=3;

while($driehoek<=15)
{
echo $driehoek/3 . "\n";
$driehoek += 3;
}

echo "<br>";

//numerice array                0,1,2,3
//multidimensionale array       

$landsteden = ["Nederland" => "Amsterdam",
"België" => "Brussel",
"Rusland" => "Moskou"];

// Vaak in combinatie met array
foreach($landsteden as $land => $steden)
{ 
    echo $land . " heeft als hoofdstad " . $steden . "." . "<br>";;
}

echo "<br>";

//do_while_loop     do voert actie uit zolang er aan de while wordt voldaan. Het wordt dan ook maar 1 keer uitgevoerd.
$aanwezigheid = "Niet";
do
{
    echo "De leerling is vandaag " . $aanwezigheid . " aanwezig" . ".";
    if($aanwezigheid == "Niet")
    {
        $aanwezigheid = "Wel";
    }
    else
    {
        $aanwezigheid = "Niet";
    }
}
while($aanwezigheid=="Wel");


?>

