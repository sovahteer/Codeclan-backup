import models.Group;
import models.Student;
import org.junit.Test;

import java.util.ArrayList;

import static junit.framework.TestCase.assertEquals;

public class GroupTest {

    @Test
    public void canMakePairing(){
        ArrayList<Student> students = new ArrayList<>();
        students.add(new Student("Emil"));
        students.add(new Student("Mark"));
        Group group = new Group(students);
        assertEquals(2, group.getStudents().size());
    }

    @Test
    public void canGetFirstStudentNameEasily(){
        ArrayList<Student> students = new ArrayList<>();
        students.add(new Student("Emil"));
        students.add(new Student("Mark"));
        Group group = new Group(students);
        assertEquals("Emil", group.getFirstStudentName());
    }

    @Test
    public void canGetSecondStudentNameEasily(){
        ArrayList<Student> students = new ArrayList<>();
        students.add(new Student("Emil"));
        students.add(new Student("Mark"));
        Group group = new Group(students);
        assertEquals("Mark", group.getSecondStudentName());
    }
}
