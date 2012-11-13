require.config({
    paths: {
        "jquery": "vendor/jquery/jquery"
    }
});

require(["application/init","jquery"],function(Application, $) {
    console.log("Bootstrap");
    $(function(){
        application = new Application();
        application.init();
    });
});