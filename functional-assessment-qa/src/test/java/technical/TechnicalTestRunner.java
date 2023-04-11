package technical;

import com.intuit.karate.junit5.Karate;

public class TechnicalTestRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:technical").relativeTo(getClass());
    }

}
