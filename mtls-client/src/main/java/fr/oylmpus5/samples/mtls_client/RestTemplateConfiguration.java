package fr.oylmpus5.samples.mtls_client;

import org.springframework.boot.ssl.SslBundles;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class RestTemplateConfiguration {
    @Bean
    public RestTemplate getRestTemplate(RestTemplateBuilder builder, SslBundles sslBundles) {
        return builder.rootUri("https://server.olympus5.bzh:8443").sslBundle(sslBundles.getBundle("client")).build();
    }
}
