package fr.oylmpus5.samples.mtls_client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class HelloWorldClient {
    private final RestTemplate restTemplate;

    @Autowired
    public HelloWorldClient(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public String getHelloWorld() {
        return restTemplate.getForObject("/hello", String.class);
    }
}
