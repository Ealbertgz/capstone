package org.perscholas.capstone.config;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import org.perscholas.capstone.service.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import java.io.IOException;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig {

//    @Autowired
//    private CustomUserDetailsService userDetailsService;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(csrf -> csrf.disable());
        http.authorizeRequests().requestMatchers(
                                new AntPathRequestMatcher("/admin/**"),
                                new AntPathRequestMatcher("/public/**")
                        ).authenticated().anyRequest().permitAll();



        http.formLogin(formLogin -> formLogin
                .loginPage("/account/loginPageUrl")
                // This URL is part of Spring Security
                .loginProcessingUrl("/account/loginProcessingURL")
        );

        http.logout(formLogout -> formLogout
                .invalidateHttpSession(true)
                .logoutUrl("/account/logout")
                .logoutSuccessUrl("/")
        );

        return http.build();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean (name = "passwordEncoder")
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

//    // Custom AuthenticationSuccessHandler implementation
//    public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
//
//        private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
//
//        @Override
//        public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
//                                            Authentication authentication) throws IOException {
//            String targetUrl = "/admin/dashboard"; // Customize this to your desired post-login page
//            redirectStrategy.sendRedirect(request, response, targetUrl);
//        }
//    }
}
