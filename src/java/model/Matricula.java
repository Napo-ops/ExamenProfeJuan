package model;
// Generated 18/07/2020 07:05:49 PM by Hibernate Tools 4.3.1



/**
 * Matricula generated by hbm2java
 */
public class Matricula  implements java.io.Serializable {


     private int idMatricula;
     private int idCurso;
     private int idAlumno;

    public Matricula() {
    }

    public Matricula(int idMatricula, int idCurso, int idAlumno) {
       this.idMatricula = idMatricula;
       this.idCurso = idCurso;
       this.idAlumno = idAlumno;
    }
   
    public int getIdMatricula() {
        return this.idMatricula;
    }
    
    public void setIdMatricula(int idMatricula) {
        this.idMatricula = idMatricula;
    }
    public int getIdCurso() {
        return this.idCurso;
    }
    
    public void setIdCurso(int idCurso) {
        this.idCurso = idCurso;
    }
    public int getIdAlumno() {
        return this.idAlumno;
    }
    
    public void setIdAlumno(int idAlumno) {
        this.idAlumno = idAlumno;
    }




}


