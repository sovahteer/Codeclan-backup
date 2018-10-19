package techStaff;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DatabaseAdminTest {

    DatabaseAdmin databaseAdmin;

    @Before
    public void before(){
        databaseAdmin = new DatabaseAdmin("Darren", "JS562594", 46000);
    }

    @Test
    public void canRaiseSalary(){
        databaseAdmin.raiseSalary(10.50);
        assertEquals(46010.50, databaseAdmin.getSalary(), 0.0);
    }

    @Test
    public void receivePayBonus(){
        databaseAdmin.payBonus();
        assertEquals(46460, databaseAdmin.getSalary(), 0.0);
    }
}
