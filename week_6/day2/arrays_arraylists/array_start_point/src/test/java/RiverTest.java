import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class RiverTest {

    Salmon salmon;
    River river;
    @Before
    public void before(){
        river = new River();
        salmon = new Salmon();

    }

    //test river has salmon
    @Test
    public void hasNoSalmon(){
        assertEquals(0, river.salmonCount());
    }

    @Test
    public void canGetSalmon(){
        river.addFish(salmon);
        assertEquals(1, river.salmonCount());
        river.removeFish(salmon);
        assertEquals(0, river.salmonCount());
    }

}

// ಠ_ಠ you lookin' at my code?!