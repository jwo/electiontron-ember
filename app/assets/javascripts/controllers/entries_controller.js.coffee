Electiontron.EntriesController = Ember.ArrayController.extend
  content: Electiontron.store.findAll(Electiontron.Entry)

  sides: (->
    @forCategory("side")
  ).property("content[]")

  desserts: (->
    @forCategory("dessert")
  ).property("content[]")

  forCategory: (category) ->
    @filter (item, index, enumerable) ->
      item.get("category") == category

Electiontron.entriesController = Electiontron.EntriesController.create()
