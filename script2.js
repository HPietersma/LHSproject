function openReviews(id) {
   
    if (id.parentElement.style.height == "313px") {
        id.parentElement.style.height = "31px";
        id.parentElement.children[1].style.visibility = "hidden";

        id.children[0].style.transform = "rotate(0deg)";

    }
    else {
        id.parentElement.style.height = "313px";
        id.parentElement.children[1].style.visibility = "visible";

        id.children[0].style.transform = "rotate(180deg)";
    }
    console.log(id);
    //id.lastChild.style.height = "300px";
}

function showInlog() {
    let link = document.getElementById("inlog");
    
    if (link.style.visibility === "visible") {
        link.style.visibility = "hidden";
    }
    else {
        link.style.visibility =  "visible";
    }
}

function showRegistration() {
    let link = document.getElementById("registration");
    
    if (link.style.visibility === "visible") {
        link.style.visibility = "hidden";
    }
    else {
        link.style.visibility =  "visible";
        
    }
    document.getElementById("inlog").style.visibility = "hidden";
}

function colorStar(element, rating) {
    let parent = element.parentElement.parentElement;
    let color = "#fdbd46"
    let grey = "#b9b9b9"

    if (rating == 1) {
        parent.children[0].style.color = color;
        parent.children[1].style.color = grey;
        parent.children[2].style.color = grey;
        parent.children[3].style.color = grey;
        parent.children[4].style.color = grey;
    }
    if (rating == 2) {
        parent.children[0].style.color = color;
        parent.children[1].style.color = color;
        parent.children[2].style.color = grey;
        parent.children[3].style.color = grey;
        parent.children[4].style.color = grey;
    }
    if (rating == 3) {
        parent.children[0].style.color = color;
        parent.children[1].style.color = color;
        parent.children[2].style.color = color;
        parent.children[3].style.color = grey;
        parent.children[4].style.color = grey;
    }
    if (rating == 4) {
        parent.children[0].style.color = color;
        parent.children[1].style.color = color;
        parent.children[2].style.color = color;
        parent.children[3].style.color = color;
        parent.children[4].style.color = grey;
    }
    if (rating == 5) {
        parent.children[0].style.color = color;
        parent.children[1].style.color = color;
        parent.children[2].style.color = color;
        parent.children[3].style.color = color;
        parent.children[4].style.color = color;
    }
}