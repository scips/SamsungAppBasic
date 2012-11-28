define ["jquery","underscore","application/views/screen"], ($,_,ScreenView) ->

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
      super()

    parseTemplate:()->
      template = @getItemTemplate()
      if @data && @data.length >0
        list = for item in @data
          liItem = 
            title: item.name
            value: item.value
          _.template(template,liItem)