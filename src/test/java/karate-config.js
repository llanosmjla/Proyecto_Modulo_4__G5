function fn() {
    // get system property 'karate.env'
    let env = karate.env;
    // settings to wait a response from servers 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    karate.log('karate.env property was:', env);

    if (!env) {
        env = 'dev';
    }

    var config = {
       env: env,
       baseUrl: 'https://6878380731d28a460e1d80ae.mockapi.io/api/',
       user: 'juanito'
    }

    return config;
}