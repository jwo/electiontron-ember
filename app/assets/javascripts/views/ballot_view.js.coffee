Electiontron.BallotView = Ember.View.extend({
  templateName: 'ballot'

  validateCode: ->
    code = @get("codeView.value")
    Electiontron.ballotController.createBallot(code)
})
