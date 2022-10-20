package edu.miu.cs.cs425.studentmgmt.Model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long studentId;
    String studentNumber;
    @NotNull( message = "Student Name cannot be null")
    @NotEmpty(message = "Student Name cannot be empty")// name = "";
    @NotBlank(message = "Student Name cannot be blank spaces")// name="   "
    String firstName;
    String middleName;
    @NotEmpty
    @NotNull( message = "Student Last Name cannot be null")
    @NotBlank(message = "Student Last Name cannot be blank spaces")// name="   "
    String lastName;
    Double cgpa;
    LocalDate dateOfEnrollment;

    @OneToOne(cascade=CascadeType.ALL)
    Transcript transcript;


}
