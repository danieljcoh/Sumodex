var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
      /* Toggle between adding and removing the "active" class,
      to highlight the button that controls the panel */
      this.classList.toggle("active");
  
      /* Toggle between hiding and showing the active panel */
      var panel = this.nextElementSibling;
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
}
/*
//Prevent Refresh of Page on Button Click
preventDef.addEventListener('click', function(event){
	
	event.preventDefault();
});

//Stop scrolling on page refresh
$(window).scroll(function() {
  sessionStorage.scrollTop = $(this).scrollTop();
});

$(document).ready(function() {
  if (sessionStorage.scrollTop != "undefined") {
    $(window).scrollTop(sessionStorage.scrollTop);
  }
});

//GET webpage scroll location
		getScroll = () => {
            var position = document.getElementById('position');
            position.innerHTML = ""
            if (window.pageYOffset != undefined) {
                position.innerHTML = " X-axis : " 
                + pageXOffset + " Y-axis : " + pageYOffset;
            } else {
                var x_axis, y_axis, doc = document,
                    ele = doc.documentElement,
                    b = doc.body;
                x_axis = ele.scrollLeft || b.scrollLeft || 0;
                y_axis = ele.scrollTop || b.scrollTop || 0;
                position.innerHTML = " X-axis : "
                + x_axis + " Y-axis : " + y_axis;
            }
        }

//SAVE Scrollbar position
let sidebar = document.querySelector(".reload");

let top = localStorage.getItem("reload-scroll");
if (top !== null) {
  sidebar.scrollTop = parseInt(top, 10);
}

window.addEventListener("beforeunload", () => {
  localStorage.setItem("reload-scroll", sidebar.scrollTop);
});
*/

