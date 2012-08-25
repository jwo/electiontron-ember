require 'spec_helper'

describe Ballot do

  before do
    Ballot.create do |ballot|
      ballot.code = "ABC"
    end
  end
  it {should validate_uniqueness_of(:code)}
  it {should validate_presence_of(:code) }

  it "should create some unique codes" do
    ballots = 30.times.map { Ballot.create_with_code }
    ballots.map(&:code).uniq.should eq(ballots.map(&:code))
  end
end
