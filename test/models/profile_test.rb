require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
include Devise::Test::IntegrationHelpers

  setup do
    @profile = profiles(:one)
    @user = users(:one)
    sign_in @user
  end

  test 'should not save invalid profile' do
    profile = Profile.new

    profile.save
    refute profile.valid?
  end

  test 'should save valid profile' do
    profile = Profile.new

    profile.description = 'Hello world'
    profile.tags = 'University Of Surrey'
    profile.user = @user

    profile.save
    assert profile.valid?
  end

end
