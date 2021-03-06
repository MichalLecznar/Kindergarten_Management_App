package pl.coderslab.kindergarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {

    @GetMapping("/main")
    public String main(HttpSession session){
        if(session.getAttribute("name") == null){
            // po dodaniu logowania zmienić na login
            return "redirect:/register";
        }
        return "main";
    }
}
