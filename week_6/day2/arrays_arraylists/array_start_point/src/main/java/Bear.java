import java.util.ArrayList;

public class Bear {
    private String name;
    private ArrayList<Salmon> belly;

    public Bear(String name){
        this.belly = new ArrayList<Salmon>();
        this.name = name;

    }

    public int foodCount(){
        return this.belly.size();
    }

    public void eat(Salmon fish){
        belly.add(fish);
    }

    public void sleep(){
        belly.clear();
    }

    public void eatFishFromRiver(River river){
        //remove fish from river
        Salmon salmon = river.removeFish();
        //add fish to bear
        belly.add(salmon);
    }
}

