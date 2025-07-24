package fr.oylmpus5.samples.mtls_client;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class MtlsClientApplication {

	public static void main(String[] args) {
		SpringApplication.run(MtlsClientApplication.class, args);
	}

	@Bean
	public CommandLineRunner getCommandLineRunner(HelloWorldClient helloWorldClient) {
		return args -> {
			String response = helloWorldClient.getHelloWorld();
			System.out.println("Response from server: " + response);
		};
	}

}
