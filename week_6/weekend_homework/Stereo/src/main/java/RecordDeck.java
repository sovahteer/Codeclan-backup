public class RecordDeck extends Component {

    private int speed;

    public RecordDeck(int volume, int speed) {
        super(volume);
        this.speed = speed;
    }

    public int changeSpeed(){
        return this.speed;
    }
}
