require 'spec_helper'

describe Entry do
  it {should validate_presence_of(:chef) }
  it {should validate_presence_of(:name) }
  it {should validate_presence_of(:photo) }
  it {should ensure_inclusion_of(:category).in_array(["dessert", "side"])}
end
