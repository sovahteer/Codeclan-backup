import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class RecordDeckTest {
    RecordDeck recordDeck;

    @Before
    public void before(){
        recordDeck = new RecordDeck(50, 33);
    }

    @Test
    public void getSpeed(){
        assertEquals(33,recordDeck.changeSpeed());
    }

    @Test
    public void getVolume(){
        assertEquals(50, recordDeck.getVolume());
    }

}
