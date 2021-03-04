package pl.coderslab.kindergarten.entity;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotBlank(message = "To pole nie może być puste")
    private String name;
    @Email
    @NotBlank(message = "To pole nie może być puste")
    private String email;
    @NotBlank(message = "To pole nie może być puste")
    @Size(min = 5, max = 15)
    private String password;
    @ManyToOne()
    private UserChild userChild;

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserChild getUserChild() {
        return userChild;
    }

    public void setUserChild(UserChild userChild) {
        this.userChild = userChild;
    }
}
