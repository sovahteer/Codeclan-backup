import db.DBPirate;
import db.DBShip;
import db.HibernateUtil;
import models.Pirate;
import models.Ship;
import org.hibernate.SessionFactory;

public class Runner {

    public static void main(String[] args) {
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

        Pirate pirate = new Pirate("Jack", "Sparrow", 32);
        DBPirate.save(pirate);

        Ship ship = new Ship("Black Pearl");
        DBShip.save(ship);
    }

}

