$( document ).ready(function() {
                           
    	$( ".home_tabs" ).tabs();
    	$( "#post_tabs" ).tabs();
    	$( ".eventdate" ).datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: "yy-mm-dd"
        });
        $(".gallery_image, .gallery_image_name").click(function () {
            $("#image_frame").attr('src', $(this).attr("href"));
            $("#image_view").dialog({
               width: 700,
               height: 950,
               hide: 'fold',
               show: 'blind',
               modal: true,
               close: function () {
                 $("#thedialog").attr('src', "about:blank");
               }
            });
            return false;
        } );
    	
});
