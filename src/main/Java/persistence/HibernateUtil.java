package persistence;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import common.User;

import javax.management.Query;

public class HibernateUtil {
    private static final SessionFactory commonSessionFactory;

    static {
        try {
            Properties prop = new Properties();
            prop.setProperty("hibernate.connection.url", "jdbc:mysql://127.0.0.1:3306/lesson_14" +
                    "?verifyServerCertificate=false" +
                    "&useSSL=false" +
                    "&requireSSL=false" +
                    "&useLegacyDatetimeCode=false" +
                    "&amp" +
                    "&serverTimezone=UTC");
            prop.setProperty("hibernate.connection.username", "student");
            prop.setProperty("hibernate.connection.password", "password");
            prop.setProperty("dialect", "org.hibernate.dialect.MySQLDialect");
            prop.setProperty("format_sql", "true");
            prop.setProperty("show_sql", "true");


            commonSessionFactory = new Configuration()
                    .addPackage("common")
                    .addProperties(prop)
                    .addAnnotatedClass(User.class)
                    .buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }

    }


    public static Session getSession()
            throws HibernateException {
        return commonSessionFactory.openSession();
    }

    public void  closeSession()
            throws HibernateException {
        System.out.println("clouse db connect");
        commonSessionFactory.close();
    }

    public static void main(String[] args) {
    }
}
