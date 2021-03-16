package pl.coderslab.kindergarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.kindergarten.entity.Subject;
import pl.coderslab.kindergarten.repository.SubjectRepository;

import java.util.List;

@Controller
public class SubjectController {

    private SubjectRepository subjectRepository;

    public SubjectController(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    @GetMapping("/add")
    public String addSubject(Model m){
        m.addAttribute("subject", new Subject());
        return "subjectform";
    }

    @PostMapping("/add")
    public String addSubjectPost(Subject subject){
        this.subjectRepository.save(subject);
        return "redirect:/subjectlist";
    }

    @GetMapping("/subjectlist")
    public String subjectList(Model m){

       List<Subject> subjects = this.subjectRepository.findAll();
        if(subjects.isEmpty() || subjects == null){
            return "redirect:/add";
        }
       m.addAttribute("subjects", subjects);
       return "subjectlist";
    }

    @GetMapping("/deletesubject/{id}")
    public String deleteSubject(@PathVariable int id){
        this.subjectRepository.deleteById(id);
        List<Subject> subjects = this.subjectRepository.findAll();
        if(subjects.isEmpty() || subjects == null){
            return "redirect:/";
        }
        return "redirect:/subjectlist";
    }

    @GetMapping("/editsubject/{id}")
    public String editSubject(@PathVariable int id, Model m){
        Subject subject = this.subjectRepository.findById(id);
        m.addAttribute("subject", subject);
        return "subjectedit";
    }

    @PostMapping("/editsubject/{id}")
    public String editSubjectPost(Subject subject){
        this.subjectRepository.save(subject);
        return "redirect:/subjectlist";
    }

    public String assignSubjectToChild(){
        return "subjectform";
    }

}
