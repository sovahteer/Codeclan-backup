package db;

import models.Pirate;
import models.Raid;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class DBRaid {

    private static Session session;

    //TODO: write a method to get list of pirates from a raid
    public static List<Pirate> getPiratesForRaid(Raid raid){
        List<Pirate> results = null;
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            Criteria cr = session.createCriteria(Pirate.class);
            cr.createAlias("raids", "raid");
            cr.add(Restrictions.eq("raid.id", raid.getId()));
            results = cr.list();
        }catch (HibernateException ex){
            ex.printStackTrace();
        }finally {
            session.close();
        }
        return results;
    }
}
