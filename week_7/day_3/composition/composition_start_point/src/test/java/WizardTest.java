import static org.junit.Assert.*;
import org.junit.*;
import wizard_management.beasts.Dragon;
import wizard_management.behaviours.IFlyable;
import wizard_management.cleaning.Broomstick;
import wizard_management.people.Wizard;


public class WizardTest {

    Wizard wizard;
    Broomstick broomstick;
    Dragon dragon;

    @Before
    public void before(){
        broomstick = new Broomstick("Nimbus", 10);
        wizard = new Wizard("Toby", broomstick);
    }

    @Test
    public void hasName(){
        assertEquals("Toby", wizard.getName());
    }

    @Test
    public void hasBroomstick(){
        Broomstick broomstick = (Broomstick) wizard.getRide();
        assertEquals("Nimbus", broomstick.getBrand());
    }

    @Test
    public void canFly(){
        assertEquals("mounting broom, running, skipping, flying!",wizard.fly());
    }

    @Test
    public void canFlyDragon(){
        Dragon dragon = new Dragon("Tilly");
        wizard = new Wizard("Toby", dragon);
        assertEquals("Standing up tall, beating wings,lift off!", dragon.fly());
    }
}
