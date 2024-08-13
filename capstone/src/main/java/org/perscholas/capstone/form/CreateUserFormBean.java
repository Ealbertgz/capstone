package org.perscholas.capstone.form;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;

@Getter
@Setter
@ToString
public class CreateUserFormBean {

    private Integer userId;


    @Email(message = "Please enter a valid email")
    @NotEmpty(message = "Email is required")
    private String email;

    @Length(max = 50, message = "Password must be less than 50 characters")
    @NotEmpty(message = "Password is required")
    private String password;
}