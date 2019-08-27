package com.intuit.api.test.runners;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "./src/test/resources/Tests/Test_Countries_Services.feature")
public class CountriesAPIRunner {
	
}