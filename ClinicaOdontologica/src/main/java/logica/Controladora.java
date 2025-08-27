package logica;

import model.Usuario;
import persistencia.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(int id, String nombre, String password, String rol) {
        Usuario usu = new Usuario();
        controlPersis.crearUsuario(usu);
    }
    
}
