package edu.miu.cs.cs425.carrentalswe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {

    @GetMapping(value={"/","/eRental","eRental/secured/home","eRental/public/home"})
    public String getHomepage(){
        return "public/index";
    }

    @GetMapping(value={"eRental/public/about"})
    public String getAboutPage(){
        return "public/about";
    }

    @GetMapping(value={"eRental/public/contractor"})
    public String getBecomePage(){
        return "public/contractor";
    }
}
