public class SeniorInstructor extends Instructor {

    private String impressiveTitle;

    public SeniorInstructor(String name, String cohort, String teamName, String impressiveTitle){
        super(name, cohort, teamName);
        this.impressiveTitle = impressiveTitle;
    }

}
