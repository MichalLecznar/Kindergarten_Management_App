package pl.coderslab.kindergarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.kindergarten.entity.Subject;

public interface SubjectRepository extends JpaRepository <Subject, Integer> {

    Subject findById(int id);
    Subject findByName(String name);
}
