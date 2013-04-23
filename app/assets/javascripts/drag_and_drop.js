    $(function() {
      $( ".scrap-options .scrap" ).draggable({ appendTo: ".page", helper: "clone", revert: "invalid",
        stop: function(event, ui){
          var scrap = ui.helper.clone();
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

      
      $('#new_scrapbook_page').click(function() {
        var html = $('.page')[0].outerHTML;
        $('#new_scrapbook_page_html').val(html);
      });
    });




