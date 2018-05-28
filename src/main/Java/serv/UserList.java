package serv;

import common.User;
import org.hibernate.Session;
import org.hibernate.query.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import static persistence.HibernateUtil.getSession;

@WebServlet (value ="/get_all_user" )
public class UserList extends HttpServlet {



    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=utf-8");
        PrintWriter pw = resp.getWriter();
        Session session = getSession();
        session.beginTransaction();
        Query<User> query = session.createQuery("from User");
        List<User> list = query.list();
        pw.println("<head>\n" +
                "       <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n" +
                "       <title>All users</title>" +
                "    </head>");
        pw.println("<div class=\"row \">\n" +
                "        <div class=\"col-3\">\n" +
                "            <h2>Users list</h2>\n" +
                "        </div>\n" +
                "    </div>");
        User user = new User();
        pw.println("<table class=\"table table-bordered>\"");
        for (int i=0; i<list.size();i++){
            pw.println(list.get(i));
        }
        pw.println("</table>");
        pw.println("<a class=\"btn btn-primary btn-large\" href=\"index.jsp\">Go to homepage</a>");
    }
}
