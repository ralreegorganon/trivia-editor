import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
    this.resource('trivia', function() {
        this.resource('trivium', { path: '/:trivium_id' });
    });
});

export default Router;
