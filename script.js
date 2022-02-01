function add() {

    let link = document.getElementById("add");
    
    if (link.style.visibility === "visible") {
        link.style.visibility = "hidden";
    }
    else {
        link.style.visibility =  "visible";
        document.getElementById("edit").style.visibility = "hidden";
        document.getElementById("delete").style.visibility = "hidden";
    }
}


function edit() {

    let link = document.getElementById("edit");
    
    if (link.style.visibility === "visible") {
        link.style.visibility = "hidden";
    }
    else {
        link.style.visibility =  "visible";
        document.getElementById("delete").style.visibility = "hidden";
        document.getElementById("add").style.visibility = "hidden";
    }
}


function del() {

    let link = document.getElementById("delete");
    
    if (link.style.visibility === "visible") {
        link.style.visibility = "hidden";
    }
    else {
        link.style.visibility =  "visible";
        document.getElementById("edit").style.visibility = "hidden";
        document.getElementById("add").style.visibility = "hidden";
    }
}









function iconHover(id) {
    id.style.fontSize = "18px"
}

function iconLeave(id) {
    id.style.fontSize = "16px";
}

