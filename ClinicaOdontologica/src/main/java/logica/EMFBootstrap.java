package logica;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class EMFBootstrap implements ServletContextListener {

    private static EntityManagerFactory emf;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Llamada que inicializa EclipseLink y dispara la generación DDL
        emf = Persistence.createEntityManagerFactory("ClinicaPU");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
        // Cierre seguro del thread de MySQL (si usas mysql-connector)
        com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown(); // ignora o loggea
    }

    public static EntityManagerFactory getEmf() {
        return emf;
    }
}

