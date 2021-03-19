package pl.coderslab.kindergarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.kindergarten.entity.Subject;
import pl.coderslab.kindergarten.entity.UserChild;

import java.util.List;

public interface SubjectRepository extends JpaRepository <Subject, Integer> {

    Subject findById(int id);
    Subject findByName(String name);
    @Query("select s FROM Subject s where s.name like ?1")
    List<Subject> findAllByAssigmentToSubject(String name);

    @Query(value = "SELECT * FROM Subject where userChild_id like ?1", nativeQuery = true)
    List<Subject> test(int id);
}
