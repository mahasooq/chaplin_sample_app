// Generated by CoffeeScript 1.6.2
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['views/base/view', 'text!templates/detail.hbs'], function(View, template) {
    'use strict';
    var DetailView, _ref;

    return DetailView = (function(_super) {
      __extends(DetailView, _super);

      function DetailView() {
        _ref = DetailView.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      DetailView.prototype.autoRender = true;

      DetailView.prototype.container = '.user-detail';

      DetailView.prototype.className = 'detail';

      DetailView.prototype.template = template;

      DetailView.prototype.initialize = function() {
        DetailView.__super__.initialize.apply(this, arguments);
        this.delegate('click', '.edit-user', this.showModal);
        return this.delegate('click', '.update-user', this.updateUser);
      };

      DetailView.prototype.showModal = function() {
        console.log("modal");
        return $('#edit').modal('show');
      };

      DetailView.prototype.updateUser = function(event) {
        $('#edit').modal('hide');
        this.model.set({
          name: $('#user-name').val(),
          email: $('#user-email').val()
        });
        return this.model.save();
      };

      return DetailView;

    })(View);
  });

}).call(this);
