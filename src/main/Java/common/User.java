package common;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "user_name")
    private String user_name;

    @Column (name = "pass")
    private String pass;

    public int getId() {
        return id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }



    @Override
    public String toString() {
        return "<tr><td>User</td>" +
                "<td>id=" + id +
                "</td><td>user_name='" + user_name + '\'' +
                "</td><td>pass='" + pass + '\''+"</td></tr>";
    }
}
