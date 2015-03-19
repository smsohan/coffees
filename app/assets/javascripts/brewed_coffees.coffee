class BrewedCoffee

  initialize: (options)->
    @element = options.el

  render: ->
    if $('tr', @element).length == 1
      alert("Welcome, Looks like its empty. Start entering new coffees!")