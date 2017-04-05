'use strict';

class Cs464.Views.CategoriesView extends Backbone.View

  el: "#page"
  
  template: JST['app/scripts/templates/categories-view.ejs']

  events: {}

  initialize: () ->
    @render()
    @listenTo @collection, 'change', @render
    @listenTo @collection, 'add', @addCategory
    @listenTo @collection, 'reset', this.addAllCategories    

    @collection.fetch()

  render: () ->
    @$el.html @template()

  addCategory: (category) ->
    categoryView = new Cs464.Views.CategoryView({model: category})
    test = categoryView.render()
    $(@el).find("tbody").append(test)

  addAllCategories: () ->
    @collection.each(@addCategory)



    
