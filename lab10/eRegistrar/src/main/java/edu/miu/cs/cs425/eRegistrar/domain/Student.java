package edu.miu.cs.cs425.eRegistrar.domain;


import com.sun.istack.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.time.LocalDate;

@Entity
@Setter
@Getter
@NoArgsConstructor
@Table(name = "students")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotNull
    @NotBlank(message = "Student number may not be blank")
    private String number;

    @NotNull
    @NotBlank(message = "First name may not be blank")
    private String firstName;

    private String middleName;

    @NotNull
    @NotBlank(message = "Last name may not be blank")
    private String lastName;

    private Double cgpa;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate enrollmentDate;

    @NotNull
    private Boolean isInternational;

}

