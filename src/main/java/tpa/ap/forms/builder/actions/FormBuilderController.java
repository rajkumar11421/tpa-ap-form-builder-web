package tpa.ap.forms.builder.actions;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormBuilderController {

	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger(FormBuilderController.class);
	

	@RequestMapping("/")
	public String createForm() {
		return "formBuilderLayout";
	}
	
	@RequestMapping(value="/getFormElement", method = RequestMethod.GET)
	public String getFormElement() {
		return "formElements";
	}
	

}
