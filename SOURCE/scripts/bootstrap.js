require.config({
    paths: {
        "jquery": "vendor/jquery/jquery",
        "depend": "vendor/require/plugins/depend",
        "underscore": "vendor/underscore/underscore",
        "highcharts": "vendor/highcharts/highcharts",
        'highchartsexport': "vendor/highcharts/exporting"
    },
    shim: {
      highcharts: {
        deps: ['jquery'],
        exports: "Highcharts"
      },
      highchartsexport: {
        deps: ['highcharts'],
        exports: "Exporting"
      }
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