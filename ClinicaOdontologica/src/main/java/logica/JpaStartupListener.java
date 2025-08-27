package logica;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class JpaStartupListener implements ServletContextListener {

    private EntityManagerFactory emf;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Inicializando JPA...");
        emf = Persistence.createEntityManagerFactory("ClinicaPU");
        System.out.println("EntityManagerFactory creado: tablas deberían generarse");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
}
