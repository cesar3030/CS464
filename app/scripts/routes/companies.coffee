'use strict';

class Cs464.Routers.Companies extends Backbone.Router

  routes:
    'companies':              'index'
    'companies/edit/:id':     'update'
    'companies/delete/:id':   'destroy'
    'companies/query/11':     'query11'

  initialize: ->
    @collection = new Cs464.Collections.Queries()
    @companies = new Cs464.Collections.Companies()

    # @.on('refresh', ->
    #   alert('refresh')
    #   @companies.fetch()
    # )

    # HELP 
    # Go to show after model in collection is saved
    # @suggestions.on 'add', (model) =>
    # @navigate "show/#{model.id}", trigger: true

  index: () ->
    links = [
      {
        name:"Query 11", 
        description: "Find the companies that sell a minimum of 10 products.", 
        url: "#companies/query/11"
      }
    ]

    @table = new Cs464.Views.TableView(['Id','Company name', 'Address', 'Date Creation', 'Country', 'Edit', 'Delete'], ['company_id', 'company_name', 'hq_address', 'date_creation', 'country'], @companies, "#companies")
    @companies.fetch()

    newCompany = new Cs464.Models.Company
    newCompany.on('sync', =>
      @companies.fetch()
      @table.render()
    )

    new Cs464.Views.QueryList(links).render()
    @form = new Cs464.Views.CompanyFormView(
      model: newCompany
    )
    @form.render()

  update: (id) ->
    model = @companies.find((model) -> 
      return model.get('company_id') == id
    )

    model.on('sync', =>
      @companies.fetch()
      @table.render()
    )

    @form.setModel(model)
    @form.render()

  destroy: (id) ->
    model = @companies.find((model) -> 
      return model.get('company_id') == id
    )
    console.log model
    model.on('sync', =>
      @companies.fetch()
      @table.render()
    )
    model.set('id', id)
    model.destroy()



  query11: () ->
    new Cs464.Views.TableView(['Company Name', 'Number of products'], ['company_name', 'Number of products'], @collection)
    @collection.fetch({data: {query: 11}})