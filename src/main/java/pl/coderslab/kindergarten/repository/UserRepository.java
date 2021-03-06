package pl.coderslab.kindergarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.kindergarten.entity.User;
import pl.coderslab.kindergarten.entity.UserChild;


public interface UserRepository extends JpaRepository<User, Integer> {

    @Query("select u from User u where u.name like ?1")
    User readByName(String name);

    User readById(int id);

    User readByUserChildId(int id);


}
