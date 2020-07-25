/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Alumno;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utilitarios.HibernateUtil;

/**
 *
 * @author AN7
 */
public class RegistrarAlumnoDao {

    public void registrarAlumno(Alumno alumno) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(alumno);
        transaction.commit();
        session.close();

    }

    public List<Alumno> listarAlumno() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Alumno";
        Query query = session.createQuery(hql);
        List<Alumno> miLista = query.list();
        return miLista;
    }

}
