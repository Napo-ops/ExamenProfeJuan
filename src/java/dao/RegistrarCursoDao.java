
package dao;

import java.util.List;
import model.Curso;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utilitarios.HibernateUtil;


public class RegistrarCursoDao {
    
    public void registrarCurso(Curso curso){
        
        Session session= HibernateUtil.getSessionFactory().openSession();
        Transaction transaction= session.beginTransaction();
        session.save(curso);
        transaction.commit();
        session.close();
        
        
    }
    
         public   List<Curso> listarCurso(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Curso";
        Query query =session.createQuery(hql);
        List<Curso> miLista= query.list();
        return miLista;
    }
       
    
    
    
}
