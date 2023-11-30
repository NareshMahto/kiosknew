package com.csc.kiosk.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().ignoringAntMatchers("/rest/**").and()
		.authorizeRequests()
		.antMatchers(HttpMethod.HEAD, "/**").permitAll()
		.antMatchers(HttpMethod.POST, "/**").permitAll()
		.antMatchers(HttpMethod.PUT, "/**").permitAll()
		.antMatchers("/resources/**").permitAll()
		.anyRequest().permitAll()
		.and().logout()
		.invalidateHttpSession(true)
		.clearAuthentication(true).deleteCookies("JSESSIONID", "USER");
	}
/*	@Bean
	SecurityWebFilterChain springSecurityFilterChain(ServerHttpSecurity http) {
	    http
	        // ...
	        .headers()
	            .cache().disable();
	    return http.build();
	}*/
}
