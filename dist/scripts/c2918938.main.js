(function(){window.Cs464={Models:{},Collections:{},Views:{},Routers:{},init:function(){"use strict";return console.log("Hello from Backbone!")}},$(function(){"use strict";return Cs464.init(),window.location.hash="",Backbone.history.stop(),Backbone.history.start(),new Cs464.Routers.Users,new Cs464.Routers.Products,new Cs464.Routers.Orders,new Cs464.Routers.Demographics,new Cs464.Routers.Companies,new Cs464.Routers.Categories})}).call(this),this.JST=this.JST||{},this.JST["app/scripts/templates/categories-view.ejs"]=function(obj){obj||(obj={});var __p="";_.escape;with(obj)__p+='<table class="table table-condensed">\n  <thead>\n    <tr>\n      <th>Category name</th>\n      <th>Created at</th>\n      <th>Deleted at</th>\n    </tr>\n  </thead>\n  <tbody>\n    <!-- UserViews here -->\n  </tbody>\n</table>\n';return __p},this.JST["app/scripts/templates/category-form-view.ejs"]=function(obj){obj||(obj={});var __p="";_.escape;with(obj)__p+='<form class="form-horizontal">\n<fieldset>\n\n<!-- Form Name -->\n<legend>Form Name</legend>\n\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="textinput">New category</label>  \n  <div class="col-md-4">\n  <input id="category-name" name="textinput" type="text" placeholder="category name" class="form-control input-md" required="">  \n  </div>\n</div>\n\n</fieldset>\n</form>\n\n';return __p},this.JST["app/scripts/templates/category-view.ejs"]=function(obj){obj||(obj={});var __t,__p="";_.escape;with(obj)__p+="<td>"+(null==(__t=get("category_name"))?"":__t)+"</td>\n<td>"+(null==(__t=get("created_at"))?"":__t)+"</td>\n<td>"+(null==(__t=get("created_at"))?"":__t)+"</td>\n";return __p},this.JST["app/scripts/templates/company-form-view.ejs"]=function(obj){obj||(obj={});var __t,__p="";_.escape,Array.prototype.join;with(obj)__p+='<form>\n<fieldset>\n\n<!-- Form Name -->\n<legend>Company Form</legend>\n\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="textinput">Name</label>  \n  <div class="col-md-4">\n  <input id="name" value="'+(null==(__t=get("company_name"))?"":__t)+'" name="textinput" type="text" placeholder="company name" class="form-control input-md" required="">\n    \n  </div>\n</div>\n\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="textinput">Address</label>  \n  <div class="col-md-4">\n  <input id="address" value="'+(null==(__t=get("hq_address"))?"":__t)+'" name="textinput" type="text" placeholder="" class="form-control input-md" required="">\n    \n  </div>\n</div>\n\n<!-- Text input-->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="textinput">Company creation date</label>  \n  <div class="col-md-4">\n  <input id="date" type="text" pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))" value="'+(null==(__t=get("date_creation"))?"":__t)+'" name="textinput" placeholder="ex: 1998-05-12" class="form-control input-md" required="">\n    \n  </div>\n</div>\n\n<!-- Select Basic -->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="selectbasic">Country</label>\n  <div class="col-md-4">\n    <select id="county" name="selectbasic" class="form-control">\n      <option value="" ',"USA"==get("country")&&(__p+=" selected "),__p+=">USA</option>","USA"==get("country")&&(__p+=" selected "),__p+='\n      <option value="" ',"Canada"==get("country")&&(__p+=" selected "),__p+='>Canada</option>\n      <option value="" ',"France"==get("country")&&(__p+=" selected "),__p+='>France</option>\n      <option value="" ',"United kingdom"==get("country")&&(__p+=" selected "),__p+='>United kingdom</option>\n      <option value="" ',"Mexico"==get("country")&&(__p+=" selected "),__p+='>Mexico</option>\n      <option value="" ',"Sweden"==get("country")&&(__p+=" selected "),__p+='>Sweden</option>\n      <option value="" ',"Nederlands"==get("country")&&(__p+=" selected "),__p+='>Nederlands</option>\n      <option value="" ',"Brazil"==get("country")&&(__p+=" selected "),__p+='>Brazil</option>\n    </select>\n  </div>\n</div>\n\n<!-- Button (Double) -->\n<div class="form-group">\n  <label class="col-md-4 control-label" for="button1id"></label>\n  <div class="col-md-8">\n    <button type="submit" name="button1id" class="btn btn-success">Save</button>\n    <button type="reset" id="cancelBtn" name="button2id" class="btn btn-danger">Cancel</button>\n  </div>\n</div>\n\n</fieldset>\n</form>\n';return __p},this.JST["app/scripts/templates/header-view.ejs"]=function(obj){obj||(obj={});var __t,__p="";_.escape,Array.prototype.join;with(obj)columns.forEach(function(a){__p+="\n<th>"+(null==(__t=a)?"":__t)+"</th>\n"}),__p+="\n\n";return __p},this.JST["app/scripts/templates/query-list.ejs"]=function(obj){obj||(obj={});var __t,__p="";_.escape,Array.prototype.join;with(obj)__p+='<ul class="nav nav-pills pull-right">\n',queries.forEach(function(a){__p+='\n<li><a class="btn btn-xs btn-success" href="'+(null==(__t=a.url)?"":__t)+'" title="'+(null==(__t=a.description)?"":__t)+'">'+(null==(__t=a.name)?"":__t)+"</a></li>\n"}),__p+="\n</ul>\n<h3>Queries: </h3>";return __p},this.JST["app/scripts/templates/row-view.ejs"]=function(obj){obj||(obj={});var __t,__p="";_.escape,Array.prototype.join;with(obj)attributes.forEach(function(a){__p+="\n<td>"+(null==(__t=model.get(a))?"":__t)+"</td>\n"}),__p+="\n",""!=actionUrl&&(__p+='\n  <td><a href="'+(null==(__t=actionUrl)?"":__t)+"/edit/"+(null==(__t=model.get("company_id"))?"":__t)+'">Edit</a></td>\n  <td><a href="'+(null==(__t=actionUrl)?"":__t)+"/delete/"+(null==(__t=model.get("company_id"))?"":__t)+'">Delete</a></td>\n'),__p+="\n";return __p},this.JST["app/scripts/templates/rows-view.ejs"]=function(obj){obj||(obj={});var __p="";_.escape;with(obj)__p+="<!-- RowViews here -->\n";return __p},this.JST["app/scripts/templates/table-view.ejs"]=function(obj){obj||(obj={});var __p="";_.escape;with(obj)__p+='<table class="table table-condensed"></table>\n\n';return __p},this.JST["app/scripts/templates/user-view.ejs"]=function(obj){obj||(obj={});var __t,__p="";_.escape;with(obj)__p+="<td>"+(null==(__t=get("email"))?"":__t)+"</td>\n<td>"+(null==(__t=get("phone_number"))?"":__t)+"</td>\n<td>"+(null==(__t=get("lastname"))?"":__t)+"</td>\n<td>"+(null==(__t=get("firstname"))?"":__t)+"</td>\n<td>"+(null==(__t=get("date_birth"))?"":__t)+"</td>\n<td>"+(null==(__t=get("type"))?"":__t)+"</td>\n<td>"+(null==(__t=get("default_address_id"))?"":__t)+"</td>\n<td>"+(null==(__t=get("created_at"))?"":__t)+"</td>\n";return __p},this.JST["app/scripts/templates/users-view.ejs"]=function(obj){obj||(obj={});var __p="";_.escape;with(obj)__p+='<table class="table table-condensed">\n  <thead>\n    <tr>\n      <th>Email</th>\n      <th>Phone_number</th>\n      <th>Lastname</th>\n      <th>Firstname</th>\n      <th>Date of birth</th>\n      <th>User type</th>\n      <th>Default address id</th>\n      <th>Created at</th>\n    </tr>\n  </thead>\n  <tbody>\n    <!-- CategoryViews here -->\n  </tbody>\n</table>';return __p},function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.CategoriesView=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.el="#page",c.prototype.template=JST["app/scripts/templates/categories-view.ejs"],c.prototype.events={},c.prototype.initialize=function(){return this.render(),this.listenTo(this.collection,"change",this.render),this.listenTo(this.collection,"add",this.addCategory),this.listenTo(this.collection,"reset",this.addAllCategories),this.collection.fetch()},c.prototype.render=function(){return this.$el.html(this.template())},c.prototype.addCategory=function(a){var b,c;return b=new Cs464.Views.CategoryView({model:a}),c=b.render(),$(this.el).find("tbody").append(c)},c.prototype.addAllCategories=function(){return this.collection.each(this.addCategory)},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Models.Category=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.url=function(){return this.category_name?"http://localhost/server/categories.php?category_name="+this.category_name:"http://localhost/server/categories.php"},c.prototype.initialize=function(){},c.prototype.defaults={},c.prototype.validate=function(a,b){},c.prototype.parse=function(a,b){return a},c}(Backbone.Model)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Collections.Categories=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.model=Cs464.Models.Category,c.prototype.url="http://localhost/server/categories.php",c}(Backbone.Collection)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.CategoryView=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.template=JST["app/scripts/templates/category-view.ejs"],c.prototype.tagName="tr",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){return this.listenTo(this.model,"change",this.render),this.render},c.prototype.render=function(){return this.$el.html(this.template(this.model))},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Models.User=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.url=function(){return this.email?"/server/users.php?email="+this.email:"/server/users.php"},c.prototype.initialize=function(){},c.prototype.defaults={},c.prototype.validate=function(a,b){},c.prototype.parse=function(a,b){return a},c}(Backbone.Model)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Collections.Users=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.model=Cs464.Models.User,c.prototype.url="http://localhost/server/users.php",c}(Backbone.Collection)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.UserView=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.template=JST["app/scripts/templates/user-view.ejs"],c.prototype.tagName="tr",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){return this.listenTo(this.model,"change",this.render)},c.prototype.render=function(){return this.$el.html(this.template(this.model))},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.UsersView=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.el="#page",c.prototype.template=JST["app/scripts/templates/users-view.ejs"],c.prototype.events={},c.prototype.initialize=function(){return this.render(),this.listenTo(this.collection,"change",this.render),this.listenTo(this.collection,"add",this.addUser),this.listenTo(this.collection,"reset",this.addAllUsers),this.collection.fetch()},c.prototype.render=function(){return this.$el.html(this.template())},c.prototype.addUser=function(a){var b;return b=new Cs464.Views.UserView({model:a}),$(this.el).find("tbody").append(b.render())},c.prototype.addAllUsers=function(){return this.collection.each(this.addUser)},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.HeaderView=function(a){function c(a){this.columns=a,c.__super__.constructor.call(this)}return b(c,a),c.prototype.template=JST["app/scripts/templates/header-view.ejs"],c.prototype.tagName="thead",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){},c.prototype.render=function(){return this.$el.html(this.template({columns:this.columns}))},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.TableView=function(a){function c(a,b,d,e){this.headerFields=a,this.modelAttributes=b,this.collection=d,this.actionUrl=null!=e?e:"",c.__super__.constructor.call(this)}return b(c,a),c.prototype.el=$("#page"),c.prototype.template=JST["app/scripts/templates/table-view.ejs"],c.prototype.tagName="table",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){return this.render(),this.listenTo(this.collection,"fetch",this.render)},c.prototype.render=function(){var a,b;return this.$el.html(this.template()),b=new Cs464.Views.HeaderView(this.headerFields),$(this.el).find("table").append(b.render()),a=new Cs464.Views.RowsView(this.modelAttributes,this.collection,this.actionUrl),$(this.el).find("table").append(a.render()),this},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.RowView=function(a){function c(a,b,d){this.attributesToDisplay=a,this.model=b,this.actionUrl=null!=d?d:"",c.__super__.constructor.call(this)}return b(c,a),c.prototype.template=JST["app/scripts/templates/row-view.ejs"],c.prototype.tagName="tr",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){return this.listenTo(this.model,"change",this.render)},c.prototype.render=function(){return this.$el.html(this.template({attributes:this.attributesToDisplay,model:this.model,actionUrl:this.actionUrl}))},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.RowsView=function(a){function c(a,b,d){this.modelAttributes=a,this.collection=b,this.actionUrl=null!=d?d:"",c.__super__.constructor.call(this)}return b(c,a),c.prototype.template=JST["app/scripts/templates/rows-view.ejs"],c.prototype.tagName="tbody",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){return this.render(),this.listenTo(this.collection,"change",this.render),this.listenTo(this.collection,"add",this.addRow),this.listenTo(this.collection,"reset",this.addAllRows)},c.prototype.render=function(){return this.$el.html(this.template())},c.prototype.addRow=function(a){var b;return b=new Cs464.Views.RowView(this.modelAttributes,a,this.actionUrl),$(this.el).append(b.render())},c.prototype.addNoResult=function(){return $(this.el).append("<tr><td colspan='"+this.modelAttributes.length+"'>No result</td></tr>")},c.prototype.addAllRows=function(){return this.render(),this.collection.each(this.addRow)},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Routers.Users=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.routes={users:"index","users/query/1":"query1","users/query/2":"query2"},c.prototype.initialize=function(){return this.collection=new Cs464.Collections.Queries},c.prototype.index=function(){var a;return a=[{name:"Query 1",description:"Select the firstname and lastname of user having an email with apache.org domain.",url:"#users/query/1"},{name:"Query 2",description:"Find the youngest user.",url:"#users/query/2"}],new Cs464.Views.QueryList(a).render(),$("#form").html("")},c.prototype.query1=function(){return new Cs464.Views.TableView(["Firstname","lastname"],["firstname","lastname"],this.collection),this.collection.fetch({data:{query:1}})},c.prototype.query2=function(){return new Cs464.Views.TableView(["Youngest User"],["Youngest User"],this.collection),this.collection.fetch({data:{query:2}})},c}(Backbone.Router)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.QueryList=function(a){function c(a){this.queries=a,c.__super__.constructor.call(this)}return b(c,a),c.prototype.el=$("#query-list"),c.prototype.template=JST["app/scripts/templates/query-list.ejs"],c.prototype.events={},c.prototype.initialize=function(){return this.render},c.prototype.render=function(){return this.$el.html(this.template({queries:this.queries}))},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Models.Query=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.url="http://localhost/server/queries.php",c.prototype.initialize=function(){},c.prototype.defaults={},c.prototype.validate=function(a,b){},c.prototype.parse=function(a,b){return a},c}(Backbone.Model)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Models.Query=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.url="http://localhost/server/queries.php",c.prototype.initialize=function(){},c.prototype.defaults={},c.prototype.validate=function(a,b){},c.prototype.parse=function(a,b){return a},c}(Backbone.Model)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Collections.Queries=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.model=Cs464.Models.Query,c.prototype.url="http://localhost/server/queries.php",c}(Backbone.Collection)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Routers.Products=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.routes={products:"index","products/query/3":"query3","products/query/8":"query8","products/query/10":"query10"},c.prototype.initialize=function(){return this.collection=new Cs464.Collections.Queries},c.prototype.index=function(){var a;return a=[{name:"Query 3",description:"Select the products that have been linked to a deleted category.",url:"#products/query/3"},{name:"Query 8",description:"Count the number of product of each category and display the result from the category with the most products to the one with the least products.",url:"#products/query/8"},{name:"Query 10",description:"Returns the list of products that have never been bought.",url:"#products/query/10"}],new Cs464.Views.QueryList(a).render(),$("#form").html("")},c.prototype.query3=function(){return new Cs464.Views.TableView(["Product id","Price"],["product_id","price"],this.collection),this.collection.fetch({data:{query:3}})},c.prototype.query8=function(){return new Cs464.Views.TableView(["Category name","Count"],["category_name","count(category_name)"],this.collection),this.collection.fetch({data:{query:8}})},c.prototype.query10=function(){return new Cs464.Views.TableView(["Product name"],["name"],this.collection),this.collection.fetch({data:{query:10}})},c}(Backbone.Router)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Routers.Orders=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.routes={orders:"index","orders/query/5":"query5","orders/query/6":"query6","orders/query/9":"query9"},c.prototype.initialize=function(){return this.collection=new Cs464.Collections.Queries},c.prototype.index=function(){var a;return a=[{name:"Query 5",description:"Select the email of user which have submited an order of one item, using a 3 days delivery type.",url:"#orders/query/5"},{name:"Query 6",description:"FIND the email of the user(s) who bought the most expensive product.",url:"#orders/query/6"},{name:"Query 9",description:"Sort the orders based on the quantity of items it contains, from larger to smaller ones.",url:"#orders/query/9"}],new Cs464.Views.QueryList(a).render(),$("#form").html("")},c.prototype.query5=function(){return new Cs464.Views.TableView(["Email"],["email"],this.collection),this.collection.fetch({data:{query:5}})},c.prototype.query6=function(){return new Cs464.Views.TableView(["Email"],["email"],this.collection),this.collection.fetch({data:{query:6}})},c.prototype.query9=function(){return new Cs464.Views.TableView(["Order id","Status","Email","Quantity"],["order_id","status","email","quantity"],this.collection),this.collection.fetch({data:{query:9}})},c}(Backbone.Router)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Routers.Demographics=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.routes={demographics:"index","demographics/query/4":"query4","demographics/query/7":"query7"},c.prototype.initialize=function(){return this.collection=new Cs464.Collections.Queries},c.prototype.index=function(){var a;return a=[{name:"Query 4",description:"Find those countries that have at least a city with the same name.",url:"#demographics/query/4"},{name:"Query 7",description:"Select all the countries listed in the database.",url:"#demographics/query/7"}],new Cs464.Views.QueryList(a).render(),$("#form").html("")},c.prototype.query4=function(){return new Cs464.Views.TableView(["Country 1","Country 2","State"],["A.country","B.country","A.state"],this.collection),this.collection.fetch({data:{query:4}})},c.prototype.query7=function(){return new Cs464.Views.TableView(["Country"],["countries listed"],this.collection),this.collection.fetch({data:{query:7}})},c}(Backbone.Router)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Routers.Companies=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.routes={companies:"index","companies/edit/:id":"update","companies/delete/:id":"destroy","companies/query/11":"query11"},c.prototype.initialize=function(){var a;return this.collection=new Cs464.Collections.Queries,this.companies=new Cs464.Collections.Companies,a=new Cs464.Models.Company,a.on("sync",function(a){return function(){return a.companies.fetch(),a.table.render()}}(this)),this.form=new Cs464.Views.CompanyFormView({model:a}),this.form.setContainer(this)},c.prototype.index=function(){var a;return a=[{name:"Query 11",description:"Find the companies that sell a minimum of 10 products.",url:"#companies/query/11"}],this.table=new Cs464.Views.TableView(["Id","Company name","Address","Date Creation","Country","Edit","Delete"],["company_id","company_name","hq_address","date_creation","country"],this.companies,"#companies"),this.companies.fetch(),new Cs464.Views.QueryList(a).render(),this.form.render()},c.prototype.update=function(a){var b;return b=this.companies.find(function(b){return b.get("company_id")===a}),b.on("sync",function(a){return function(){return a.companies.fetch(),a.table.render()}}(this)),this.form.setModel(b),this.form.render()},c.prototype.destroy=function(a){var b;return b=this.companies.find(function(b){return b.get("company_id")===a}),console.log(b),b.on("sync",function(a){return function(){return a.companies.fetch(),a.table.render()}}(this)),b.set("id",a),b.destroy()},c.prototype.reloadCompanies=function(){return this.companies.fetch(),this.table.render()},c.prototype.query11=function(){return new Cs464.Views.TableView(["Company Name","Number of products"],["company_name","Number of products"],this.collection),this.collection.fetch({data:{query:11}})},c}(Backbone.Router)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Routers.Categories=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.routes={categories:"index"},c.prototype.initialize=function(){},c.prototype.index=function(){var a;return a=[{name:"Query 11",description:"Find the companies that sell a minimum of 10 products.",url:"#companies/query/11"}],new Cs464.Views.QueryList(a).render(),$("#form").html("")},c}(Backbone.Router)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.CategoryFormView=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.el=$("#form"),c.prototype.template=JST["app/scripts/templates/category-form-view.ejs"],c.prototype.tagName="div",c.prototype.id="",c.prototype.className="",c.prototype.events={},c.prototype.initialize=function(){},c.prototype.render=function(){return this.$el.html(this.template(this.model))},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Views.CompanyFormView=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.el=$("#form"),c.prototype.template=JST["app/scripts/templates/company-form-view.ejs"],c.prototype.tagName="form",c.prototype.events={"submit form":"createUpdateCompany","click #cancelBtn":"clearForm"},c.prototype.initialize=function(){},c.prototype.setContainer=function(a){return this.view=a},c.prototype.render=function(){return this.$el.html(this.template(this.model))},c.prototype.createUpdateCompany=function(a){var b;return a.preventDefault(),b="Company added!",void 0!==this.model.get("company_id")&&(this.model.set("id",this.model.get("company_id")),b="Company updated!"),this.model.set("country",$("#county").find(":selected").text()),this.model.set("company_name",$("#name").val()),this.model.set("hq_address",$("#address").val()),this.model.set("date_creation",$("#date").val()),this.model.save(null,{success:function(a){return function(){return alert(b),a.clearForm()}}(this),error:function(){return alert("Error!")}})},c.prototype.clearForm=function(){var a;return $("#name").val(""),$("#address").val(""),$("#date").val(""),a=new Cs464.Models.Company,a.on("sync",function(a){return function(){return a.view.reloadCompanies()}}(this)),this.setModel(a)},c.prototype.setModel=function(a){return this.model=a,console.log(this.model)},c}(Backbone.View)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Models.Company=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.url=function(){return this.id?"http://localhost/server/companies.php?id="+this.id:"http://localhost/server/companies.php"},c.prototype.initialize=function(){},c.prototype.defaults={},c.prototype.validate=function(a,b){},c.prototype.parse=function(a,b){return a},c}(Backbone.Model)}.call(this),function(){"use strict";var a={}.hasOwnProperty,b=function(b,c){function d(){this.constructor=b}for(var e in c)a.call(c,e)&&(b[e]=c[e]);return d.prototype=c.prototype,b.prototype=new d,b.__super__=c.prototype,b};Cs464.Collections.Companies=function(a){function c(){return c.__super__.constructor.apply(this,arguments)}return b(c,a),c.prototype.model=Cs464.Models.Company,c.prototype.url="http://localhost/server/companies.php",c}(Backbone.Collection)}.call(this);