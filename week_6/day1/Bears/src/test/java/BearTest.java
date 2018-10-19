import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BearTest {


    @Test
    public void hasName() {
        Bear bear = new Bear("Boo", 2, 120.5);
        assertEquals("Boo", bear.getName());
    }

    @Test
    public void hasAge() {
        Bear bear = new Bear("Boo", 2, 120.5);
        assertEquals(2, bear.getAge());
    }

    @Test
    public void hasWeight() {
        Bear bear = new Bear("Boo", 2, 120.5);
        assertEquals(120.5, bear.getWeight(), 0);
    }

    @Test
    public void readyToHibernateIfGreaterThan80() {
        Bear bear = new Bear("Boo", 2, 120.5);
        assertEquals(true, bear.readyToHibernate());
    }

    @Test
    public void notReadyToHibernateIfLessThan80() {
        Bear thinBear = new Bear("Baloo", 25, 65.44);
        assertEquals(false, thinBear.readyToHibernate());
    }
}

