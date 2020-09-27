<html>

<head>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script>

  $( function() {

    $( "#sortable" ).sortable({
        cancel: '.editor-container',
        axis: "y"
      });

    $( "#sortable" ).disableSelection();

  	} );

  	/**
  		Below function is for highlighting field and it's settings and remove options
  	**/
  	$(document).on("click", ".form-builder-pane-li",function(e){

  		$(".sortable-li-arrow").removeClass("ui-icon ui-icon-arrowthick-2-n-s");
	    $(".ui-state-default").removeClass("ui-state-default"); 
	    $(".selectedControls").hide();

	   	$(this).addClass("ui-state-default");
	   	$(this).children("span[class='sortable-li-arrow']").addClass("ui-icon ui-icon-arrowthick-2-n-s");
	   	$(this).children("div[class='selectedControls']").show();
	});

  	/**
		Below function is for unhighlighting field and it's settings and remove options
	**/
  	$(document).mouseup(function (e) { 
        if ($(e.target).closest(".form-builder-pane-li").length === 0) {
    		 
        	$(".sortable-li-arrow").removeClass("ui-icon ui-icon-arrowthick-2-n-s");
		    $(".ui-state-default").removeClass("ui-state-default"); 
		    $(".selectedControls").hide();
        }
        
    }); 

  	/**
		Below function is for displaying corresponding field specific setting options
	**/
	var elementPropertiesCloneObj = null;
  	$(document).on("click", ".form-element-settings",function(e){
  		jQuery($(this).parent().parent().children('div[class*="form-element-properties"]')).dialog(
			{	
					width: 750,
					title:'Form Element Properties',
					maxHeight:540,
					open: function(){
							elementPropertiesCloneObj = $(this).clone();
							
							jQuery(".ui-button-icon-only").removeAttr("title"); //removing title as same text will be in button html
		           			$("body").append('<div class="modalOverlayStyle"></div>');
		           			$('.ui-widget-header').addClass('ui-widget-header');
	
		           			$('.inlineCss').addClass('inlineCss');
		           			$('.dataTables_scrollHeadInner').addClass('dataTables_scrollHeadInner');
			            	},
					close: function() {

						$(this).dialog('destroy');
						$('.modalOverlayStyle').remove();
						
						var liId = $(this).attr('id');
						$(this).remove();
						$("#form-builder-pane-li-"+liId.split("-")[liId.split("-").length-1]).append(elementPropertiesCloneObj);
						$("#form-element-properties-"+liId.split("-")[liId.split("-").length-1]).hide();
						
						
					}
			});
  	});

  	/**
		Below function is for removing form element
	**/
  	$(document).on("click", ".form-element-remove",function(e){
	   	$(this).parent().parent().remove(); 
	   	if($(".form-builder-pane").text().trim().length == 0){
	   		$(".stageEmpty").show();
		}
	});

 	/**
	Below function is for validating form element properties and closing popup
	**/
	$(document).on("click", ".propsSaveBtn",function(e){
		$("#form-element-properties-"+$(this).attr("id").split("-")[$(this).attr("id").split("-").length-1]).dialog('destroy');
		$('.modalOverlayStyle').remove();
	});
  </script>

</head>

<body>
<div class="form-builder-wrapper">
<div class="stageEmpty isSmall"><div><span name="enlarge"></span></div>Add form fields here from the left.</div> 

<ul id="sortable" class="form-builder-pane">

</ul>

</div>
</body>
</html>
