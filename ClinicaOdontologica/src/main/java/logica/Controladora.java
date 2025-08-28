package logica;

import java.util.ArrayList;
import java.util.List;
import model.Usuario;
import persistencia.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearUsuario(String nombreUsu, String password, String rol) {
        Usuario usu = new Usuario();
        usu.setNombreUsuario(nombreUsu);
        usu.setContrasenia(password);
        usu.setRol(rol);

        controlPersis.crearUsuario(usu);
    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public void eliminiarUsuario(int id) {
        controlPersis.eliminarUsuario(id);
    }

    public Usuario buscarUsuario(int id) {
        return controlPersis.buscarUsuario(id);
    }

    public void editarUsuario(Usuario usu, String nombre, String password, String rol) {
        usu.setNombreUsuario(nombre);
        usu.setContrasenia(password);
        usu.setRol(rol);

        controlPersis.editarUsuario(usu);
    }

    public Usuario validarUsuario(String usuario, String password) {

        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.traerUsuarios();

        for (Usuario usu : listaUsuarios) {
            if (usu.getNombreUsuario().equals(usuario)) {
                if (usu.getContrasenia().equals(password)) {
                    return usu;
                }
            }
        }
        return null;
    }
}
