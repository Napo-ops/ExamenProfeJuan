package model;
// Generated 18/07/2020 07:05:49 PM by Hibernate Tools 4.3.1



/**
 * Alumno generated by hbm2java
 */
public class Alumno  implements java.io.Serializable {


     private int idAlumno;
     private String nombre;
     private String apellido;
     private String ciclo;
     private String carrera;

    public Alumno() {
    }

    public Alumno(int idAlumno, String nombre, String apellido, String ciclo, String carrera) {
       this.idAlumno = idAlumno;
       this.nombre = nombre;
       this.apellido = apellido;
       this.ciclo = ciclo;
       this.carrera = carrera;
    }
   
    public int getIdAlumno() {
        return this.idAlumno;
    }
    
    public void setIdAlumno(int idAlumno) {
        this.idAlumno = idAlumno;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return this.apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public String getCiclo() {
        return this.ciclo;
    }
    
    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }
    public String getCarrera() {
        return this.carrera;
    }
    
    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }




}


