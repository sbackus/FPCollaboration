  $(function() {
    $( ".draggable" ).draggable();
    $( ".droppable" ).droppable({
      drop: function( event, ui ) {
        #event runs on drop see http://jqueryui.com/droppable/
      }
    });
  });