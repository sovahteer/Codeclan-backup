package db;

import models.Ship;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DBShip {

    private static Session session;
    private static Transaction transaction;

    public static void save(Ship ship){}

    //TODO: Update the title of the ship to The Flying Dutchman
}