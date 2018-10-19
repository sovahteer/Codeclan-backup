package db;

import models.Pirate;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class DBPirate {

    private static Session session;
    private static Transaction transaction;

    public static void save(Pirate pirate) {}

    public static List<Pirate> getAll(){
        List<Pirate> results = null;
        session = HibernateUtil.getSessionFactory().openSession();
        try{
            Criteria cr = session.createCriteria(Pirate.class);
            results = cr.list();

        } catch (HibernateException e){
            e.printStackTrace();
        } finally {
            session.close();
        }
        return results;
    }

    public static Pirate find(int id) {
        Pirate result = null;
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            Criteria cr = session.createCriteria(Pirate.class);
            cr.add(Restrictions.eq("id", id));
            result = (Pirate)cr.uniqueResult();
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return result;
    }

    //TODO: Write orderByAge method to get list of pirates by age
    public static List<Pirate> orderByAgeDescending(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> pirates = null;

        try {
            Criteria cr = session.createCriteria(Pirate.class);
            cr.addOrder(Order.desc("age"));
            pirates = cr.list();
        } catch (HibernateException ex){
            ex.printStackTrace();
        } finally {
            session.close();
        }

        return pirates;
    }

    //TODO: Write method to project query the average age

    public static  Double getAverageAge(){
        session = HibernateUtil.getSessionFactory().openSession();
        Double average = null;

        try {
            transaction = session.beginTransaction();
            Criteria cr = session.createCriteria(Pirate.class);
            cr.setProjection(Projections.avg("age"));
            average = (Double)cr.uniqueResult();

        } catch(HibernateException ex){
            transaction.rollback();
            ex.printStackTrace();
        } finally {
            session.close();
        }
        return average;
    }
}
