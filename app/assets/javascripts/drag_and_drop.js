  $(function() {
    $( ".draggable" ).draggable();
    $( ".droppable" ).droppable({
      drop: function( event, ui ) {
        //# see http://jqueryui.com/droppable/
      }
    });
  });