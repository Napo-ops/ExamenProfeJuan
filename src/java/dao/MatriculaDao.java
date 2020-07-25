package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import model.Matricula;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utilitarios.HibernateUtil;

public class MatriculaDao {


    //RegistrarMatricula
    public void registrarMatricula(Matricula matricula) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        /*Metod transaction*/
        Transaction transaction = session.beginTransaction();
        session.save(matricula);
        transaction.commit();
        session.close();

    }

    public List<Matricula> listarMatricula() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Matricula";
        Query query = session.createQuery(hql);
        List<Matricula> miLista = query.list();
        return miLista;
    }

    public void actualizaMatricula(Matricula matricula) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.update(matricula);
        transaction.commit();
        session.close();
    }

    public void deleteMatricula(Matricula mascota) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(mascota);
        transaction.commit();
        session.close();

    }



}
