package org.perscholas.capstone.form;


import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;

@Getter
    @Setter
    @ToString
    public class CreateTutorFormBean {

        // When the user exists in the database this value will be populated with the id of tutor in the database
        // This field is only set when the user calls the /tutor/edit URL and provides a valid tutor id
        // If this field is null, then it is a create operation
        private Integer tutorId;

        // Email validation for the tutor
        @Length(max = 100, message = "Email must be less than 100 characters")
        @NotEmpty(message = "Email is required.")
        @Email(message = "This must be a valid email")
        private String email;

        // Tutor code should be unique and not exceed a certain length
        @Pattern(regexp = "[a-zA-Z0-9]+", message = "Tutor code must contain alphanumeric characters only.")
        @Length(max = 20, message = "Tutor code must be less than 20 characters")
        @NotEmpty(message = "Tutor code is required.")
        private String tutorCode;

        // Tutor name validation
        @Pattern(regexp = "[a-zA-Z]+", message = "Tutor name must have characters only.")
        @Length(max = 50, message = "Tutor name must be less than 50 characters")
        @NotEmpty(message = "Tutor name is required.")
        private String tutorName;

        // Tutor description can be optional
        private String tutorDescription;

        // Tutor cost validation
        @DecimalMin(value = "0.00", message = "Tutor cost cannot be negative.")
        private Double tutorCost;

        // Optional field for associating tutors with specific offices or departments
        private Integer departmentId;

        // Optional field for specifying who the tutor reports to
        private Integer reportsTo;
    }

