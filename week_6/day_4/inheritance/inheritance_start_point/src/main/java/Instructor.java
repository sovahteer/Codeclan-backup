public class Instructor extends Person{

    private String teamName;

    public Instructor(String name, String cohort, String teamName) {
        super(name, cohort);
        this.teamName = teamName;
    }

    public String getTeamName(){
        return teamName;
    }
//
//    public void setTeamName(String teamName){
//        this.teamName = teamName;
//    }

}
