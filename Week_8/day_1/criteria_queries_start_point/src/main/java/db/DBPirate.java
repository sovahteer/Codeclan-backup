package db;

import models.Pirate;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class DBPirate {

    private static Session session;
    private static Transaction transaction;

    public static void save(Pirate pirate) {
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            transaction = session.beginTransaction();
            session.save(pirate);
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    public static List<Pirate> getAll(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> results = null;
        try {
            Criteria cr = session.createCriteria(Pirate.class);
            results = cr.list();
        } catch(HibernateException e){
            e.printStackTrace();
        } finally {
            session.close();
        }
        return results;
    }


    //TODO: Write method for finding by id
    public static Pirate findByid(int id) {
        Pirate result = null;
        session = HibernateUtil.getSessionFactory().openSession();

        try {
            Criteria cr = session.createCriteria(Pirate.class);
            cr.add(Restrictions.eq("id", id));


            result =(Pirate) cr.uniqueResult();
        } catch (HibernateException ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }
        return result;
    }
}
