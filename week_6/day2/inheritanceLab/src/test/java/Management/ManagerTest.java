package Management;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class ManagerTest {
    Manager manager;

    @Before
    public void before(){
        manager = new Manager("Euan", "JS132698", 60000);
    }

    @Test
    public void canRaiseSalary(){
        manager.raiseSalary(10.50);
        assertEquals(60010.50, manager.getSalary(), 0.0);
    }

    @Test
    public void receivePayBonus(){
        manager.payBonus();
        assertEquals(60600, manager.getSalary(), 0.0);
    }


}
