//variables
var buttons = document.getElementsByClassName('button');
var displayDiv = document.getElementById("display");
var tekstDiv = document.getElementById("tekst");
var audioWin = document.getElementById("audioWin");
var audioDevil = document.getElementById("audioDevil");
var audioJamesBond = document.getElementById("audioJamesBond");
var audioIdiot = document.getElementById("audioIdiot");
var audioEmpty = document.getElementById("audioEmpty");
var audioAngel = document.getElementById("audioAngel");
var audioSnoop = document.getElementById("audioSnoop");
var audioLose = document.getElementById("audioLose");
var code = "";
var counterGood = 0;
var counterWrong = 0;
var counterSpecial = 0;

//function to get number from button out of index.html
function getNumber(button) {
    
    code = code + button.value;
    displayDiv.innerHTML = code;
    document.getElementById("rb").style.background = "darkred";
    document.getElementById("gb").style.background = "darkgreen";
    document.getElementById("yb").style.background = "yellow";


    if(code.length == 3){
        if(code == "258"){
            blinkFunc("gb","lightgreen","darkgreen");
            tekstDiv.innerHTML = "Correct!";
            audioWin.play();
            counterGood++;
            document.getElementById("cg").innerHTML = counterGood;
           console.log(counterGood);
        }
        else if(code == "000"){
            blinkFunc("yb","snow","yellow");
            tekstDiv.innerHTML = "One of 6 special codes! You found emptiness";
            audioEmpty.play();
            counterSpecial++;
            document.getElementById("cs").innerHTML = counterSpecial;
        }
        else if(code == "666"){
            blinkFunc("yb","purple","yellow");
            tekstDiv.innerHTML = "One of 6 special codes! You found the devil";
            audioDevil.play();
            counterSpecial++;
            document.getElementById("cs").innerHTML = counterSpecial;
        }
        else if(code == "123"){
            blinkFunc("yb","salmon","yellow");
            tekstDiv.innerHTML = "One of 6 special codes! Wauw you can count!";
            audioIdiot.play();
            counterSpecial++;
            document.getElementById("cs").innerHTML = counterSpecial;
        }     
        else if(code == "222"){
            blinkFunc("yb","gold","yellow");
            tekstDiv.innerHTML = "One of 6 special codes! You found an angel";
            audioAngel.play();
            counterSpecial++;
            document.getElementById("cs").innerHTML = counterSpecial;
        }  
        else if(code == "007"){
            blinkFunc("yb","black","yellow");
            tekstDiv.innerHTML = "One of 6 special codes! You found James Bond";
            audioJamesBond.play();
            counterSpecial++;
            document.getElementById("cs").innerHTML = counterSpecial;
        }
        else if(code == "420"){
            blinkFunc("yb","yellowgreen","yellow");
            tekstDiv.innerHTML = "One of 6 special codes! You found Snoop Dogg";
            audioSnoop.play();
            counterSpecial++;
            document.getElementById("cs").innerHTML = counterSpecial;
        }
        else{
            blinkFunc("rb","red","darkred");
            tekstDiv.innerHTML = "Incorrect";
            audioLose.play();
            counterWrong++; 
            document.getElementById("cw").innerHTML = counterWrong;
        }
        code = "";
    }

}

function blinkFunc(blockId,lightColor,darkColor){

    disableButtons();

    var Block = document.getElementById(blockId);

    //counter start at zero
    var intervalTimer = 0;

    var blink = setInterval(function() {

        //add +1 every time the setinterval function runs
        intervalTimer++;

        //method to show div on and off
        //change the css of the green and red box to create a blinking effect
        if (Block.style.background == darkColor) {
            Block.style.background = lightColor;
        }else {
            Block.style.background = darkColor;
        }

        //check if the interval has runned six times
        if(intervalTimer == 10) {

            enableButtons();
            tekstDiv.innerHTML = "";
            displayDiv.innerHTML = "";
            //ClearInterval function stops the interval after 10 times
            clearInterval(blink);
            audioWin.pause();
            audioDevil.pause();
            audioJamesBond.pause();
            audioSnoop.pause();
            audioAngel.pause();
        }

    }, 500);
}

function disableButtons() {
    //disable buttons with atribute disable
    //not possible to click more than three times

    for(i=0; i < buttons.length; i++) {
        buttons[i].setAttribute('disabled', 'disabled');
    }

}

function enableButtons() {

    //used to loop through all buttons and enable them again, remove attribute disabled
    for(i=0; i < buttons.length; i++) {
        buttons[i].removeAttribute('disabled');
    }

}
