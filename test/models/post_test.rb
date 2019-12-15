require 'test_helper'

class PostTest < ActiveSupport::TestCase
include Devise::Test::IntegrationHelpers

  setup do
    @post = posts(:one)
    @user = users(:one)
    sign_in @user
  end

  test 'should not save invalid post' do
    post = Post.new

    post.save
    refute post.valid?
  end

  test 'should save valid post' do
    post = Post.new

    post.title = 'Greetings'
    post.description = 'hello world'
    post.posting_date = 2019-12-14
    post.user = @user

    post.save
    assert post.valid?
  end
end
