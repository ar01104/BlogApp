require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
    mail = ContactMailer.contact_email("anis@me.com", "Anis Rouba",
                                        @subject = "Greetings", @enquieries = "Hello")
    assert_equal ['info@BlogApp.com'], mail.to
    assert_equal ['info@BlogApp.com'], mail.from
  end

end
