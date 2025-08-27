package model;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import java.util.Date;
import java.util.List;

@Entity
public class Paciente extends Persona {

    //private int id_paciente;
    private boolean tiene_OS;
    private String tipoSangre;
    @OneToOne
    private Responsable unResponsable;
    @OneToMany(mappedBy = "pacien")
    private List<Turno> listaTurnos;

    public Paciente() {
    }

    public Paciente(/*int id_paciente,*/ boolean tiene_OS, String tipoSangre, Responsable unResponsable, List<Turno> listaTurnos, String dni, String nombre, String apellidos, String telefono, String direccion, Date fecha_nac) {
        super(dni, nombre, apellidos, telefono, direccion, fecha_nac);
        //this.id_paciente = id_paciente;
        this.tiene_OS = tiene_OS;
        this.tipoSangre = tipoSangre;
        this.unResponsable = unResponsable;
        this.listaTurnos = listaTurnos;
    }

    /*public int getId_paciente() {
        return id_paciente;
    }

    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }*/

    public boolean isTiene_OS() {
        return tiene_OS;
    }

    public void setTiene_OS(boolean tiene_OS) {
        this.tiene_OS = tiene_OS;
    }

    public String getTipoSangre() {
        return tipoSangre;
    }

    public void setTipoSangre(String tipoSangre) {
        this.tipoSangre = tipoSangre;
    }

    public Responsable getUnResponsable() {
        return unResponsable;
    }

    public void setUnResponsable(Responsable unResponsable) {
        this.unResponsable = unResponsable;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }

}
