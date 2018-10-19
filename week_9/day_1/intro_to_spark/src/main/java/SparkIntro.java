import java.util.ArrayList;
import java.util.Collections;

import static spark.Spark.get;

public class SparkIntro {

    public static void main (String[] args){

        get("/hello/:name", (req, res) -> {
            return "Hello" + req.params(":name");
        });

        get("/random_name", (res, req) -> {
            ArrayList<String> names = new ArrayList<>();
            names.add("Euan");
            names.add("Chris");
            names.add("Darren");
            names.add("Scott");
            names.add("Jamie");
            names.add("Marilyn");
            Collections.shuffle(names);
            return names.get(0);
        });

        get("/friends/:id", (req, res) -> {
           String[] friends = {"Euan", "Chris", "Darren", "Scott", "Jamie", "Marilyn"};
           int index = Integer.parseInt(req.params(":id")) -1;
           return friends[index];
        });

        get ("/add/:num1/:num2", (req, res) -> {
            int num1 = Integer.parseInt(req.params(":num1"));
            int num2 = Integer.parseInt(req.params(":num2"));
            return num1 + num2;
        });


    }
}
