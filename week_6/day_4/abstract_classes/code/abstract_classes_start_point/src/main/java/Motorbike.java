public class Motorbike extends Vehicle {

    public Motorbike(String model)
    {
        super(model, 2);
    }

    @Override
    public String boardingInstructions(){
        return "Swing leg over the bike and sit on the seat.";
    }

    public String drivingInstructions()
    {
        return super.drivingInstructions() + " Use handlebars to steer.";

    }
}
