define ["jquery","underscore","application/views/screen"], ($,_,ScreenView) ->

  class screen1ScreenView extends ScreenView
    getItemTemplate:()-> 
      """
        <li class="item">
          <h2><%= name %></h2>
          <p><%= value %></p>
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
          _.template(template,item)