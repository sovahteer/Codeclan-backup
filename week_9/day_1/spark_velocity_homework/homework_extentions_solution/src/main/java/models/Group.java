package models;

import java.util.ArrayList;
import java.util.List;

public class Group {

    private List<Student> students;

    public Group(List<Student> students) {
        this.students = students;
    }

    public List<Student> getStudents() {
        return students;
    }

    public String getFirstStudentName(){
        return this.students.get(0).getName();
    }

    public String getSecondStudentName(){
        return this.students.get(1).getName();
    }


}
