package pl.coderslab.kindergarten.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DailyMeal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String day;
    private String dailyMenu;

    public DailyMeal() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getDailyMenu() {
        return dailyMenu;
    }

    public void setDailyMenu(String dailyMenu) {
        this.dailyMenu = dailyMenu;
    }
}
