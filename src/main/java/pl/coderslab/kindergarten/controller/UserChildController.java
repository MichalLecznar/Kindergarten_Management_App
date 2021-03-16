package pl.coderslab.kindergarten.controller;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.kindergarten.entity.Subject;
import pl.coderslab.kindergarten.entity.User;
import pl.coderslab.kindergarten.entity.UserChild;
import pl.coderslab.kindergarten.repository.SubjectRepository;
import pl.coderslab.kindergarten.repository.UserChildRepository;
import pl.coderslab.kindergarten.repository.UserRepository;

import javax.servlet.http.HttpSession;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

@Controller
@RequestMapping("/child")
public class UserChildController {

    private UserChildRepository userChildRepository;
    private UserRepository userRepository;
    private SubjectRepository subjectRepository;

    public UserChildController(UserChildRepository userChildRepository, UserRepository userRepository, SubjectRepository subjectRepository) {
        this.userChildRepository = userChildRepository;
        this.userRepository = userRepository;
        this.subjectRepository = subjectRepository;
    }

    @GetMapping("/details/{id}")
    public String childDetails(@PathVariable int id, Model m){
        m.addAttribute("child", this.userChildRepository.findById(id));
        m.addAttribute("parent", this.userRepository.readByUserChildId(id));
    return "childdetails";
    }

    @GetMapping("/topdf/{id}")
    public String toPDF(@PathVariable int id) throws FileNotFoundException, DocumentException {
        String path = "sample.pdf";
        Document document = new Document();
        PdfWriter.getInstance(document,new FileOutputStream(path));
        document.open();
        Font font = FontFactory.getFont(FontFactory.COURIER,16, BaseColor.BLACK);
        UserChild userChild = this.userChildRepository.findById(id);
        Chunk name = new Chunk(userChild.getFirstName(),font);
        Chunk surname = new Chunk(userChild.getLastName(),font);
        Chunk age = new Chunk(String.valueOf(userChild.getAge()),font);
        Chunk parentName = new Chunk(this.userRepository.readByUserChildId(id).getName());
        Chunk parentMail = new Chunk(this.userRepository.readByUserChildId(id).getEmail());
//        Chunk parentId = new Chunk(String.valueOf(this.userRepository.readByUserChildId(id).getId()));

        document.add(new Paragraph("Imię: " + name));
        document.add(new Paragraph("Nazwiko: " + surname));
        document.add(new Paragraph("Wiek: " + age));
        document.add(Chunk.NEWLINE);
        document.add(new Paragraph("Rodzic: " + parentName));
        document.add(new Paragraph("Email: " + parentMail));

        document.close();
        return "redirect:/child/pdfinfo";
    }

    @GetMapping("/pdfinfo")
    public String pdfSucces(){
        return "pdfinformation";
    }

    @GetMapping("/assigntosubject/{id}")
    public String assigningChildToSubject(@PathVariable int id, Model m){
//        int id  = (Integer)session.getAttribute("id");
//        UserChild userChild = this.userChildRepository.readByUserId(id);
//        User parent = this.userRepository.readByUserChildId(id);
//        List<Subject> subjects = this.subjectRepository.findAll();
        m.addAttribute("child", this.userChildRepository.findById(id));
        m.addAttribute("subjects", this.subjectRepository.findAll());
//        m.addAttribute("parent", parent);
        return "childassigntosubject";
    }

    @PostMapping("/assigntosubject/{id}")
    public String assigningChildToSubjectPost(@PathVariable int id, @RequestParam(value = "subId") String subId){
        int subId1 = Integer.parseInt(subId);
        Subject subject = this.subjectRepository.findById(subId1);
        UserChild userChild = this.userChildRepository.findById(id);
        subject.setUserChild(userChild);
        this.subjectRepository.save(subject);
//        this.userChildRepository.save(userChild);
        return "redirect:/list";
    }

    @ModelAttribute("subjects")
    public List<Subject> subjects(){
        return this.subjectRepository.findAll();
    }
}
