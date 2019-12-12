require 'test_helper'

class ProfileTest < ActiveSupport::TestCase

  setup do
    @user = users(:one)
  end

  test 'should not save invalid profile' do
    profile = Profile.new

    profile.save
    refute profile.valid?
  end

  test 'should save valid profile' do
    profile = Profile.new

    profile.description = 'Hello world'
    profile.user = @user
    profile.tags = 'University Of Surrey'

    profile.save
    assert profile.valid?
  end

end
