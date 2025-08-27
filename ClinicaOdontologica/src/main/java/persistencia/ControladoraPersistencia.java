package persistencia;

import java.util.List;
import logica.Paciente;

public class ControladoraPersistencia {
    
    PersonaJpaController personJpa = new PersonaJpaController();
    PacienteJpaController pacientJpa = new PacienteJpaController();
    
    public List<Paciente> traerPacientes() {
        return pacientJpa.findPacienteEntities();
    }
}
