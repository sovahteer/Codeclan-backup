import models.Calculator;

import static spark.Spark.get;

import spark.ModelAndView;
import spark.template.velocity.VelocityTemplateEngine;

import java.util.HashMap;
import java.util.Map;

public class Controller {
    public static void main(String[] args) {

        VelocityTemplateEngine velocityTemplateEngine = new VelocityTemplateEngine();

        get("/add/:num1/:num2", (req, res) -> {

            Integer number1 = Integer.parseInt(req.params(":num1"));
            Integer number2 = Integer.parseInt(req.params(":num2"));
            Calculator calculator = new Calculator(number1, number2);
            int resultOfCalculation = calculator.add();

            Map<String, Object> model = new HashMap<>();
            model.put("num1", number1);
            model.put("num2", number2);
            model.put("result", resultOfCalculation);
            return new ModelAndView(model, "result.vtl");
        }, velocityTemplateEngine);

        get("/subtract/:num1/:num2", (req, res) -> {

            Integer number1 = Integer.parseInt(req.params(":num1"));
            Integer number2 = Integer.parseInt(req.params(":num2"));
            Calculator calculator = new Calculator(number1, number2);
            int resultOfCalculation = calculator.subtract();

            Map<String, Object> model = new HashMap<>();
            model.put("num1", number1);
            model.put("num2", number2);
            model.put("result", resultOfCalculation);
            return new ModelAndView(model,"resultsub.vtl");
        }, velocityTemplateEngine);

        get("/multiply/:num1/:num2", (req, res) -> {
            Integer number1 = Integer.parseInt(req.params(":num1"));
            Integer number2 = Integer.parseInt(req.params(":num2"));
            Calculator calculator = new Calculator(number1, number2);
            int result = calculator.multiply();
            return result;
        });

        get("/divide/:num1/:num2", (req, res) -> {
            Integer number1 = Integer.parseInt(req.params(":num1"));
            Integer number2 = Integer.parseInt(req.params(":num2"));
            Calculator calculator = new Calculator(number1, number2);
            double result = calculator.divide();
            return result;
        });
    }
}
