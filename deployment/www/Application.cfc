component extends="lib.fw1.framework.one" output="false" {
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.setClientCookies = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	this.name = "rollout-app";
	this.defaultdatasource="basic";


	// Mappings:
	this.mappings= [
		{"/docbox" = "/lib/docbox"},
		{"/testbox" = "/lib/testbox"}
	];


	// FW/1 settings
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
		subsystemsFolder: "subsystems",
		reloadApplicationOnEveryRequest: true,
		error = 'main.error',
		generateSES = false,
		SESOmitIndex = false,
		diEngine = 'aop1',
		diComponent = 'lib.fw1.framework.aop',
		diLocations = '/model, /controllers',
		diConfig = {
			loadListener : "LoadListener"
		},
		routes = [ ],
		subsystems = {
			admin = { },
			module = { }
		}
	};

	public void function setupApplication(){ }

	public void function setupSession() { }

	public void function setupRequest() {
		if(structKeyExists(url, 'reload')){
			this.setupApplication();
		}
	}

	public void function setupView() { }

	public void function setupSubsystem() { }

	public void function setupResponse() { }

	public string function onMissingView(struct rc = {}) {
		return "Error 404 - Page not found.";
	}

	private any function configCFRedis(){
		local.redisHost = "localhost";  // redis server hostname or ip address
		local.redisPort = 6379;         // redis server ip address

		// Configure connection pool
		local.jedisPoolConfig = CreateObject("java", "redis.clients.jedis.JedisPoolConfig");
		local.jedisPoolConfig.init();
		local.jedisPoolConfig.testOnBorrow = false;
		local.jedisPoolConfig.testOnReturn = false;
		local.jedisPoolConfig.testWhileIdle = true;
		local.jedisPoolConfig.maxActive = 100;
		local.jedisPoolConfig.maxIdle = 5;
		local.jedisPoolConfig.numTestsPerEvictionRun = 10;
		local.jedisPoolConfig.timeBetweenEvictionRunsMillis = 10000;
		local.jedisPoolConfig.maxWait = 3000;

		local.jedisPool = CreateObject("java", "redis.clients.jedis.JedisPool");
		local.jedisPool.init(local.jedisPoolConfig, local.redisHost, local.redisPort);

		// The "cfc.cfredis" component name will change depending on where you put cfredis
		local.redis = CreateObject("component", "cfc.cfredis").init();
		local.redis.connectionPool = local.jedisPool;

		lock scope="Application" type="exclusive" timeout="10"{
			application.redis = local.redis;
		}
	}

}
