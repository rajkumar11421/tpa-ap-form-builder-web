<html>
<link href="formBuilder.css" rel="stylesheet" type="text/css"></link>
<header> 

 <script>
	var formElementCount = 0;
  	$(document).on("click", ".field-name",function(e){

		var elementType = $(this).text();
		$.get("getFormElement?elementType="+elementType+"&formElementCount="+formElementCount, function(data){
			$(".stageEmpty").hide();
			$(".form-builder-pane").append(data);
			formElementCount++;
		});
	});

  </script>
</header>
<body>
	<div class="leftPanel">

		<div class="fieldsPanel">
			<div class="fieldSection">
				<div class="fieldSection-scroller tethers">
					<ul class="fieldSection-list forBasics">
						<li class="fieldSection-category">Form Elements</li>
						
						<li class="field-item" id="field_item_control_head" role="button"
							data-fieldtype="control_head" data-fieldname="Header">
							<div class="field-name">Header</div>
						</li>
						
						<li class="field-item" id="field_item_control_textbox"
							role="button" data-fieldtype="control_textbox"
							data-fieldname="Short Text">
							<div class="field-name">Textbox</div>
						</li>
							
						<li class="field-item" id="field_item_control_textarea"
							role="button" data-fieldtype="control_textarea"
							data-fieldname="Short Text">
							<div class="field-name">Textarea</div>
						</li>
							
						<li class="field-item" id="field_item_control_dropdown"
							role="button" data-fieldtype="control_dropdown"
							data-fieldname="Dropdown">
							<div class="field-name">Dropdown</div>
						</li>
						
						<li class="field-item" id="field_item_control_radio" role="button"
							data-fieldtype="control_radio" data-fieldname="Single Choice">
							<div class="field-name">Single Choice</div>
						</li>
						
						<li class="field-item" id="field_item_control_checkbox"
							role="button" data-fieldtype="control_checkbox"
							data-fieldname="Multiple Choice">
							<div class="field-name">Multiple Choice</div>
						</li>
						
						<li class="field-item" id="field_item_control_button"
							role="button" data-fieldtype="control_button"
							data-fieldname="Submit">
							<div class="field-name">Button</div>
						</li>
					</ul>

				</div>
			</div>
		</div>
	</div>

</body>
</html>