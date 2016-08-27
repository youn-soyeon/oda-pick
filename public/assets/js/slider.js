$( function() {
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 100,
      values: [ 0, 10 ],
      slide: function( event, ui ) {
        $( "#amount" ).val(ui.values[ 0 ] + "만원" + " - " + ui.values[ 1 ] + "만원" );
      }
    });
    $( "#amount" ).val($( "#slider-range" ).slider( "values", 0 ) + "만원" +
      " - " + $( "#slider-range" ).slider( "values", 1 ) + "만원" );
  } );
