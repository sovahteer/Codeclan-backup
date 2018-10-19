package Management;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DirectorTest {
    Director director;

    @Before
    public void before(){
        director = new Director("Craig", "NC252525", 65000, 500000);
    }

    @Test
    public void canRaiseSalary(){
        director.raiseSalary(10.50);
        assertEquals(65010.50, director.getSalary(), 0.0);
    }

    @Test
    public void receivePayBonus(){
        director.payBonus();
        assertEquals(65650, director.getSalary(), 0.0);
    }

    @Test
    public void canGetBudget(){
        assertEquals( 500000, director.getBudget(), 0.0);
    }
}
