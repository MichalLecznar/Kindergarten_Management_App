package pl.coderslab.kindergarten.controller;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.kindergarten.entity.UserChild;
import pl.coderslab.kindergarten.repository.UserChildRepository;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

@Controller
@RequestMapping("/child")
public class UserChildController {

    private UserChildRepository userChildRepository;

    public UserChildController(UserChildRepository userChildRepository) {
        this.userChildRepository = userChildRepository;
    }

    @GetMapping("/details/{id}")
    public String childDetails(@PathVariable int id, Model m){
        m.addAttribute("child", this.userChildRepository.findById(id));
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
//        Chunk parent = new Chunk(userChild.getUser().getName(),font);

        document.add(new Paragraph(name));
        document.add(surname);
        document.add(Chunk.NEWLINE);
        document.add(age);
//        document.add(parent);

        document.close();
        return "redirect:/child/pdfinfo";
    }

    @GetMapping("/pdfinfo")
    public String pdfSucces(){
        return "pdfinformation";
    }
}
