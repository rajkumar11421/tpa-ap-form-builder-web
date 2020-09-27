<%
String elementType = request.getParameter("elementType");
int formElementCount = Integer.parseInt(request.getParameter("formElementCount"));
%>
<li class="form-builder-pane-li ui-state-default" id="form-builder-pane-li-<%=formElementCount %>">
	 	<span class="sortable-li-arrow ui-icon ui-icon-arrowthick-2-n-s"></span>
	 	
	 	<div class="selectedControls" id="selectedControls-<%=formElementCount %>">
			<div class="form-element-remove" id="form-element-remove-<%=formElementCount %>"><img src="images/delete.png" title="Remove"/></div>
	 		<div class="form-element-settings" id="form-element-settings-<%=formElementCount %>"><img src="images/settings.png" style="width: 21px;" title="Properties"/></div>
	 	</div>
	 	
	 	<%if(null != elementType && !elementType.equals("Header")) {%>
			<div class="form-label" id="form-label-<%=formElementCount %>">
			  	<div class="editor-container editorNoText" id="editor-container-<%=formElementCount %>" style="display: inline-block;">
				  	<div>Label</div>
			  	</div>
		 	</div>
	 	<%} %>
	 	
	 	<div class="form-element" id="form-element-<%=formElementCount %>">
	 		<%if(null != elementType && elementType.equals("Textbox")) {%>
	 			<input type="text" id="input_field_1" name="" />
	 		<%}else if(null != elementType && elementType.equals("Textarea")) {%>
				<textarea></textarea>
	 		<%} else if(null != elementType && elementType.equals("Dropdown")) {%>
				<select></select>
	 		<%} else if(null != elementType && elementType.equals("Single Choice")) {%>
				<input type="radio" id="input_field_1" name="" /> Type option 1
	 		<%} else if(null != elementType && elementType.equals("Multiple Choice")) {%>
				<input type="checkbox" id="input_field_1" name="" /> Type option 1
	 		<%} else if(null != elementType && elementType.equals("Button")) {%>
				<input type="button" id="input_field_1" name="" value="Submit" />
	 		<%} else if(null != elementType && elementType.equals("Header")) {%>
				<div data-gramm="false">Heading</div>
	 		<%} %>
	 	</div>
	 	<div class="form-sub-label" id="form-sub-label-<%=formElementCount %>">
	 		<div class="editor-container editorNoText" style="display: inline-block;" id="editor-container-<%=formElementCount %>">
	 			<%if(null != elementType && elementType.equals("Header")) {%>
	 				<div data-gramm="false">Sub-Header</div>
	 			<%} else if(null != elementType && (elementType.equals("Textbox") || elementType.equals("Textarea"))) {%>
	 				<div data-gramm="false">Sub-Label</div>
	 			<%} %>
	 		</div>
	 	</div>
	 	
	 	<div class="form-element-properties" id="form-element-properties-<%=formElementCount %>">
			<div class="Table" id="Table-<%=formElementCount %>">
			
				<%if(null != elementType && elementType.equals("Header")) {%>
				<div class="Row">
					<div class="Cell">
						<label>Heading Text: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Sub-Heading Text: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Heading Size: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="h1">H1</option>
							<option value="h2">H2</option>
							<option value="h3">H3</option>
							<option value="h4">H4</option>
							<option value="h5">H5</option>
							<option value="h6">H6</option>
						</select>
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Sub-Heading Size: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="h1">H1</option>
							<option value="h2">H2</option>
							<option value="h3">H3</option>
							<option value="h4">H4</option>
							<option value="h5">H5</option>
							<option value="h6">H6</option>
						</select>
					</div>
				</div>
				<%} else {%>
				<div class="Row">
					<div class="Cell">
						<label>Field Name: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
					<div class="Cell">
						<label>Label Name: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Field Id: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
					<div class="Cell">
						<label>Label Align: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="top">Top</option>
							<option value="left">Left</option>
							<option value="right">Right</option>
						</select>
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Required: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Read-only: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</div>
				</div>
				
				<%} %>
				
				<%if(null != elementType && (elementType.equals("Textbox") || elementType.equals("Textarea"))) {%>
				
				<div class="Row">
					<div class="Cell">
						<label>Default Value: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
					<div class="Cell">
						<label>Sub-Label: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Hide Field: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Max-length: </label>
					</div>
					<div class="Cell">
						<input type="text">
					</div>
				</div>
				<div class="Row">
					<div class="Cell">
						<label>Validation: </label>
					</div>
					<div class="Cell">
						<select>
							<option value="none">None</option>
							<option value="alphabetic">Alphabetic</option>
							<option value="alphaNumeric">AlphaNumeric</option>
							<option value="currency">Currency</option>
							<option value="email">Email</option>
							<option value="numeric">Numeric</option>
						</select>
					</div>
				</div>
				<%} %>
				<%if(null != elementType && (elementType.equals("Dropdown") || elementType.equals("Single Choice") || elementType.equals("Multiple Choice"))) {%>
				<div class="Row">
					<div class="Cell">
						<label>Options: </label>
					</div>
					<div class="Cell">
						<textarea></textarea><br/>
						<small>Type your options to select from. Specify key, values with comma separation.Separate each option on a new line.</small>
					</div>
				</div>
				<%} %>
			</div>
			<div class="element-props-save-btn" id="element-props-save-btn-<%=formElementCount %>">
				<input type="button" value="Save" class="propsSaveBtn" id="propsSaveBtn-<%=formElementCount %>"/>
			</div>
		</div>
</li>