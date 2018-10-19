package Management;

import Staff.Employee;

public class Manager extends Employee {

    private String deptName;

    public Manager(String name, String niNumber, double salary){
        super(name, niNumber, salary);
        deptName = deptName;
    }

    public String getDeptName(){
        return this.deptName;
    }


}
