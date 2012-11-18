Electiontron.Entry = DS.Model.extend({
  name: DS.attr('string'),
  chef: DS.attr('string'),
  category: DS.attr('string'),
  thumbUrl: DS.attr('string'),
  largeUrl: DS.attr('string'),
  selected: DS.attr('boolean')
});

Electiontron.Entry.reopenClass({
  url: 'entrie'
});
