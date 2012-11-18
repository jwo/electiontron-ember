Electiontron.Router = Ember.Router.extend({
  location: 'hash',

  root: Ember.Route.extend({
    index: Ember.Route.extend({
      route: '/',
      startVoting: function(router) {
        router.transitionTo("ballot")
      },
      connectOutlets: function(router) {
        router.get('applicationController').connectOutlet("entries");
      }

    }),
    ballot: Ember.Route.extend({
      route: "/ballot",
      connectOutlets: function(router) {
        router.get('applicationController').connectOutlet("ballot");
      },
      sides: Ember.Route.extend({
        connectOutlets: function(router) {
          router.get('applicationController').connectOutlet("sides");
        },
        voteDesserts: function(router) {
          router.transitionTo("desserts")
        }
      }),
      desserts: Ember.Route.extend({
        connectOutlets: function(router) {
          router.get('applicationController').connectOutlet("desserts");
        }
      })
    })
  })
});

