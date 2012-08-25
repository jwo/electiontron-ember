class Ballot < ActiveRecord::Base
  attr_accessible []

  validates_presence_of :code
  validates_uniqueness_of :code

  def self.create_with_code
    new do |ballot|
      ballot.code = SecureRandom.base64(5)
      ballot.save!
    end
  end
end
