package org.spring.shiro.integration.shirospring;

import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.web.config.DefaultShiroFilterChainDefinition;
import org.apache.shiro.spring.web.config.ShiroFilterChainDefinition;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class ShiroSpringApplication extends SpringBootServletInitializer {

		@Override
		protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
			return application.sources(ShiroSpringApplication.class);
		}
		
	public static void main(String[] args) {
		SpringApplication.run(ShiroSpringApplication.class, args);
	}
	
	
	
	@Bean
	public Realm realm() {
	    return new MyCustomRealm();
	}
	     
	@Bean
	public ShiroFilterChainDefinition shiroFilterChainDefinition() {
	    DefaultShiroFilterChainDefinition filter
	      = new DefaultShiroFilterChainDefinition();
	 
	    filter.addPathDefinition("/secure", "authc");
	    filter.addPathDefinition("/**", "anon");
	 
	    return filter;
	}
}
