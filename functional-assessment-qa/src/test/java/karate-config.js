function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
      env = 'dev';
    }
    var config = {
      env: env,
      myVarName: 'someValue'
    }
    if (env == 'dev') {
        // customize
        // e.g. config.foo = 'bar';
        config.baseUrl = 'https://covid-193.p.rapidapi.com';
        config.key = 'dc90049b3amsh9aaf47e130b651cp1de048jsncec7ac6acd7d';
        config.host = 'covid-193.p.rapidapi.com';
        }
        return config;
        }