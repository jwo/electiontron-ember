Electiontron.Ballot = DS.Model.extend
  code: DS.attr('string')
  sideIds::wq
  :wq

  castBallot: (sideIds, dessertIds) ->
    console.log(sideIds, dessertIds)
    $.post("/ballots/#{id}/cast", (data)->
