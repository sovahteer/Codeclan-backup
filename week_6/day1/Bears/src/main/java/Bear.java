public class Bear {
    private String name;
    private int age;
    private double weight;

    public Bear(String name, int age, double weight) {
        this.name = name;
        this.age = age;
        this.weight = weight;
    }

    //    getter
    public String getName() {
        return this.name;
    }

    public int getAge() {
        return this.age;
    }

    public double getWeight() {
        return this.weight;
    }

    public boolean readyToHibernate() {
        if (this.weight <= 80.00) {
            return false;
        } else {
            return true;
        }
    }


//    setter

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
