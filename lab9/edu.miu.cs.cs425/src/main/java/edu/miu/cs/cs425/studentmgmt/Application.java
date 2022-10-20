package edu.miu.cs.cs425.studentmgmt;

import edu.miu.cs.cs425.studentmgmt.Model.Student;
import edu.miu.cs.cs425.studentmgmt.Model.Transcript;
import edu.miu.cs.cs425.studentmgmt.Repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.sql.rowset.spi.TransactionalWriter;
import java.time.LocalDate;

@SpringBootApplication
public class Application implements CommandLineRunner {

	@Autowired
	private StudentRepository studentRepository;

	public void saveStudent(Student st){

    studentRepository.save(st);
		System.out.println("student saved");

	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);

	}


	@Override
	public void run(String... args) throws Exception {
		System.out.println("Hello World SpringBoot!!!");
		Transcript ts = new Transcript(1,"BSC Compre");
		Student sk = new Student(1L," 000-61-0001", "Anna","Lynn", "Smith", 3.45, LocalDate.of(2020, 1, 8),ts);
		studentRepository.save(sk);
		Transcript ts2 = new Transcript(2,"BSC Cvvompre");
		Student sk2 = new Student(2L," 000-61-0002", "Carlos","joh", "kalo", 2.45, LocalDate.of(2020, 1, 8),ts2);
		studentRepository.save(sk2);
		System.out.println("Finished execution");
	}
}
