package Management;

import Staff.Employee;

    public class Director extends Employee {

        double budget;

        public Director(String name, String niNumber, double salary, double budget) {
            super(name, niNumber, salary);
            this.budget = budget;
        }

        public double getBudget(){
            return this.budget;
        }
}
