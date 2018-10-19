import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BearTest {
    Bear bear;
    Salmon salmon;
    River river;
    @Before
    public void before() {
        bear = new Bear("Trinket");
        salmon = new Salmon();
        river = new River();
        river.addFish(salmon);
    }

    @Test
    public void bellyStartsEmpty(){
        assertEquals(0, bear.foodCount());
    }

    // The one where a bear eats a salmon from the river and there's one less fish in the river
    @Test
    public void canEatSalmon(){
        bear.eatFishFromRiver(river);
        assertEquals(1, bear.foodCount());
    }

    @Test
    public void shouldEmptyBellyAfterSleep(){
        //eat a salmon
        bear.eatFishFromRiver(river);
        //check the belly size 1
        assertEquals(1, bear.foodCount());
        //sleep
        bear.sleep();
        //check belly size 0
        assertEquals(0, bear.foodCount());
    }
}

