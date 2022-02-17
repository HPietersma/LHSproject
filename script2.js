function openReviews(id) {
   
    if (id.parentElement.style.height == "300px") {
        id.parentElement.style.height = "31px";
        id.parentElement.children[1].style.visibility = "hidden";
    }
    else {
        id.parentElement.style.height = "300px";
        id.parentElement.children[1].style.visibility = "visible";
    }
    console.log(id);
    //id.lastChild.style.height = "300px";
}