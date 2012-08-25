namespace :electiontron do

  desc "create a ballot"
  task :create_ballot => :environment do
    ballot = Ballot.create_with_code
    puts ballot.code
  end
end
