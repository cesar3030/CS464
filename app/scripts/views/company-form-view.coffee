'use strict';

class Cs464.Views.CompanyFormView extends Backbone.View
  
  el: $("#form")

  template: JST['app/scripts/templates/company-form-view.ejs']

  tagName: 'form'

  events: {
    "click #submitBtn": "createUpdateCompany"
    "click #cancelBtn": "clearForm"
  }

  initialize: () ->
    
  setContainer: (view) ->
    @view = view
    
  render: () ->
    @$el.html @template(@model)

  createUpdateCompany: () ->
    message = "Company added!"
    if @model.get('company_id') != undefined
      @model.set('id', @model.get('company_id'))
      message = "Company updated!"

    @model.set('country', $("#county").find(":selected").text())
    @model.set('company_name', $("#name").val())
    @model.set('hq_address', $("#address").val())
    @model.set('date_creation', $("#date").val())
    @model.save(
      null, 
      {
        success: =>
          alert(message)
          @clearForm()
        error: ->
          alert("Error!")
      }
    )

  clearForm: () ->
    $("#name").val("")
    $("#address").val("")
    $("#date").val("")
    model = new Cs464.Models.Company
    model.on('sync', =>
      @view.reloadCompanies()
    )
    @setModel(model)

  setModel: (newModel) ->
    @model = newModel
    console.log @model
