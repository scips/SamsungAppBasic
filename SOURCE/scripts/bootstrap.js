require.config({
    paths: {
        "jquery": "vendor/jquery/jquery"
    },
    waitSeconds: 5
});

require(["application/models/application","jquery"],function(Application, $) {
  $.support.cors = true;
  console.log("Bootstrap");
  $(function(){
      application = new Application();
      application.init();
  });
});