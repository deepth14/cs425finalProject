package edu.miu.cs.cs425.eRegistrar.controller;

import edu.miu.cs.cs425.eRegistrar.domain.Student;
import edu.miu.cs.cs425.eRegistrar.services.Imp.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class StudentController {

    @Autowired
    public StudentService studentService;

    @GetMapping(value = { "/student/list" })

    public ModelAndView listStudents() {
        ModelAndView modelAndView = new ModelAndView();
        List<Student> students = studentService.getStudents();
        modelAndView.addObject("students", students);
        modelAndView.setViewName("student/list");
        return modelAndView;
    }

    @GetMapping(value = { "/student/new" })
    public String displayNewStudent(Model model) {
        model.addAttribute("student", new Student());
        return "student/new";
    }

    @PostMapping(value = { "/student/new" })
    public String addNewStudent(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult,
                                Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("errors", bindingResult.getAllErrors());
            return "student/new";
        }
        student = studentService.saveStudent(student);
        return "redirect:/student/list";
    }

    @GetMapping(value = { "/student/edit/{studentId}" })
    public String editStudent(@PathVariable Integer studentId, Model model) {
        Student student = studentService.getStudentById(studentId);
        if (student != null) {
            model.addAttribute("student", student);
            return "student/edit";
        }
        return "student/list";
    }

    @PostMapping(value = { "/student/edit" })
    public String updateStudent(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult,
                                Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("errors", bindingResult.getAllErrors());
            return "student/edit";
        }
        student = studentService.saveStudent(student);
        return "redirect:/student/list";
    }

    @GetMapping(value = { "/student/delete/{studentId}" })
    public String deleteStudent(@PathVariable Integer studentId) {
        studentService.deleteStudentById(studentId);
        return "redirect:/student/list";
    }

    @GetMapping(value = "/student/search")
    public ModelAndView searchStudent(@RequestParam String searchString) {
        ModelAndView modelAndView = new ModelAndView();
        List<Student> students = studentService.searchStudents(searchString);
        modelAndView.addObject("students", students);
        modelAndView.addObject("searchString", searchString);
        modelAndView.setViewName("student/list");
        return modelAndView;
    }

}

