require 'test_helper'

require 'faker'

class EntityTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Save to database" do
    e = Entity.new( :text => Faker::Lorem.paragraph )
    assert e.save
  end

  test "Load from database" do
    assert Entity.find( :first ) ? true : false
  end

  test "Delete from database" do
    e = Entity.find( :first )
    e.destroy!
    assert true
  end
end
