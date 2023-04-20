function tabButton(evt, cityName) {
    var tabContent = document.getElementsByClassName("tabContent");
    var tabLink = document.getElementsByClassName("tabLink");
  
    //hide all the buttons
    for (var i = 0; i < tabContent.length; i++) {
      tabContent[i].style.display = "none";
    }
  
    //Don't make all the buttons active anymore
    for (var i = 0; i < tabLink.length; i++) {
      tabLink[i].className = tabLink[i].className.replace("active", "");
    }
  
    //show the button that was clicked and make that button active
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += "active";
  }