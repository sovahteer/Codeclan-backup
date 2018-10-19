import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CDPlayerTest {
    CDPlayer cdPlayer;

    @Before
    public void before() {
        cdPlayer = new CDPlayer();
    }

    @Test
    public void canEjectCD () {
        assertEquals("Ejecting CD", cdPlayer.ejectCD());
    }
}
