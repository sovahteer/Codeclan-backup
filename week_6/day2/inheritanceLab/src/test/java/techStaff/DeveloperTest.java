package techStaff;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DeveloperTest {

    Developer developer;

    @Before
    public void before(){
        developer = new Developer("Chris", "JS126598", 30000);
    }

    @Test
    public void canRaiseSalary(){
        developer.raiseSalary(10.50);
        assertEquals(30010.50, developer.getSalary(), 0.0);
    }

    @Test
    public void receivePayBonus(){
        developer.payBonus();
        assertEquals(30300, developer.getSalary(), 0.0);
    }
}
