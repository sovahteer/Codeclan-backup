import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CardTest {
    Card sevenOfHearts;

    @Before
    public void before(){
        sevenOfHearts = new Card(SuitType.HEART);

    }

    @Test
    public void hasSuit(){
        assertEquals( SuitType.HEART, sevenOfHearts.getSuit());
    }
}
