package tpa.ap.forms.builder.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("tpa.ap.forms.builder")
public class APFormBuilderWebApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(APFormBuilderWebApplication.class, args);
	}

}
