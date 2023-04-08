package assessment;
import com.intuit.karate.junit5.Karate;

public class TestRunner{
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:assessment").relativeTo(getClass());
    }

}
