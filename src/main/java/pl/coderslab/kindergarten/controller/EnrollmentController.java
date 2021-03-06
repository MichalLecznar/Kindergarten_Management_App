package pl.coderslab.kindergarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.kindergarten.entity.User;
import pl.coderslab.kindergarten.entity.UserChild;
import pl.coderslab.kindergarten.repository.UserChildRepository;
import pl.coderslab.kindergarten.repository.UserRepository;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class EnrollmentController {

    private UserChildRepository userChildRepository;
    private UserRepository userRepository;

    public EnrollmentController(UserChildRepository userChildRepository, UserRepository userRepository) {
        this.userChildRepository = userChildRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("/enroll")
    public String enroll(Model m, HttpSession session){
        if(session.getAttribute("name") == null){
            return "redirect:main";
        }
        m.addAttribute("userChild", new UserChild());
        return "enrollmentform";
    }

    @PostMapping("/enroll")
    public String enrollPost(@Valid UserChild userChild, BindingResult violation, HttpSession session){
        if(session.getAttribute("name") == null){
            //zmienić na login po dodaniu logowania
            return "redirect:/register";
        }
        if(violation.hasErrors()){
            return "enrollmentform";
        }

        // zapis dziecka i przypisanie go do rodzica (poprawić)
        String name = (String) session.getAttribute("name");
        User user = this.userRepository.readByName(name);
        this.userChildRepository.save(userChild);
        user.setUserChild(userChild);
        this.userRepository.save(user);
        return "redirect:/list";
    }

    @GetMapping("/list")
    public String displayIncomeList(Model model) {
        List<UserChild> children = this.userChildRepository.findAll();
        model.addAttribute("children", children);
        return ("childlist");
    }
}
