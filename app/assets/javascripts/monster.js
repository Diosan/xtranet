$( document ).ready(function() {
                           
    	$( ".home_tabs" ).tabs();
    	$( "#post_tabs" ).tabs();
    	$( ".eventdate" ).datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: "yy-mm-dd"
        });
    	
});
