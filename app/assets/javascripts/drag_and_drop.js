    $(function() {
      $( ".scrap-options .scrap" ).draggable({ appendTo: ".page", helper: "clone", revert: "invalid",
        stop: function(event, ui){
          var scrap = ui.helper.clone();
          // var pagetop = $(".page").position().top;
          // var pageleft = $(".page").position().left;
          // var scraptop = $(".ui-draggable-dragging").position().top;
          // var scrapleft = $(".ui-draggable-dragging").position().left;
          // alert("pagetop: " + pagetop+ " pageleft: "+pageleft+" scraptop: " + scraptop+ " scrapleft: "+scrapleft);
          // scrap.css({"position":"absolute", "top":scraptop-pagetop+"px", "left": scrapleft-pageleft+"px"})
          scrap.appendTo(".page");
          $( ".page .scrap" ).draggable({ containment: "parent" });
        }
       });
      $( ".page .scrap" ).draggable({ containment: "parent" });
      $( ".page" ).droppable();
      $( "#scrapbook-side-bar" ).accordion();
      $(".background-button").click(function(){
        $(".page").css('background-image', 'url(' + $(this).find("img").attr("src")+ ')');
      })
    });




