package pl.coderslab.kindergarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.kindergarten.entity.DailyMeal;
import pl.coderslab.kindergarten.entity.Subject;
import pl.coderslab.kindergarten.repository.DailyMealRepository;

import java.util.List;

@Controller
public class DailyMealController {

    private DailyMealRepository dailyMealRepository;

    public DailyMealController(DailyMealRepository dailyMealRepository) {
        this.dailyMealRepository = dailyMealRepository;
    }

    @GetMapping("/addmeal")
    public String add(Model m){
        m.addAttribute("meal", new DailyMeal());
        return "mealform";
    }

    @PostMapping("/addmeal")
    public String postAdd(DailyMeal dailyMeal){
        this.dailyMealRepository.save(dailyMeal);
        return "meallist";
    }

    @GetMapping("/listofmeals")
    public String mealList(Model m){

        List<DailyMeal> dailyMeals = this.dailyMealRepository.findAll();
        if(dailyMeals.isEmpty() || dailyMeals == null){
            return "redirect:/addmeal";
        }
        m.addAttribute("dailymeals", dailyMeals);
        return "meallist";
    }


}
