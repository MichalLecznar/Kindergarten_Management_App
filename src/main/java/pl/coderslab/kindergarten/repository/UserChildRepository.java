package pl.coderslab.kindergarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.kindergarten.entity.User;
import pl.coderslab.kindergarten.entity.UserChild;

public interface UserChildRepository extends JpaRepository<UserChild, Integer> {

    UserChild findById(int id);
    UserChild readByUserName(String name);
}
