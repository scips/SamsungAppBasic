define ["jquery","underscore","application/views/screen","highcharts","highchartsexport"], ($,_,ScreenView,Highcharts,Exporting) ->

  class screen1ScreenView extends ScreenView
    getItemTemplate:()-> 
      """
        <li class="item">
          <span class="title"><%= title %></span><span class="value"><%= value %></span>
        </li>
      """

    constructor:(@divID)->
      super @divID

    show:()->
      html = @parseTemplate()
      console.log html
      $("#{@divID} .list").html(html)
      @displayGraph()
      super()

    parseTemplate:()->
      template = @getItemTemplate()
      if @data && @data.length >0
        list = for item in @data
          liItem = 
            title: item.name
            value: item.value
          _.template(template,liItem)

    displayGraph:() ->
      seriesData = for item in @data
        parseInt(item.value)
      console.log seriesData

      chart = new Highcharts.Chart(
            chart:
              renderTo: $("#{@divID} .graph")[0]
              type: 'bar'
            title:
              text: 'Historic World Population by Region'
            subtitle:
              text: 'Source: Wikipedia.org'
            xAxis:
              categories: ['Africa', 'America', 'Asia', 'Europe', 'Oceania']
              title:
                  text: null
            yAxis:
              min: 0,
              title:
                text: 'Population (millions)'
                align: 'high'
              labels:
                overflow: 'justify'
            tooltip:
              formatter: () ->
                ''+ this.series.name +': '+ this.y +' millions'
            plotOptions:
              bar:
                dataLabels:
                  enabled: true
            legend:
              layout: 'vertical'
              align: 'right'
              verticalAlign: 'top'
              x: -100
              y: 100
              floating: true
              borderWidth: 1
              backgroundColor: '#FFFFFF'
              shadow: true
            credits:
              enabled: false
            series: [
              {
                name: 'Hits'
                data: seriesData
              }
            ]
      )