function() {

	var config;
	karate.configure('ssl',true);
	
	config = karate.read('classpath:Config/endPoints.json');
	config.myEndPoints = karate.read('classpath:Config/endPoints.json');
	
	config.COUNTRIES_GET_URL    = config.myEndPoints.COUNTRIES_GET_URL;
	config.GET_W_NAME_ENDPOINT  = config.myEndPoints.GET_W_NAME_ENDPOINT;
	config.GET_W_CODE_ENDPOINT  = config.myEndPoints.GET_W_CODE_ENDPOINT;
	
	return config;
}
