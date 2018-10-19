import java.util.ArrayList;

public class NumberList {

    private ArrayList<Integer> numbers;

    public NumberList() {
        this.numbers = new ArrayList<>();
    }

    public int getNumberCount() {
        return this.numbers.size();
    }

    public void addNumber(int number) {
        this.numbers.add(number);
    }

    // Given an index, return the element at that index
    public int getNumberAtIndex(int index) {
        return this.numbers.get(index);
    }

    // Loop over all elements in ArrayList and add each of them
    public int getTotal(){
        //make a new variable for total
        int total = 0;
        //write for loop to calc total
        //for (initializer ; boolean ; update {}
        for (int i =0; i < getNumberCount(); i++){
            total += getNumberAtIndex(i);
        }

        // return total
        return total;
    }

    public int getEnhancedTotal(){
        int total = 0;
        for (int number: this.numbers){
            total += number;
        }
        return total;
    }
}
