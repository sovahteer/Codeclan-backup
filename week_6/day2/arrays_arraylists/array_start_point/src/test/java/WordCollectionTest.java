import org.junit.*;
import static org.junit.Assert.assertEquals;


public class WordCollectionTest {

    private WordCollection myWords;

    @Before
    public void before(){
        myWords = new WordCollection();
    }

    @Test
    public void canGetWordCount(){
        assertEquals(5, myWords.getWordCount());
    }



}
