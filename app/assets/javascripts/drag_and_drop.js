    $(function() {
      $( ".scrap-options .scrap" ).draggable({ appendTo: ".page", helper: "clone", revert: "invalid",
        stop: function(event, ui){
          ui.helper.clone().appendTo(".page");
          $( ".page .scrap" ).draggable({ containment: "parent" });
        }
       });
      $( ".page .scrap" ).draggable({ containment: "parent" });
      $( ".page" ).droppable();
      $( "#scrapbook-side-bar" ).accordion();
    });




