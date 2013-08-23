var app = app || {};

app.Member = Backbone.Model.extend({
	defaults:{
		name: '',
		photo: '',
		check: false
	}
});

var Members = Backbone.Collection.extend({
	model: app.Member
});

app.Members = new Members();