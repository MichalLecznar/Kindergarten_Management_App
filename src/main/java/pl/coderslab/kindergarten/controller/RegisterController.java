package pl.coderslab.kindergarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.kindergarten.entity.User;
import pl.coderslab.kindergarten.repository.UserRepository;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class RegisterController {

    private UserRepository userRepository;

    public RegisterController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping({"/", "/register"})
    public String register(Model m, HttpSession session){
        if(session.getAttribute("name") == null) {
            m.addAttribute("user", new User());
            return "registerform";
        }
        return "redirect:/main";
    }

    @PostMapping({"/", "/register"})
    public String registerPost(@Valid User user, BindingResult violation, HttpSession session){
        if(session.getAttribute("name") != null){
            return "redirect:/main";
        }
        if(violation.hasErrors()){
            return "registerform";
        }
        this.userRepository.save(user);
        // zmienić/usunąć po dopisaniu LoginControllera
        session.setAttribute("name", user.getName());
        session.setMaxInactiveInterval(3600);
        return "main";
    }
}
