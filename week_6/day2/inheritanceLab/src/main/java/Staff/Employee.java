package Staff;

public abstract class Employee {

    private String name;
    private String niNumber;
    private double salary;

    public Employee(String name, String niNumber, double salary) {
        this.salary = salary;
        this.name = name;
        this.niNumber = niNumber;
    }

    public String getName() {
        return this.name;
    }

    public String getniNumber() {
        return this.niNumber;
    }

    public double getSalary() {
        return this.salary;
    }

    public void raiseSalary(double raise) {
        // increase salary  by raise
        this.salary += raise;
    }

    public double payBonus() {
        return this.salary += (this.salary / 100);
    }


}

