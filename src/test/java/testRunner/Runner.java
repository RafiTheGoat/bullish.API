package testRunner;

import com.intuit.karate.junit5.Karate;

public class Runner {
	@Karate.Test
	public Karate runTest() {
		return Karate.run("classpath:features")
				.tags("test");
	}

}
