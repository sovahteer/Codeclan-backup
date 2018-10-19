import models.Ship;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class ShipTest {

    Ship ship;

    @Before
    public void before(){
        ship = new Ship("Black Pearl");
    }

    @Test
    public void hasName(){
        assertEquals("Black Pearl", ship.getName());
    }
}
