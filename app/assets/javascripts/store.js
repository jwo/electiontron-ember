Electiontron.Store = DS.Store.extend({
  revision: 4,
  adapter: DS.RESTAdapter.create()
});

Electiontron.store = Electiontron.Store.create()
