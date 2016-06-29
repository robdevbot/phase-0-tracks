var best = document.getElementById("bold");
best.style.border = "2px black solid";

var surfButton = document.getElementById("surfbutton");


var sharkGif = document.getElementById("surfboard");
sharkGif.hidden = true;


function revealShark(event) {
    sharkGif.hidden = false;
}

surfButton.addEventListener("click", revealShark );