Electiontron.BallotController = Ember.Object.extend
  sides: []
  desserts: []
  numberOfSides: 0
  numberOfDesserts: 0
  ballot: null

  sideCount: (->
    @numberOfSides
  ).property("numberOfSides")

  dessertCount: (->
    @numberOfDesserts
  ).property("numberOfDesserts")

  votingForSidesAllowed: (->
    @get("numberOfSides") < 3
  ).property("sideCount")

  votingForDessertsAllowed: (->
    @get("numberOfDesserts") < 3
  ).property("dessertCount")

  startBallot: (ballot)->
    @set("ballot", ballot)
    Electiontron.get("router").transitionTo("sides")

  createBallot: (code)->
    # Ask server if valid / unused code
    $.get("/ballots/?code=#{code}", (data)->
      ballotJSON = data.ballots[0]
      if ballotJSON
        balottId = Electiontron.store.load(Electiontron.Ballot, ballotJSON).id
        Electiontron.ballotController.startBallot(Electiontron.Ballot.find(ballotId))
      else
        alert("Invalid Code")
    )

  voteFor: (event) ->
    eventId = event.context
    entry = Electiontron.store.find(Electiontron.Entry, eventId)
    if entry.get("category") == "side"
      @sides.pushObject(entry) unless @sides.contains(entry)
      @set("numberOfSides", @get("numberOfSides")+1)
    else
      @desserts.pushObject(entry) unless @desserts.contains(entry)
      @set("numberOfDesserts", @get("numberOfDesserts")+1)
    entry.set("selected", true)

  submitVote: (event) ->
    sideIds = @sides.mapProperty("id")
    dessertIds = @desserts.mapProperty("id")
    ballot = @get("ballot")
    ballot.castBallot(sideIds, dessertIds)

Electiontron.ballotController = Electiontron.BallotController.create()
