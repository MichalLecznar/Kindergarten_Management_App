package pl.coderslab.kindergarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.kindergarten.entity.DailyMeal;

public interface DailyMealRepository extends JpaRepository<DailyMeal, Integer> {

    DailyMeal findById(int id);
}
