$( document ).ready(function() {
                           
    	$( ".home_tabs" ).tabs();
    	$( "#post_tabs" ).tabs();
    	$( "#event_date" ).datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: "yy-mm-dd"
        });
    	
});
